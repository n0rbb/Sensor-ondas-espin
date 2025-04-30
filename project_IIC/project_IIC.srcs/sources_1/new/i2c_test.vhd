
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE i2c_test IS

-------------------------------------------------------------------------------
-- Procedure for sending one byte over the RS232 serial input
-------------------------------------------------------------------------------
    procedure Transmit (
        signal   TX   : out std_logic;                      -- serial line
        constant DATA : in  std_logic_vector(7 downto 0)    -- byte to be sent

        ); 
END i2c_test;

PACKAGE BODY i2c_test IS

-----------------------------------------------------------------------------
-- Procedure for sending one byte over the RS232 serial input 
-----------------------------------------------------------------------------     
    procedure Transmit (
        signal   TX   : out std_logic;  -- serial output
        constant DATA : in  std_logic_vector(7 downto 0)) is
        begin

            for i in 0 to 7 loop
                TX <= DATA(i);
                wait for 2500 ns;
            end loop;  -- i

            TX <= 'Z';
            wait for 2500 ns;

    end Transmit;


END i2c_test;
