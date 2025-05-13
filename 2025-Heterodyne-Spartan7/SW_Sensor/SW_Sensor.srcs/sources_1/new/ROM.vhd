----------------------------------------------------------------------------------
-- Company: INSTITUTO DE MAGNETISMO APLICADO - UNIVERSIDAD COMPLUTENSE DE MADRID
-- Engineer: MARIO DE MIGUEL DOMÍNGUEZ
-- 
-- Create Date: 21.04.2025 14:12:17
-- Design Name: SWS PROGRAM ROM MODULE
-- Module Name: ROM - ROM_Behavior
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
use work.MEM_pkg.ALL;


entity ROM is
    port(
        INSTRUCTION : out std_logic_vector(11 downto 0);
        PC          : in std_logic_vector(11 downto 0)
    );
end ROM;

architecture ROM_Behavior of ROM is
    -- # INIT (POLLING)
    constant W0  : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_MEM & DST_A;
    constant W1  : std_logic_vector(11 downto 0) := X"0" & NEW_INST;
    constant W2  : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_CONST & DST_B;
    constant W3  : std_logic_vector(11 downto 0) := X"0FF";
    constant W4  : std_logic_vector(11 downto 0) := X"0" & TYPE_1 & ALU_CMPL;
    constant W5  : std_logic_vector(11 downto 0) := X"0" & TYPE_2 & JMP_COND;
    constant W6  : std_logic_vector(11 downto 0) := INI;
    constant W7  : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_CONST & DST_ACC;
    constant W8  : std_logic_vector(11 downto 0) := X"000";
    constant W9  : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & SW & SRC_ACC & DST_MEM;
    constant W10 : std_logic_vector(11 downto 0) := X"0" & NEW_INST;
    constant W11 : std_logic_vector(11 downto 0) := X"0" & TYPE_2 & JMP_UNCOND;
    constant W12 : std_logic_vector(11 downto 0) := LED;
