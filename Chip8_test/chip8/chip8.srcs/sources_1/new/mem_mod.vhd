library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mem_mod is
    Port ( address : in STD_LOGIC_VECTOR (12 downto 0);
           clock : in STD_LOGIC;
           we : in STD_LOGIC;
           dataIn : in STD_LOGIC_VECTOR (7 downto 0);
           dataOut : out STD_LOGIC_VECTOR (7 downto 0));
end mem_mod;

architecture Behavioral of mem_mod is
    type RAM is array ( ( 2 * 4096 ) - 1 downto 0 ) of std_logic_vector( 7 downto 0 );
    
    signal sys_RAM : RAM := ( 
                                0 => x"00", 1 => x"00", -- set DT and ST to 0
                                511 => "10101010",           -- memory mapped port
                                 2 => "11110000",  22 => "10010000",  42 => "11110000",  62 => "11110000",
                                 3 => "10010000",  23 => "10010000",  43 => "10010000",  63 => "10000000",
                                 4 => "10010000",  24 => "11110000",  44 => "11110000",  64 => "10000000",
                                 5 => "10010000",  25 => "00010000",  45 => "10010000",  65 => "10000000",
                                 6 => "11110000",  26 => "00010000",  46 => "11110000",  66 => "11110000",
                                 7 => "00100000",  27 => "11110000",  47 => "11110000",  67 => "11100000",
                                 8 => "01100000",  28 => "10000000",  48 => "10010000",  68 => "10010000",
                                 9 => "00100000",  29 => "11110000",  49 => "11110000",  69 => "10010000",
                                10 => "00100000",  30 => "00010000",  50 => "00010000",  70 => "10010000",
                                11 => "01110000",  31 => "11110000",  51 => "11110000",  71 => "11100000",
                                12 => "11110000",  32 => "11110000",  52 => "11110000",  72 => "11110000",
                                13 => "00010000",  33 => "10000000",  53 => "10010000",  73 => "10000000",
                                14 => "11110000",  34 => "11110000",  54 => "11110000",  74 => "11110000",
                                15 => "10000000",  35 => "10010000",  55 => "10010000",  75 => "10000000",
                                16 => "11110000",  36 => "11110000",  56 => "10010000",  76 => "11110000",
                                17 => "11110000",  37 => "11110000",  57 => "11100000",  77 => "11110000",
                                18 => "00010000",  38 => "00010000",  58 => "10010000",  78 => "10000000",
                                19 => "11110000",  39 => "00100000",  59 => "11100000",  79 => "11110000",
                                20 => "00010000",  40 => "01000000",  60 => "10010000",  80 => "10000000",
                                21 => "11110000",  41 => "01000000",  61 => "11100000",  81 => "10000000",
                                
                                others => ( others => '0')
                            );
    signal read_address : std_logic_vector( 12 downto 0 );
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