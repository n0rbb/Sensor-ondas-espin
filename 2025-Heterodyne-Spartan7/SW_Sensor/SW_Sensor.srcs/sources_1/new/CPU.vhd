----------------------------------------------------------------------------------
-- Company: INSTITUTO DE MAGNETISMO APLICADO - UNIVERSIDAD COMPLUTENSE DE MADRID
-- Engineer: MARIO DE MIGUEL DOMÍNGUEZ
-- 
-- Create Date: 21.04.2025 14:12:17
-- Design Name: SWS CENTRAL PROCESSING UNIT
-- Module Name: CPU - CPU_Behavior
-- Project Name: SPIN-WAVE SENSOR - SIGNAL ACQUISITION UNIT
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.INST_pkg.ALL;

entity CPU is
    port(
        CLK_PORT    : in std_logic;
        RESET       : in std_logic;
        
        ROM_INST    : in std_logic_vector(11 downto 0);
        ROM_PC      : out std_logic_vector(11 downto 0);

        RAM_ADDR    : out std_logic_vector(7 downto 0);
        RAM_WRITE   : out std_logic;
        RAM_OE      : out std_logic;

        DMA_RQ      : in std_logic;
        DMA_READY   : in std_logic;
        DMA_ACK     : out std_logic;
        DMA_SEND    : out std_logic;

        ALU_OP      : out alu_op_t;
        INDEX_REG   : in  STD_LOGIC_VECTOR (7 downto 0);
        FLAG_Z      : in std_logic;
        FLAG_E      : in std_logic;

        DATABUS     : inout std_logic_vector(7 downto 0)
        
    );
end CPU;

