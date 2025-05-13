----------------------------------------------------------------------------------
-- Company: INSTITUTO DE MAGNETISMO APLICADO - UNIVERSIDAD COMPLUTENSE DE MADRID
-- Engineer: MARIO DE MIGUEL DOMÍNGUEZ
-- 
-- Create Date: 21.04.2025 12:23:02
-- Design Name: SPIN-WAVE SENSOR SPARTAN TOP
-- Module Name: SWS_top - SWS_top_Behavior
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
use work.INST_pkg.ALL;


entity SWS_top is
    port (
        CLK_PORT    : in std_logic;
        RESET       : in std_logic;
        
        I2C_SCL     : in std_logic;
        I2C_SDA     : inout std_logic;
        
        LED_PORT    : out std_logic_vector(2 downto 0)
    );
end SWS_top;

architecture SWS_top_Behavior of SWS_top is

    -- Component declaration
    -- I2C interface
    
    component I2C is
        port (
            CLK_PORT    : in  std_logic;
            RESET       : in  std_logic;
      
            DATA_IN     : in  std_logic_vector(7 downto 0);
            VALID_D     : in  std_logic;
            ACK_IN      : out std_logic;
            TX_RDY      : out std_logic;
      
            SCL         : in  std_logic;
            SDA         : inout std_logic;

            DATA_READ   : in  std_logic;
            DATA_OUT    : out std_logic_vector(7 downto 0);
            
            FULL        : out std_logic;
            EMPTY       : out std_logic
        );
    end component;

    -- Data-Memory Access
    component DMA is
        port ( 
            CLK_PORT 	: in std_logic;
            RESET 	    : in std_logic;
         
            RCVD_DATA 	: in std_logic_vector(7 downto 0);
            RX_FULL 	: in std_logic;
            RX_EMPTY    : in std_logic;
         
            DATA_READ 	: out std_logic;
         
            ACK_OUT 	: in std_logic;
            TX_RDY 		: in std_logic;
         
            VALID_D 	: out std_logic;
            TX_DATA 	: out std_logic_vector(7 downto 0);
         
            ADDRESS 	: out std_logic_vector(7 downto 0);
            WRITE_EN 	: out std_logic;
            OE 			: out std_logic;

            DMA_ACK 	: in std_logic;
            SEND_COMM 	: in std_logic;
            DMA_RQ 		: out std_logic;
            READY 		: out std_logic;	

            DATABUS 	: inout std_logic_vector(7 downto 0)
        );
    end component;

    -- RAM
    component RAM is
        port(
            CLK_PORT    : in std_logic;
            RESET       : in std_logic;

            WRITE_EN    : in std_logic;
            OE          : in std_logic;

            ADDRESS     : in std_logic_vector(7 downto 0);
            DATABUS     : inout std_logic_vector(7 downto 0);
            
            LED_STAT    : out std_logic_vector(2 downto 0)
        );
    end component;
    
    component ALU is
        port(
            CLK_PORT       : in std_logic;
            RESET          : in std_logic;
  
            ALU_OP         : in alu_op_t;
  
            INDEX_REG      : out std_logic_vector(7 downto 0);
            FLAG_Z         : out std_logic;
            FLAG_E         : out std_logic; 
            
            DATABUS        : inout std_logic_vector(7 downto 0)   
        );
    end component;

    -- ROM
    component ROM is
        port(
            INSTRUCTION : out std_logic_vector(11 downto 0);
            PC          : in std_logic_vector(11 downto 0)
        );
    end component;

    -- CPU
    component CPU is
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
            INDEX_REG   : in std_logic_vector(7 downto 0);
            FLAG_Z      : in std_logic;
            FLAG_E      : in std_logic;

            DATABUS     : inout std_logic_vector(7 downto 0)
            
        );
    end component;

    -- Signal declaration
    -- General
    signal databus      : std_logic_vector(7 downto 0);
    signal address      : std_logic_vector(7 downto 0);
    signal oe           : std_logic;
    signal write_en     : std_logic;
    signal led_status   : std_logic_vector(2 downto 0);

    -- RS232 <> DMA
    signal tx_data      : std_logic_vector(7 downto 0);
    signal rcvd_data    : std_logic_vector(7 downto 0);
    signal valid_d      : std_logic;
    signal ack_out      : std_logic;
    signal tx_rdy       : std_logic;
    signal data_read    : std_logic;
    signal full         : std_logic;
    signal empty        : std_logic;

    -- DMA <> RAM
    signal write_en_dma : std_logic;
    signal oe_dma       : std_logic;
    signal address_dma  : std_logic_vector(7 downto 0);

    -- CPU <> RAM
    signal write_en_cpu : std_logic;
    signal oe_cpu       : std_logic;
    signal address_cpu  : std_logic_vector(7 downto 0);

    -- DMA <> CPU
    signal dma_rq       : std_logic;
    signal dma_ack      : std_logic;
    signal send_comm    : std_logic;
    signal ready        : std_logic;

    --ROM <> CPU
    signal instruction  : std_logic_vector(11 downto 0);
    signal prog_ctr     : std_logic_vector(11 downto 0);

    --ALU <> CPU
    signal uoperation   : alu_op_t;
    signal index_reg    : std_logic_vector(7 downto 0);
    signal flag_zero    : std_logic;
    signal flag_err     : std_logic;

    begin

        -- Component port mapping 
        I2C_CP : I2C
            port map(
                CLK_PORT    => CLK_PORT,
                RESET       => RESET,
          
                DATA_IN     => tx_data,
                VALID_D     => valid_d,
                ACK_IN      => ack_out,
                TX_RDY      => tx_rdy,

                SCL         => I2C_SCL,
                SDA         => I2C_SDA,

                DATA_READ   => data_read,
                DATA_OUT    => rcvd_data,
          
                FULL        => full,
                EMPTY       => empty
            );

        DMA_CP  : DMA
            port map(
                CLK_PORT 	=> CLK_PORT,
                RESET 	    => RESET,
             
                RCVD_DATA 	=> rcvd_data,
                RX_FULL 	=> full,
                RX_EMPTY    => empty,
             
                DATA_READ 	=> data_read,
             
                ACK_OUT 	=> ack_out,
                TX_RDY 		=> tx_rdy,
             
                VALID_D 	=> valid_d,
                TX_DATA 	=> tx_data,
             
                ADDRESS 	=> address_dma,
                WRITE_EN 	=> write_en_dma,
                OE 			=> oe_dma,
        
                DMA_ACK 	=> dma_ack,
                SEND_COMM 	=> send_comm,
                DMA_RQ 		=> dma_rq,
                READY 		=> ready,

                DATABUS 	=> databus

            );

        RAM_CP  : RAM
            port map(
                CLK_PORT    => CLK_PORT,
                RESET       => RESET,
    
                WRITE_EN    => write_en,
                OE          => oe,
    
                ADDRESS     => address,
                DATABUS     => databus,
                
                LED_STAT    => led_status
            );
        
        ALU_CP  : ALU   
            port map(
                CLK_PORT    => CLK_PORT,
                RESET       => RESET,

                ALU_OP      => uoperation,

                INDEX_REG   => index_reg,
                FLAG_Z      => flag_zero,
                FLAG_E      => flag_err,
                
                DATABUS     => databus

            );

        ROM_CP  : ROM
            port map(
                INSTRUCTION => instruction,
                PC          => prog_ctr
            );
        
        CPU_CP  : CPU
            port map(
                CLK_PORT    => CLK_PORT,
                RESET       => RESET,
                
                ROM_INST    => instruction,
                ROM_PC      => prog_ctr,
    
                RAM_ADDR    => address_cpu,
                RAM_WRITE   => write_en_cpu,
                RAM_OE      => oe_cpu,
    
                DMA_RQ      => dma_rq,
                DMA_READY   => ready,
                DMA_ACK     => dma_ack,
                DMA_SEND    => send_comm,

                ALU_OP      => uoperation,
                INDEX_REG   => index_reg,
                FLAG_Z      => flag_zero,
                FLAG_E      => flag_err,

                DATABUS     => databus

            );
            
        -- Signal assignation
        LED_port <= led_status;
        -- Processes
        RAM_MUX : process(dma_ack, send_comm, address_dma, oe_dma, write_en_dma, address_cpu, oe_cpu, write_en_cpu)
            begin
                if dma_ack = '1' or send_comm = '1' then
                    address     <= address_dma;
                    oe          <= oe_dma;
                    write_en    <= write_en_dma;
                else
                    address     <= address_cpu;
                    oe          <= oe_cpu;
                    write_en    <= write_en_cpu;
                end if;
            end process RAM_MUX;
            
    end SWS_top_Behavior;
