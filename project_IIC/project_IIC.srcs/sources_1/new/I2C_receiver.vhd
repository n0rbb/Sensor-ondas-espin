----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2025 12:05:23
-- Design Name: 
-- Module Name: I2C_receiver - Behavioral
-- Project Name: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2C_receiver is
    generic(
        DEV_ADDR    : std_logic_vector(6 downto 0) := "1000101" --Device address 0x45
    );
    port(
        CLK_PORT    : in  std_logic;
        RESET       : in  std_logic;
            
        SCL         : in  std_logic;
        SDA_IN      : in  std_logic;
        REC_ACK     : out std_logic; -- Received byte, send ACK signal
        
        SR_BYTE     : in std_logic_vector(7 downto 0);
        VALID_OUT   : out std_logic; -- SR Enable
        CODE_OUT    : out std_logic; -- Receiver to SR 
        STORE_OUT   : out std_logic  -- Fifo enable
    );
end I2C_receiver;

architecture Behavioral of I2C_receiver is
    type states is (Idle, RcvAddr, ChkAddr, RcvData, SendAck, StopCond);
    signal next_state, current_state : states;

    signal start, stop_comm        : std_logic;
    signal slave_en                : std_logic; -- Enable data reception
    -- Counters
    --signal bitdisp                 : unsigned(5 downto 0);
    signal data_count              : unsigned(7 downto 0); -- Me cuenta el byte que llega
    signal ack_holder              : std_logic; -- Flag para poder salir de SendAck en función de CLK
    -- Constants
    --signal displacement : unsigned(4 downto 0) := to_unsigned(15, 5); -- Half for 400kHz comm

    begin --IIC funciona entre 100kHz y 400 kHz. Periodo mínimo SCL 2.5e-6s (Esperamos quizá 15 ciclos para dar la señal de validación).
    -- Signals
    -- start
    -- stop_comm


    -- Processes
    Receiver_FSM : process(current_state, start, stop_comm, SDA_IN)
        begin
            CODE_OUT <= SDA_IN; -- En todos los casos
            VALID_OUT <= '0';
            case current_state is
                when Idle => -- Funciono con CLK por velocidad
                    --VALID_OUT <= '0';
                    STORE_OUT <= '0';
                    REC_ACK   <= '0';
                    if start = '1' then
                        next_state <= RcvAddr;
                    else
                        next_state <= Idle;
                    end if;
                    
                when RcvAddr => -- 8 ciclos SCL, pero se puede usar CLK
                    STORE_OUT <= '0';
                    REC_ACK   <= '0';
                    if data_count = 7 then -- Address fully received
                        next_state <= ChkAddr;
                    else 
                        next_state <= RcvAddr;
                    end if;

                when ChkAddr => -- 1 Ciclo CLK
                    STORE_OUT   <= '0';
                    REC_ACK     <= '0';
                    if SR_BYTE(7 downto 1) = DEV_ADDR then
                        next_state <= SendAck;
                    else
                        next_state <= Idle;
                    end if;

                when SendAck => -- 1 Ciclo SCL
                    --STORE_OUT   <= '0';
                    REC_ACK     <= '1';
                    if slave_en = '0' then -- Don't save slave address
                        STORE_OUT <= '0';
                    else
                        STORE_OUT <= '1'; -- Que la FIFO funcione en flanco de subida SCL
                    end if;

                    if stop_comm = '1' then
                        next_state <= StopCond;
                    else
                        next_state <= RcvData;
                    end if;

                
                when RcvData => --Igual que RCV_Address
                    STORE_OUT <= '0';
                    REC_ACK   <= '0';
                    VALID_OUT <= '1';
                    if data_count = 7 then -- Databyte fully received
                        next_state <= SendAck;
                    else 
                        next_state <= RcvData;
                    end if;
                --when FifoStore => -- 1 Ciclo CLk
                --    REC_ACK     
                        
                when StopCond => -- 1 Ciclo CLK también 
                    STORE_OUT <= '0';
                    REC_ACK   <= '0';
                    next_state <= Idle;

            end case;
    
    end process Receiver_FSM;

    Start_Condition : process(RESET, SCL, SDA_IN)
        begin
             start <= '0';
             if SCL = '1' and SDA_IN'event and SDA_IN = '0' then 
                  start <= '1'; 
             end if;
    end process Start_Condition;
    
    Stop_Condition : process(RESET, SCL, SDA_IN)
        begin
            stop_comm <= '0';
            if SCL = '1' and SDA_IN'event and SDA_IN = '1' then
                stop_comm <= '1';
            end if;
    end process Stop_Condition;


    Receiver_Clocking : process(CLK_PORT, RESET)
        begin
            if RESET = '0' then
                current_state <= Idle;
                slave_en <= '0';
            elsif CLK_PORT'event and CLK_PORT = '1' then
                if current_state = StopCond then
                    slave_en <= '0';
                elsif current_state = RcvData then
                    slave_en <= '1';
                end if;
                current_state <= next_state;
            end if;
    end process Receiver_Clocking;
  --  RcvAddr, ChkAddr, RcvData, SendAck, StopCond
    Receiver_Timing : process(SCL, RESET)
        begin
            if RESET = '0' then
                data_count <= (others => '0');
            elsif SCL'event and SCL = '1' then 
                case current_state is 
                    when Idle =>
                        data_count <= (others => '0');
                    when RcvAddr =>
                        data_count <= data_count + 1;
                    when ChkAddr =>
                        data_count <= (others => '0');
                    when RcvData =>
                        data_count <= data_count + 1;
                    when SendAck =>
                        data_count <= (others => '0');
                    when StopCond =>
                        data_count <= (others => '0');
                end case;
            end if;


            
    end process Receiver_Timing;



end Behavioral;
