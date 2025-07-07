----------------------------------------------------------------------------------
-- Company: INSTITUTO DE MAGNETISMO APLICADO - UNIVERSIDAD COMPLUTENSE DE MADRID
-- Engineer: MARIO DE MIGUEL DOMÍNGUEZ
-- 
-- Create Date: 21.04.2025 14:12:17
-- Design Name: SWS DATA MEMORY ACCESS MODULE
-- Module Name: DMA - DMA_Behavior
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
use work.MEM_pkg.ALL;



entity DMA is
    port ( 
        CLK_PORT 	: in std_logic;
        RESET 	    : in std_logic;
     
        RCVD_DATA 	: in std_logic_vector(7 downto 0);
        RX_FULL 	: in std_logic;
        RX_EMPTY    : in std_logic;
     
        DATA_READ 	: out std_logic;
     
        ACK_OUT 	: in std_logic;
        TX_RDY 		: in std_logic;
        VALID_D 	: out std_logic;
        TX_DATA 	: out std_logic_vector(7 downto 0);
     
        ADDRESS 	: out std_logic_vector(7 downto 0);
        WRITE_EN 	: out std_logic;
        OE 			: out std_logic;

        DMA_ACK 	: in std_logic;
        SEND_COMM 	: in std_logic;
        DMA_RQ 		: out std_logic;
        READY 		: out std_logic;	

        DATABUS 	: inout std_logic_vector(7 downto 0)
    );
end DMA;

