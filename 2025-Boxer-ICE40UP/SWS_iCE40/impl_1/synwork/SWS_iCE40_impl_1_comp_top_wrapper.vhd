--
-- Synopsys
-- Vhdl wrapper for top level design, written on Fri Jun 27 14:05:08 2025
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_iCE_SWS is
   port (
      CLK_SOURCE : in std_logic;
      BTN : in std_logic_vector(1 downto 0);
      UART_RX : in std_logic;
      UART_TX : out std_logic;
      LED : out std_logic_vector(2 downto 0)
   );
end wrapper_for_iCE_SWS;

architecture sws_behavior of wrapper_for_iCE_SWS is

component iCE_SWS
 port (
   CLK_SOURCE : in std_logic;
   BTN : in std_logic_vector (1 downto 0);
   UART_RX : in std_logic;
   UART_TX : out std_logic;
   LED : out std_logic_vector (2 downto 0)
 );
end component;

signal tmp_CLK_SOURCE : std_logic;
signal tmp_BTN : std_logic_vector (1 downto 0);
signal tmp_UART_RX : std_logic;
signal tmp_UART_TX : std_logic;
signal tmp_LED : std_logic_vector (2 downto 0);

begin

tmp_CLK_SOURCE <= CLK_SOURCE;

tmp_BTN <= BTN;

tmp_UART_RX <= UART_RX;

UART_TX <= tmp_UART_TX;

LED <= tmp_LED;



u1:   iCE_SWS port map (
		CLK_SOURCE => tmp_CLK_SOURCE,
		BTN => tmp_BTN,
		UART_RX => tmp_UART_RX,
		UART_TX => tmp_UART_TX,
		LED => tmp_LED
       );
end sws_behavior;
