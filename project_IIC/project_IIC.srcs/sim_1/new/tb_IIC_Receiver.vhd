----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.04.2025 11:56:28
-- Design Name: 
-- Module Name: tb_IIC_Receiver - Behavioral
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
use work.i2c_test.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_IIC_Receiver is
end tb_IIC_Receiver;

architecture Behavioral of tb_IIC_Receiver is
    component I2C_top is
        port(
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
    end component;
    
    signal clk12mhz, reset, clk400khz, sda_fake, full, empty : std_logic;
    signal data_out : std_logic_vector(7 downto 0);
    
    signal byte     : std_logic_vector(7 downto 0);
    
    signal comm_enable : std_logic;
    
    constant clkperiod  : time := 83.33 ns; --12 MHz clock frequency
    constant sclperiod  : time := 2500 ns; -- 400kHz clock frequency
begin

     reset <= '1', '0' after 75 ns, '1' after 175 ns;

    I2C_inst : I2C_top
        port map(
            CLK_PORT    => clk12mhz,
            RESET       => reset,
            SCL         => clk400khz, 
            SDA         => sda_fake,
            
            DATA_READ   => '0',
            DATA_OUT    => data_out,
            
            FULL => full,
            EMPTY => empty
        );
      
      
      False_Clock : process
            begin
                clk12mhz <= '0';
                wait for clkperiod/2;
                clk12mhz <= '1';
                wait for clkperiod/2;
                
       end process False_Clock;
        
        
      False_SCL : process
            begin 
               if comm_enable = '1' then
                    clk400khz <= '0';
                    wait for sclperiod/2;
                    clk400khz <= '1';
                    wait for sclperiod/2;
               else
                    clk400kHz <= '1';
                    wait for clkperiod;
               end if;
      end process False_SCL;
      
      
      I2C_Comm : process
            begin
                sda_fake <= '1';
                comm_enable <= '0';
                wait for 50us;
                -- Condición de inicio
                sda_fake <= '0'; --Bajo la línea SDA
                wait for 625ns;
                comm_enable <= '1'; --Tiro
                wait for 625ns;
                
                Transmit(sda_fake, "10001010");
                Transmit(sda_fake, "01010111");
                Transmit(sda_fake, "10010100");
               
                
                --Condición de parada
                wait for 625ns; --Creo que debería estar en flanco de subida
                comm_enable <= '0';
                sda_fake <= '1';
                wait;
      end process I2C_Comm;
        


end Behavioral;
