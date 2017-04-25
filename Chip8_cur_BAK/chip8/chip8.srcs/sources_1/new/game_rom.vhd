library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity game_rom is
    Port ( address : in STD_LOGIC_VECTOR (15 downto 0);
           clock : in STD_LOGIC;
           we : in STD_LOGIC;
           dataIn : in STD_LOGIC_VECTOR (7 downto 0);
           dataOut : out STD_LOGIC_VECTOR (7 downto 0));
end game_rom;

architecture Behavioral of game_rom is
    type RAM is array ( ( 16 * 4096 ) - 1 downto 0 ) of std_logic_vector( 7 downto 0 );
    
    signal sys_RAM : RAM := (   
                                512 => x"66", 513 => x"01",  -- LD V6, 0x01
                                514 => x"61", 515 => x"3C",  -- LD V1, 0x3C
                                516 => x"F1", 517 => x"15",  -- LD DT, V1;   ; loop
                                518 => x"86", 519 => x"6E",  -- SHL V6, V6
                                520 => x"4F", 521 => x"01",  -- SNE VF, 0x01
                                522 => x"66", 523 => x"01",  -- LD V6, 0x01
                                524 => x"80", 525 => x"60",  -- LD V0, V6
                                526 => x"A1", 527 => x"FF",  -- LD I, 0x1FF
                                528 => x"F0", 529 => x"55",  -- LD [I], V0
                                530 => x"F2", 531 => x"07",  -- LD V2, DT   ; wait
                                532 => x"32", 533 => x"00",  -- SE V2, 0x00
                                534 => x"12", 535 => x"12",  -- JP wait
                                536 => x"12", 537 => x"04",  -- JP loop
                                
                                others => ( others => '0')
                            );
    signal read_address : std_logic_vector( 15 downto 0 );
begin

    process ( clock )
    begin
        if ( rising_edge( clock ) ) then
            if( we = '1' ) then
                sys_RAM( to_integer( unsigned( address ))) <= dataIn;
            end if;
            
            read_address <= address;
        end if;
    end process;

    dataOut <= sys_RAM( to_integer( unsigned( read_address )));
end Behavioral;
