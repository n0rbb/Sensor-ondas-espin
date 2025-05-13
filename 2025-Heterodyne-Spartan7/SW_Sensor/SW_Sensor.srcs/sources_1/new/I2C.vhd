----------------------------------------------------------------------------------
-- Company: INSTITUTO DE MAGNETISMO APLICADO
-- Engineer: MARIO DE MIGUEL DOMÍNGUEZ
-- 
-- Create Date: 05.05.2025 11:32:03
-- Design Name: SWS I2C INTERFACE TOP
-- Module Name: I2C - I2C_Behavior
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2C is
    port (
        CLK_PORT    : in std_logic;
        RESET       : in std_logic;

        DATA_IN  : in std_logic_vector(7 downto 0);
        VALID_D  : in std_logic;
        ACK_IN   : out std_logic;
        TX_RDY   : out std_logic;

        SCL         : in std_logic;
        SDA         : inout std_logic;

        DATA_READ   : in  std_logic; --Reception signals (Read order from DMA)
        DATA_OUT    : out std_logic_vector(7 downto 0); --(FIFO Received data)
        
        FULL        : out std_logic; -- FIFO status signals
        EMPTY       : out std_logic

    );
    attribute SCHMITT_TRIGGER: string; 
	attribute SCHMITT_TRIGGER of SCL: signal is "true"; 
	attribute SCHMITT_TRIGGER of SDA: signal is "true";
end I2C;

architecture I2C_Behavior of I2C is
    --component I2C_transmitter (whenever we want to transmit data bytes)
    component I2C_receiver is
        generic(
            DEV_ADDR    : std_logic_vector(6 downto 0) --Device address 0x45
        );
        port(
            CLK_PORT    : in  std_logic;
            RESET       : in  std_logic;
            
            SCL         : in  std_logic;
            SDA_IN      : in  std_logic;
            REC_ACK     : out std_logic; -- Received byte, send ACK signal
            VALID_OUT   : out std_logic;
            SR_BYTE     : in std_logic_vector(7 downto 0);
            CODE_OUT    : out std_logic; -- Receiver to SR output
            STORE_OUT   : out std_logic  -- Fifo enable
        );
    end component;

    component I2C_shiftregister is
        port (
            SCL         : in std_logic;
            RESET       : in std_logic;

            ENABLE      : in std_logic;
            D           : in std_logic;
            Q           : out std_logic_vector(7 downto 0)
        );
    end component;

    --Generar FIFO
    component I2C_fifo is
        port (
            srst        : in  std_logic;
            clk         : in  std_logic;

            wr_en       : in  std_logic;
            din         : in  std_logic_VECTOR(7 downto 0);

            rd_en       : in  std_logic;
            dout        : out std_logic_VECTOR(7 downto 0);

            full        : out std_logic;
            empty       : out std_logic
        );
    end component;
    -- Signals
    signal rec_ack, sr_enable, sr_in                  : std_logic;
    signal sr_byte, fifo_out                          : std_logic_vector(7 downto 0);
    signal sinit, fifo_enable, fifo_read              : std_logic;
    
    begin
        Receiver : I2C_receiver
            generic map(
                DEV_ADDR => "1000101"
            )
            port map(
                CLK_PORT    => CLK_PORT,
                RESET       => RESET,
                SCL         => SCL,
                SDA_IN      => SDA, 
                REC_ACK     => rec_ack, 
                VALID_OUT   => sr_enable,
                SR_BYTE     => sr_byte,
                CODE_OUT    => sr_in,
                STORE_OUT   => fifo_enable
                
            );
        ShiftRegister : I2C_shiftregister
            port map(
                SCL         => SCL,
                RESET       => RESET,

                ENABLE      => sr_enable,
                D           => sr_in,
                Q           => sr_byte
            );
        
        FIFO : I2C_fifo
            port map(
                srst        => sinit,
                clk         => CLK_PORT,

                wr_en       => fifo_enable,
                din         => sr_byte,
            
                rd_en       => fifo_read,
                dout        => fifo_out,
            
                full        => FULL,
                empty       => EMPTY
            );
        
    -- Signal behaviour
    sinit <= not RESET;
    fifo_read <= DATA_READ;
    -- Process

    SDA_MUX : process(rec_ack) -- trans_output
        begin
        if rec_ack = '1' then -- Transmitter shouldn't be sending anything, pull SDA down
            SDA <= '0';
        --elsif trans_output = '1' then -- Send byte with the transmitter
            -- SDA <= SDA_OUT ()
        else
            SDA <= 'Z'; --Keep high impedance so master can write
        end if;
    end process SDA_MUX;

end I2C_Behavior;
