----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2025 10:52:06
-- Design Name: 
-- Module Name: I2C_top - Behavioral
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

entity I2C_top is
    port (
        CLK_PORT    : in std_logic;
        RESET       : in std_logic;

        -- DATA_IN  : in std_logic_vector(7 donwto 0);
        -- VALID_D  : in std_logic;
        -- ACK_IN   : out std_logic;
        -- TX_RDY   : out std_logic;

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

end I2C_top;

architecture Behavioral of I2C_top is
    --signal declaration (?)
    signal rec_ack, sr_enable, sr_in, fifo_enable     : std_logic;
    signal sr_byte                                    : std_logic_vector(7 downto 0);
    
    --component I2C_transmitter (whenever we want to transmit data bytes)
    component I2C_receiver is
        generic(
            DEV_ADDR    : std_logic_vector(6 downto 0) := "1000101" --Device address 0x45
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
        
    -- Signal behaviour
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
end Behavioral;