architecture CPU_Behavior of CPU is
    type states is (Idle, Fetch, OpFetch, Decode, Execute, Receive, Transmit);
	signal current_state, next_state: states;

	signal pc_reg, ins_reg, tmp_reg: std_logic_vector(7 downto 0); -- CPU registers
	signal pc, ins, tmp: std_logic_vector(7 downto 0); -- Combinational signals

    begin
        -- Processes
        CPU_FSM : process(current_state, pc_reg, ins_reg, tmp_reg, FLAG_Z, INDEX_REG, DMA_RQ, DMA_READY, ROM_INST)
            begin
                -- Default combinational values
                -- Program counter
                DATABUS <= (others => 'Z');

                ROM_PC <= "0000" & pc_reg; --Convert register from 8 bits to 12. 

                RAM_ADDR    <= (others => '0');
                RAM_WRITE   <= '0';
                RAM_OE      <= '1';
                
                DMA_ACK     <= '0';
                DMA_SEND    <= '0';

                ALU_OP      <= nop;

                ins <= ins_reg;
                pc  <= pc_reg;
                tmp <= tmp_reg;

                -- FSM
                case current_state is
                    when Idle =>
                        if DMA_RQ = '1' then
                            next_state <= Receive;

                        else
                            next_state <= Fetch;
                        
                        end if;

                    when Receive =>
                        DMA_ACK <= '1'; -- Buses concedidos a la DMA

                        if DMA_RQ = '0' then -- Wait till reception finishes
                            next_state <= Fetch;
                        else
                            next_state <= Receive;
                        end if;
                    
                    when Fetch =>
                        ins <= ROM_INST(7 downto 0);
                        pc  <= pc_reg + 1;
                        next_state <= Decode;
                    
                    when Decode =>
                        -- Instruction decoding
                        case ins_reg(7 downto 6) is
                            when TYPE_1 => --00, ALU logical operations
                                next_state <= Execute; 
                            
                            when TYPE_2 => --01, branch operations
                                next_state <= OpFetch; --Operator fetch
                            
                            when TYPE_3 => --10, load operations / memory write operations
                                if ins_reg(5 downto 3) = (LD & SRC_ACC) then -- Internal load operations, no need of fetching data
                                    next_state <= Execute;

                                else --External load operations, need to fetch now the data
                                    next_state <= OpFetch;
                                
                                end if;
                            
                            when TYPE_4 => --11, send operations
                                next_state <= Transmit;
                            
                            when others =>
                            --    next_state <= Decode;
                            
                        end case;
                    
                    when OpFetch =>
                        tmp <= ROM_INST(7 downto 0); 
                        pc  <= pc_reg + 1;
                        next_state <= Execute;
                    
                    when Execute =>
                        case ins_reg(7 downto 6) is
                            when TYPE_1 =>
                                case ins_reg(5 downto 0) is
                                    when ALU_CMPE =>
                                        ALU_OP <= op_cmpe;
                                    
                                    when ALU_CMPL =>
                                        ALU_OP <= op_cmpl;
                                    
                                    when ALU_CMPG =>
                                        ALU_OP <= op_cmpg;

                                    when ALU_ASCII2BIN =>
                                        ALU_OP <= op_ascii2bin;
                                        
                                    when others =>
                                    
                                end case;
                                next_state <= Idle;
                        
                            when TYPE_2 =>
                                case ins_reg(5 downto 0) is 
                                    when JMP_UNCOND =>
                                        pc  <= tmp_reg;
                                    
                                    when JMP_COND =>
                                        if FLAG_Z = '1' then
                                            pc <= tmp_reg;
                                        end if;
                                        
                                    when others =>
                                    
                                end case;
                                next_state <= Idle;
                            
                            when TYPE_3 =>
                                if ins_reg(5) = LD then -- Load operation
                                    case ins_reg(4 downto 0) is
                                        -- Internal loads: From reg to reg
                                        when SRC_ACC & DST_A => --Source acumulador destination A
                                            ALU_OP <= op_mvacc2a;
                                        
                                        when SRC_ACC & DST_B => 
                                            ALU_OP <= op_mvacc2b;
                                        
                                        when SRC_ACC & DST_IDX =>
                                            ALU_OP <= op_mvacc2id;

                                        -- External load: Constant to reg
                                        when SRC_CONST & DST_A =>
                                            DATABUS <= tmp_reg; -- Como en este caso he pasado antes por Op_fetch, tengo ya la constante en tmp_reg
                                            ALU_OP  <= op_lda;

                                        when SRC_CONST & DST_B =>
                                            DATABUS <= tmp_reg;
                                            ALU_OP  <= op_ldb;

                                        when SRC_CONST & DST_IDX =>
                                            DATABUS <= tmp_reg;
                                            ALU_OP  <= op_ldid;

                                        when SRC_CONST & DST_ACC =>
                                            DATABUS <= tmp_reg;
                                            ALU_OP  <= op_ldacc;

                                        -- External load: RAM to reg
                                        when SRC_MEM & DST_A =>
                                            RAM_ADDR <= tmp_reg;
                                            RAM_OE      <= '0';
                                            ALU_OP      <= op_lda;
                                        
                                        when SRC_MEM & DST_B =>
                                            RAM_ADDR <= tmp_reg;
                                            RAM_OE      <= '0';
                                            ALU_OP      <= op_ldb;
                                        
                                        when SRC_MEM & DST_IDX =>
                                            RAM_ADDR <= tmp_reg;
                                            RAM_OE      <= '0';
                                            ALU_OP      <= op_ldid;

                                        when SRC_MEM & DST_ACC =>
                                            RAM_ADDR <= tmp_reg;
                                            RAM_OE      <= '0';
                                            ALU_OP      <= op_ldid;

                                        -- External load: Indexed RAM to reg
                                        when SRC_IDX_MEM & DST_A =>
                                            RAM_ADDR <= tmp_reg + INDEX_REG;
                                            RAM_OE      <= '0';
                                            ALU_OP      <= op_lda;
                                        
                                        when SRC_IDX_MEM & DST_B =>
                                            RAM_ADDR <= tmp_reg + INDEX_REG;
                                            RAM_OE      <= '0';
                                            ALU_OP      <= op_ldb;
                                        
                                        when SRC_IDX_MEM & DST_IDX =>
                                            RAM_ADDR <= tmp_reg + INDEX_REG;
                                            RAM_OE      <= '0';
                                            ALU_OP      <= op_ldid;

                                        when SRC_IDX_MEM & DST_ACC =>
                                            RAM_ADDR <= tmp_reg + INDEX_REG;
                                            RAM_OE      <= '0';
                                            ALU_OP      <= op_ldid;
                                       
                                        when others =>

                                    end case;

                                else    -- Save operation
                                    ALU_OP <= op_oeacc; -- Poner en el databus el acumulador

                                    case ins_reg(4 downto 0) is 
                                        when SRC_ACC & DST_MEM => --Source acumulador destination memoria
                                            RAM_ADDR <= tmp_reg;
                                   
                                        when SRC_ACC & DST_IDX_MEM =>
                                            RAM_ADDR <= tmp_reg + INDEX_REG;
                                        
                                        when others =>
                                        
                                    end case;
                                    RAM_WRITE <= '1';

                                end if;
                                next_state <= Idle;

                        when TYPE_4 =>
                            next_state <= Transmit;
                        
                        when others =>
                        
                        end case;
                    
                    when Transmit =>
                        DMA_SEND <= '1';
                        if DMA_READY = '1' then --DMA finished transmission
                            next_state <= Idle;
                        else
                            next_state <= Transmit;
                        end if;

                end case;
                
        end process CPU_FSM;

        CPU_Clocking : process(CLK_PORT, RESET)
            begin
                if RESET <= '0' then
		            pc_reg <= (others=>'0');
                    --ins_reg <= (others=>'0'); --
                    tmp_reg <= (others=>'0'); -- 

                    current_state <= Idle;
            
                elsif CLK_PORT'event and CLK_PORT = '1' then
                    pc_reg <= pc;
                    ins_reg <= ins;
                    tmp_reg <= tmp;

                    current_state <= next_state;

                end if;
            end process CPU_Clocking;


end CPU_Behavior;
