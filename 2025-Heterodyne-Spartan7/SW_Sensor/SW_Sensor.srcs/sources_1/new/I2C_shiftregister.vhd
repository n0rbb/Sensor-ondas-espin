----------------------------------------------------------------------------------
-- Company: INSTITUTO DE MAGNETISMO APLICADO
-- Engineer: MARIO DE MIGUEL DOMÍNGUEZ
-- 
-- Create Date: 30.04.2025 11:46:01
-- Design Name: SWS I2C Shift Register
-- Module Name: I2C_shiftregister - Behavioral
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

entity I2C_shiftregister is
    port (
        SCL         : in std_logic;
        RESET       : in std_logic;

        ENABLE      : in std_logic;
        D           : in std_logic;
        Q           : out std_logic_vector(7 downto 0)
    );
end I2C_shiftregister;

architecture SR_Behavior of I2C_shiftregister is
    
    signal Q_buffer : std_logic_vector(7 downto 0);
    
    begin
    
    Q <= Q_buffer;
    
    SR_Clocking : process(SCL, RESET)
        begin
            if RESET = '0' then
                Q_buffer <= (others => '0');
            elsif SCL'event and SCL = '1' then
                if ENABLE = '1' then
                    Q_buffer <= D & Q_buffer(7 downto 1);
                end if;
            end if;
            
    end process SR_Clocking;

end SR_Behavior;