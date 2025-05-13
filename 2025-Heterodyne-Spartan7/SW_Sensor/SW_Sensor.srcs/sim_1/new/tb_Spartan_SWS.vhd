----------------------------------------------------------------------------------
-- Company: INSTITUTO DE MAGNETISMO APLICADO - UNIVERSIDAD COMPLUTENSE DE MADRID
-- Engineer: MARIO DE MIGUEL DOMÍNGUEZ
-- 
-- Create Date: 27.04.2025 10:14:17
-- Design Name: 
-- Module Name: tb_Spartan_SWS - Behavioral
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
use work.I2C_test.ALL;

entity tb_Spartan_SWS is
end tb_Spartan_SWS;

architecture Testbench of tb_Spartan_SWS is
    component Spartan_SWS is
        port(
            CLK_SOURCE        : in std_logic;

            -- User button -- Reset
            BTN               : in std_logic_vector(1 downto 0);
    
            -- Communications inteface -I2C
            I2C_SCL               : in std_logic;
            I2C_SDA               : inout std_logic;
    
            -- LEDs for testing and debugging
            LED               : out std_logic_vector(2 downto 0)
        );
    end component;

    -- Board signals
    signal clk12mhz     : std_logic;
    signal reset        : std_logic;
    signal btn_signal   : std_logic_vector(1 downto 0);
    signal led_signal   : std_logic_vector(2 downto 0);

    -- IIC Signals
    signal clk400khz, sda_fake, sda_fake2 : std_logic;
    signal data_out : std_logic_vector(7 downto 0);
    
    signal byte     : std_logic_vector(7 downto 0);
    
    signal comm_enable : std_logic;
    signal data_read   : std_logic;
    
    constant clkperiod  : time := 83.33 ns; --12 MHz clock frequency
    constant sclperiod  : time := 2500 ns; -- 400kHz clock frequency

    begin
        -- Component mapping
        Sensor_UT : Spartan_SWS
            port map(
                CLK_SOURCE      => clk12mhz,
                BTN             => btn_signal,
                
                I2C_SCL             => clk400kHz,
                I2C_SDA             => sda_fake2,

                LED             => led_signal
            ); 
           
        

        -- Reset generation
        reset <= '1', '0' after 75 ns, '1' after 175 ns;

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
                
                -- Comando read al address correcto
                -- Condición de inicio
                sda_fake <= '0'; --Bajo la línea SDA
                wait for 625ns;
                comm_enable <= '1'; --Tiro
                wait for 625ns;
                
              --  Transmit(sda_fake, "10001011");
              --  Transmit(sda_fake, X"31"); 
               -- Transmit(sda_fake, X"31");
                
                --Condición de parada
                comm_enable <= '0';
                wait for 1250ns; --Creo que debería estar en flanco de subida
                sda_fake <= '1';
                wait for 100 us;
                
                --Comando write al address correcto
                -- Condición de inicio
                sda_fake <= '0'; --Bajo la línea SDA
                wait for 625ns;
                comm_enable <= '1'; --Tiro
                wait for 625ns;
                
               -- Transmit(sda_fake, "10001011");
               -- Transmit(sda_fake, X"31");
               -- Transmit(sda_fake, X"30");

                --Condición de parada
                comm_enable <= '0';
                wait for 1250ns; --Creo que debería estar en flanco de subida
                sda_fake <= '1';
                wait for 100 us;
                
                -- Comando read al address incorrecto
                -- Condición de inicio 
                sda_fake <= '0'; --Bajo la línea SDA
                wait for 625ns;
                comm_enable <= '1'; --Tiro
                wait for 625ns;
                
              --  Transmit(sda_fake, "10101010");
              --  Transmit(sda_fake, "00111101");
              --  Transmit(sda_fake, "10000001");

                --Condición de parada
                comm_enable <= '0';
                wait for 1250ns; --Creo que debería estar en flanco de subida
                sda_fake <= '1';
                wait;
                
      end process I2C_Comm;



        -- Signal-port assignation
        btn_signal(0) <= not(reset);
       -- led_signal <= LED;
       -- td <= UART_TX;
       -- UART_RX <= rd;
end Testbench;