architecture DMA_Behavior of DMA is

    type states is (Idle, ReadFifo, WriteRam, EndWrite, LoadTransmitter, SendTransmitter, EndTransmitter, Waiting);
    signal current_state, next_state : states;

    signal byte_counter_rx, byte_counter_tx : integer;
   
    begin
        DMA_FSM : process(current_state, byte_counter_rx, byte_counter_tx, RCVD_DATA, RX_EMPTY, TX_RDY, ACK_OUT, SEND_COMM, DMA_ACK, DATABUS)
            begin
                case current_state is
                    when Idle => 
                        DATA_READ   <= '0';
                        VALID_D     <= '1';

                        ADDRESS     <= (others => '0');
                        WRITE_EN    <= '0';
                        OE          <= '1';
            
                        DMA_RQ      <= '0';

                        if SEND_COMM = '1' then
                            READY <= '0';
                        else
                            READY <= '1';
                        end if;

                        DATABUS     <= (others => 'Z'); --Pongo en alta impedancia para que la RAM haga lo suyo mientras

                        if RX_EMPTY = '0' then  --Cuando llega algo a la fifo, se escribe a la RAM
                            next_state <= ReadFifo;

                        elsif SEND_COMM = '1' then
                            next_state <= Waiting;

                        else
                            next_state <= Idle;

                        end if;

                    -- TAREA DE ESCRITURA EN LA RAM
                    when ReadFifo => --Lectura del dato de la fifo (pongo el dato en RCVD_Data al disparar la fifo)
                        DATA_READ   <= '1';
                        VALID_D     <= '1';

                        ADDRESS     <= (others => '0');
                        WRITE_EN    <= '0';
                        OE          <= '1';

                        DMA_RQ      <= '1';
                        READY       <= '1';

                        DATABUS     <= (others => 'Z');
           
                        if DMA_ACK = '1' then --Solo cuando me han concedido los buses, leo y paso a la escritura. Si no, me quedo iterando.
                            next_state <= WriteRam;
                        else
                            next_state <= ReadFifo; --Me parece que aquí no va a pasar nada hasta que cambie dma ack
                        end if;

                    when WriteRam => --Pongo address, write_en y dato del registro en el databus
                        DATA_READ   <= '0';
                        VALID_D     <= '1';

                        if byte_counter_rx = 0 then
                            ADDRESS      <= DMA_RX_BUFFER_MSB;

                        elsif byte_counter_rx = 1 then
                            ADDRESS      <= DMA_RX_BUFFER_MID;

                        else
                            ADDRESS      <= DMA_RX_BUFFER_LSB;
            
                        end if;
            
                        WRITE_EN    <= '1';
                        OE          <= '1';

                        DMA_RQ      <= '1';
                        READY       <= '1';
          
                        DATABUS     <= RCVD_Data;

                        if byte_counter_rx = 0 then
                            next_state   <= Idle;

                        elsif byte_counter_rx = 1 then
                            next_state   <= Idle; --Cambiar por idle 

                        else
                            next_state   <= EndWrite;

                        end if;

                    when EndWrite => --Escribe FF en la dirección NEW_INST y vuelve a idle
                        DATA_READ    <= '0';
                        VALID_D      <= '1';
            
                        ADDRESS <= NEW_INST;
                        WRITE_EN <= '1';
                        OE <= '1';
            
                        DMA_RQ <= '1';
                        READY <= '1';
            
                        DATABUS <= X"FF";

                        next_state <= Idle;
            
                    --FIN DE LA TAREA DE ESCRITURA EN RAM. TAREA DE LECTURA DE LA RAM.
                    when Waiting =>  --Estado para comprobar cómo está el transmisor y preparar la lectura RAM
                        DATA_READ <= '0';
                        VALID_D <= '1';

                        ADDRESS <= (others => '0');
                        WRITE_EN <= '0';
                        OE <= '1';

                        DMA_RQ <= '0';
                        READY <= '0';

                        DATABUS <= (others => 'Z');
            
                        if (TX_RDY = '0' or ACK_OUT = '0') then
                            next_state <= waiting;
                        elsif (byte_counter_tx < 2) then
                            next_state <= LoadTransmitter;
                        else  --BCTX 1
                            next_state <= EndTransmitter;
                        end if;
            
         
                    when LoadTransmitter => --Ordena la lectura un dato de la memoria al registro de la DMA
                        --Escojo ahora el address y disparo la lectura
                        VALID_D <= '1';
                        DATA_READ <= '0';

                        if (byte_counter_tx = 0) then
                            ADDRESS <= DMA_TX_BUFFER_MSB;

                        else 
                            ADDRESS <= DMA_TX_BUFFER_LSB; --Esto pilla para 1 y 2

                        end if;

                        OE <= '0';
                        WRITE_EN <= '0';

                        DMA_RQ <= '0';
                        READY <= '0';    
            
                        DATABUS <= (others => 'Z');
                        next_state <= SendTransmitter;
         
                    when SendTransmitter => --Comprueba si el transmisor está ready y manda los datos del registro 
                        VALID_D <= '0'; --Disparo el transmisor.
                        DATA_READ <= '0';

                        ADDRESS <= (others => '0');
                        OE <= '1';
                        WRITE_EN <= '0';

                        DMA_RQ <= '0';
                        READY <= '0';

                        DATABUS <= (others => 'Z');
                        next_state <= Waiting; 
            
                    when EndTransmitter =>
                        VALID_D <= '1';
                        DATA_READ <= '0';
            
                        WRITE_EN <= '0';
            
                        OE <= '1';
                        ADDRESS <= (others => '0');

                        DMA_RQ <= '0';
                        READY <= '1';

                        DATABUS <= (others => 'Z');

                        if (SEND_COMM = '0') then
                            next_state <= Idle;
                        else
                            next_state <= EndTransmitter;
                        end if;
                
                end case;
        end process DMA_FSM;

        DMA_Clocking : process(CLK_PORT, RESET)
            begin
                if (RESET = '0') then
                    byte_counter_tx <= 0;
                    byte_counter_rx <= 0;

                    TX_DATA <= (others => '0');
                    current_state <= idle;
        
                    elsif CLK_PORT'event and CLK_PORT = '1' then
                    case current_state is
                        when Idle =>
                            TX_DATA <= (others => '0');

                        when ReadFifo =>
                            TX_DATA <= (others => '0');

                        when WriteRam =>
                            byte_counter_rx <= byte_counter_rx + 1;

                        when EndWrite =>
                            TX_DATA <= (others => '0');
                            byte_counter_rx <= 0;

                        when waiting => --NO TOCAMOS EL DATO DEL TRANSMISOR

            
                        when LoadTransmitter =>
                            TX_DATA <= DataBus;
                            byte_counter_tx <= byte_counter_tx + 1;
                            
                        --    if (byte_counter_tx < 2) then   --If byte_counter_tx = 0
                        --        byte_counter_tx <= byte_counter_tx + 1;   
                        --    else
                        --        byte_counter_tx <= 0; --No deberíamos llegar nunca
                        --    end if;
               
                        when SendTransmitter => 

                        when EndTransmitter =>
                            TX_DATA <= (others => '0');
                            byte_counter_tx <= 0;
                        end case;

                    current_state <= next_state; 
                end if;

        end process DMA_Clocking;


end DMA_Behavior;