--    constant W11 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_MEM & DST_A;
--    constant W12 : std_logic_vector(11 downto 0) := X"0" & DMA_RX_BUFFER_MSB;
--    constant W13 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_CONST & DST_B; 
--    constant W14 : std_logic_vector(11 downto 0) := X"04C"; --L
--    constant W15 : std_logic_vector(11 downto 0) := X"0" & TYPE_1 & ALU_CMPE;
--    constant W16 : std_logic_vector(11 downto 0) := X"0" & TYPE_2 & JMP_COND;
--    constant W17 : std_logic_vector(11 downto 0) := LED;
--    constant W18 : std_logic_vector(11 downto 0) := X"0" & TYPE_2 & JMP_UNCOND;
--    constant W19 : std_logic_vector(11 downto 0) := INI; --ERR
    
    -- #LED
    constant W20 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_MEM & DST_A;
    constant W21 : std_logic_vector(11 downto 0) := X"0" & DMA_RX_BUFFER_MSB;
    constant W22 : std_logic_vector(11 downto 0) := X"0" & TYPE_1 & ALU_ASCII2BIN;
    constant W23 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_ACC & DST_IDX;
    constant W24 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_ACC & DST_A;
    constant W25 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_CONST & DST_B;
    constant W26 : std_logic_vector(11 downto 0) := X"002";
    constant W27 : std_logic_vector(11 downto 0) := X"0" & TYPE_1 & ALU_CMPG;
    constant W28 : std_logic_vector(11 downto 0) := X"0" & TYPE_2 & JMP_COND;
    constant W29 : std_logic_vector(11 downto 0) := INI; --ERR
    constant W30 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_MEM & DST_A;
    constant W31 : std_logic_vector(11 downto 0) := X"0" & DMA_RX_BUFFER_LSB;
    constant W32 : std_logic_vector(11 downto 0) := X"0" & TYPE_1 & ALU_ASCII2BIN;
    constant W33 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_ACC & DST_A;
    constant W34 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_CONST & DST_B;
    constant W35 : std_logic_vector(11 downto 0) := X"001";
    constant W36 : std_logic_vector(11 downto 0) := X"0" & TYPE_1 & ALU_CMPG;
    constant W37 : std_logic_vector(11 downto 0) := X"0" & TYPE_2 & JMP_COND;
    constant W38 : std_logic_vector(11 downto 0) := INI; --ERR
    constant W39 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & SW & SRC_ACC & DST_IDX_MEM;
    constant W40 : std_logic_vector(11 downto 0) := X"0" & LED_BASE;
    constant W41 : std_logic_vector(11 downto 0) := X"0" & TYPE_2 & JMP_UNCOND;
    constant W42 : std_logic_vector(11 downto 0) := INI; --SOK

    -- #SOK
    constant W43 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_CONST & DST_ACC;
    constant W44 : std_logic_vector(11 downto 0) := X"03B"; -- ;
    constant W45 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & SW & SRC_ACC & DST_MEM;
    constant W46 : std_logic_vector(11 downto 0) := X"0" & DMA_TX_BUFFER_MSB;
    constant W47 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_CONST & DST_ACC;
    constant W48 : std_logic_vector(11 downto 0) := X"050"; -- P
    constant W49 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & SW & SRC_ACC & DST_MEM;
    constant W50 : std_logic_vector(11 downto 0) := X"0" & DMA_TX_BUFFER_LSB;
    constant W51 : std_logic_vector(11 downto 0) := X"0" & TYPE_4 & "000000"; 
    constant W52 : std_logic_vector(11 downto 0) := X"0" & TYPE_2 & JMP_UNCOND;
    constant W53 : std_logic_vector(11 downto 0) := INI;

    
    -- #ERR
    constant W54 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_CONST & DST_ACC;
    constant W55 : std_logic_vector(11 downto 0) := X"045"; -- E
    constant W56 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & SW & SRC_ACC & DST_MEM;
    constant W57 : std_logic_vector(11 downto 0) := X"0" & DMA_TX_BUFFER_MSB;
    constant W58 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & LD & SRC_CONST & DST_ACC;
    constant W59 : std_logic_vector(11 downto 0) := X"052"; --  R
    constant W60 : std_logic_vector(11 downto 0) := X"0" & TYPE_3 & SW & SRC_ACC & DST_MEM;
    constant W61 : std_logic_vector(11 downto 0) := X"0" & DMA_TX_BUFFER_LSB;
    constant W62 : std_logic_vector(11 downto 0) := X"0" & TYPE_4 & "000000"; 
    constant W63 : std_logic_vector(11 downto 0) := X"0" & TYPE_2 & JMP_UNCOND;
    constant W64 : std_logic_vector(11 downto 0) := INI;



    begin
        with PC select 
            INSTRUCTION <= 
                W0 when X"000",
                W1 when X"001",
                W2 when X"002",
                W3 when X"003",
                W4 when X"004",
                W5 when X"005",
                W6 when X"006",
                W7 when X"007",
                W8 when X"008",
                W9 when X"009",
                W10 when X"00A",
                W11 when X"00B",
                W12 when X"00C",
--                W13 when X"00D",
--                W14 when X"00E",
--                W15 when X"00F",
--                W16 when X"010",
--                W17 when X"011",
--                W18 when X"012",
--                W19 when X"013",
                W20 when X"014",
                W21 when X"015",
                W22 when X"016",
                W23 when X"017",
                W24 when X"018",
                W25 when X"019",
                W26 when X"01A",
                W27 when X"01B",
                W28 when X"01C",
                W29 when X"01D",
                W30 when X"01E",
                W31 when X"01F",
                W32 when X"020",
                W33 when X"021",
                W34 when X"022",
                W35 when X"023",
                W36 when X"024",
                W37 when X"025",
                W38 when X"026",
                W39 when X"027",
                W40 when X"028",
                W41 when X"029",
                W42 when X"02A",
                W43 when X"02B",
                W44 when X"02C",
                W45 when X"02D",
                W46 when X"02E",
                W47 when X"02F",
                W48 when X"030",
                W49 when X"031",
                W50 when X"032",
                W51 when X"033",
                W52 when X"034",
                W53 when X"035",
                W54 when X"036",
                W55 when X"037",
                W56 when X"038",
                W57 when X"039",
                W58 when X"03A",
                W59 when X"03B",
                W60 when X"03C",
                W61 when X"03D",
                W62 when X"03E",
                W63 when X"03F",
                W64 when X"040",
                (others => '0') when others;
                

end ROM_Behavior;
