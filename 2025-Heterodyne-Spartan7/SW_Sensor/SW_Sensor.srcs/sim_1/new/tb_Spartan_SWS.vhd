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
use work.RS232_test.ALL;


entity tb_Spartan_SWS is
end tb_Spartan_SWS;

architecture Testbench of tb_Spartan_SWS is
    component Spartan_SWS is
        port(
            CLK_SOURCE        : in std_logic;

            -- User button -- Reset
            BTN               : in std_logic_vector(1 downto 0);
    
            -- Communications inteface -RS232
            UART_RX           : in std_logic;
            UART_TX           : out std_logic;
    
            -- LEDs for testing and debugging
            LED               : out std_logic_vector(2 downto 0)
        );
    end component;

    -- Board signals
    signal clk12mhz     : std_logic;
    signal reset        : std_logic;
    signal btn_signal   : std_logic_vector(1 downto 0);
    signal led_signal   : std_logic_vector(2 downto 0);

    -- UART
    signal td, rd       : std_logic;

    constant clkperiod  : time := 83.33 ns; --12 MHz clock frequency

    begin
        -- Component mapping
        Sensor_UT : Spartan_SWS
            port map(
                CLK_SOURCE      => clk12mhz,
                BTN             => btn_signal,
                
                UART_RX         => rd,
                UART_TX         => td,

                LED             => led_signal
            ); 
           
        

        -- Reset generation
        reset <= '1', '0' after 75 ns, '1' after 175 ns;

        -- Clock generation
        False_Clock : process
            begin
                clk12mhz <= '1';
                wait for clkperiod/2;
                clk12mhz <= '0';
                wait for clkperiod/2;
                
        end process False_Clock;

        -- Input stimuli generation
        UART_Comm : process
            begin
                rd <= '1';
                wait for 50 us;
                
                --Command 1 L11
                Transmit(rd, X"4C"); --L
                wait for 50 us;
                Transmit(rd, X"31"); --1
                wait for 50 us;
                Transmit(rd, X"31"); --1
                wait for 1000 us;
                
                --Command 2 L10
                Transmit(rd, X"4C"); --L
                wait for 50 us;
                Transmit(rd, X"31"); --1
                wait for 50 us;
                Transmit(rd, X"30"); --1
                wait for 1000 us;
                
                --Command 3 EEE (Error)
                Transmit(rd, X"45"); --E
                wait for 50 us;
                Transmit(rd, X"45"); --E
                wait for 50 us;
                Transmit(rd, X"45"); --E
                wait;
                
        end process UART_Comm;



        -- Signal-port assignation
        btn_signal(0) <= not(reset);
       -- led_signal <= LED;
       -- td <= UART_TX;
       -- UART_RX <= rd;
end Testbench;
