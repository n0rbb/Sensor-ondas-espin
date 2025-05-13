----------------------------------------------------------------------------------
-- Company: INSTITUTO DE MAGNETISMO APLICADO - UNIVERSIDAD COMPLUTENSE DE MADRID
-- Engineer: MARIO DE MIGUEL DOMÍNGUEZ
-- 
-- Create Date: 21.04.2025 11:49:33
-- Design Name: SPIN-WAVE SENSOR SPARTAN MAP
-- Module Name: Spartan_SWS - SWS_Behavior
-- Project Name: SPIN-WAVE SENSOR - SIGNAL ACQUISITION UNIT
-- Target Devices: CMOD S7 25
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


entity Spartan_SWS is
    port ( 
        -- FPGA Clock
        CLK_SOURCE        : in std_logic;

        -- User button -- Reset
        BTN               : in std_logic_vector(1 downto 0);

        -- Communications inteface -I2C
        I2C_SCL           : in std_logic;
        I2C_SDA           : inout std_logic;

        -- LEDs for testing and debugging
        LED               : out std_logic_vector(2 downto 0)

    );
end Spartan_SWS;

architecture SWS_Behavior of Spartan_SWS is

    -- Component declaration
    --component Clock_MCMM is
    --    port(
    --       resetn     : in std_logic;
    --        CLK_IN     : in std_logic;
    --        CLK_OUT    : out std_logic;
    --        LOCKED     : out std_logic
    --    );
    --end component;

    component SWS_top is
        port(
            CLK_PORT   : in std_logic;
            RESET      : in std_logic;
        
            I2C_SCL     : in std_logic;
            I2C_SDA     : inout std_logic;
        
            LED_PORT    : out std_logic_vector(2 downto 0)
    
        );

    end component;


    -- Device signals declaration
    signal clk         : std_logic;
    signal clk_fpga    : std_logic;

    signal reset       : std_logic;

    signal scl, sda      : std_logic;

    signal led_out     : std_logic_vector(2 downto 0); -- Keep 1 bit per LED



    begin

        --Component port mapping
--        CLK_MCMM : Clock_MCMM
--            port map(
--                resetn      => reset,
--                CLK_IN      => clk_fpga,
--                CLK_OUT     => clk,
--                LOCKED      => open
--            );
        
        UUT_SWS : SWS_top 
            port map(
                CLK_PORT    => clk_fpga,
                RESET       => reset,
            
                I2C_SCL    => scl,
                I2C_SDA    => sda,
            
                LED_PORT    => led_out
            );
    
        --Signal assignation
        clk_fpga    <= CLK_SOURCE;
        reset       <= not(BTN(0)); --Reset active low
    
        scl <= I2C_SCL;
        sda <= I2C_SDA;
    
        LED         <= led_out;

    end SWS_Behavior;
