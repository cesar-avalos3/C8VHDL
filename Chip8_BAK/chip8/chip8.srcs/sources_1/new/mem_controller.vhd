library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity mem_controller is
    Port ( memAddress : in STD_LOGIC_VECTOR (35 downto 0);
           dataIn : in STD_LOGIC_VECTOR (23 downto 0);
           dataOut : out STD_LOGIC_VECTOR (23 downto 0);
           valid : in STD_LOGIC_VECTOR (2 downto 0);
           done : out STD_LOGIC_VECTOR (2 downto 0);
           write : in STD_LOGIC_VECTOR (2 downto 0);
           hold : in STD_LOGIC_VECTOR (2 downto 0);
           gameSelect : in STD_LOGIC_VECTOR (3 downto 0);
           gameSelected : out STD_LOGIC_VECTOR (3 downto 0);
           mapped_out : out STD_LOGIC_VECTOR( 7 downto 0 );
           clk, reset : in STD_LOGIC );
end mem_controller;

architecture Behavioral of mem_controller is
    constant DT_ADDRESS  : std_logic_vector(11 downto 0):= "000000000000";
    constant ST_ADDRESS  : std_logic_vector(11 downto 0):= "000000000001";
    
    type memState is ( initA, initB, initC, waiting, ownedWaiting, memAccess, raiseDone, waitFinish );
    
    TYPE GAME is array (4095 DOWNTO 0) of STD_LOGIC_VECTOR (7 downto 0);
    Type RAM is array ( 15 downto 0 ) of GAME;
    
    signal ramData: RAM := ( 0 => ( 
                                512 => x"12", 513 => x"00", -- JP 0x200
                                others => "00000000" 
                              ), 
                             others => ( others => "00000000" ) );
                             
    signal currentGame : STD_LOGIC_VECTOR (3 downto 0);
    signal owner : STD_LOGIC_VECTOR (2 downto 0);
    signal current_state, next_state : memState;
begin
    mapped_out <= ramData( to_integer( unsigned( currentGame ) ) )( 511);
    gameSelected <= currentGame;
    
    process( clk, reset )
    begin
        if ( reset = '1' ) then
            current_state <= initA;            
        elsif ( rising_edge( clk ) ) then
            current_state <= next_state;
        end if;
    end process;
    
    process( current_state )
        variable cur_address : STD_LOGIC_VECTOR (11 downto 0);
        variable data : STD_LOGIC_VECTOR (7 downto 0);
        variable dataA : STD_LOGIC_VECTOR (7 downto 0);
    begin
        next_state <= current_state;
        case current_state is
            when initA =>
                done <= "000";
                next_state <= initB;
            when initB =>
                currentGame <= gameSelect;
                next_state <= initC;
            when initC =>
                owner <= "000";
                
                ramData
                    ( to_integer( unsigned( currentGame ) ) )
                    ( to_integer( unsigned( DT_ADDRESS ) ) ) <= "00000000";
                ramData
                    ( to_integer( unsigned( currentGame ) ) )
                    ( to_integer( unsigned( ST_ADDRESS ) ) ) <= "00000000";
                                        
                ramData( to_integer( unsigned( currentGame ) ) )( 2 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(22 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(42 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(62 ) <= "11110000";
                ramData( to_integer( unsigned( currentGame ) ) )( 3 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(23 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(43 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(63 ) <= "10000000";
                ramData( to_integer( unsigned( currentGame ) ) )( 4 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(24 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(44 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(64 ) <= "10000000";
                ramData( to_integer( unsigned( currentGame ) ) )( 5 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(25 ) <= "00010000";  ramData( to_integer( unsigned( currentGame ) ) )(45 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(65 ) <= "10000000";
                ramData( to_integer( unsigned( currentGame ) ) )( 6 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(26 ) <= "00010000";  ramData( to_integer( unsigned( currentGame ) ) )(46 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(66 ) <= "11110000";
                ramData( to_integer( unsigned( currentGame ) ) )( 7 ) <= "00100000";  ramData( to_integer( unsigned( currentGame ) ) )(27 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(47 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(67 ) <= "11100000";
                ramData( to_integer( unsigned( currentGame ) ) )( 8 ) <= "01100000";  ramData( to_integer( unsigned( currentGame ) ) )(28 ) <= "10000000";  ramData( to_integer( unsigned( currentGame ) ) )(48 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(68 ) <= "10010000";
                ramData( to_integer( unsigned( currentGame ) ) )( 9 ) <= "00100000";  ramData( to_integer( unsigned( currentGame ) ) )(29 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(49 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(69 ) <= "10010000";
                ramData( to_integer( unsigned( currentGame ) ) )(10 ) <= "00100000";  ramData( to_integer( unsigned( currentGame ) ) )(30 ) <= "00010000";  ramData( to_integer( unsigned( currentGame ) ) )(50 ) <= "00010000";  ramData( to_integer( unsigned( currentGame ) ) )(70 ) <= "10010000";
                ramData( to_integer( unsigned( currentGame ) ) )(11 ) <= "01110000";  ramData( to_integer( unsigned( currentGame ) ) )(31 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(51 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(71 ) <= "11100000";
                ramData( to_integer( unsigned( currentGame ) ) )(12 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(32 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(52 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(72 ) <= "11110000";
                ramData( to_integer( unsigned( currentGame ) ) )(13 ) <= "00010000";  ramData( to_integer( unsigned( currentGame ) ) )(33 ) <= "10000000";  ramData( to_integer( unsigned( currentGame ) ) )(53 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(73 ) <= "10000000";
                ramData( to_integer( unsigned( currentGame ) ) )(14 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(34 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(54 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(74 ) <= "11110000";
                ramData( to_integer( unsigned( currentGame ) ) )(15 ) <= "10000000";  ramData( to_integer( unsigned( currentGame ) ) )(35 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(55 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(75 ) <= "10000000";
                ramData( to_integer( unsigned( currentGame ) ) )(16 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(36 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(56 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(76 ) <= "11110000";
                ramData( to_integer( unsigned( currentGame ) ) )(17 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(37 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(57 ) <= "11100000";  ramData( to_integer( unsigned( currentGame ) ) )(77 ) <= "11110000";
                ramData( to_integer( unsigned( currentGame ) ) )(18 ) <= "00010000";  ramData( to_integer( unsigned( currentGame ) ) )(38 ) <= "00010000";  ramData( to_integer( unsigned( currentGame ) ) )(58 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(78 ) <= "10000000";
                ramData( to_integer( unsigned( currentGame ) ) )(19 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(39 ) <= "00100000";  ramData( to_integer( unsigned( currentGame ) ) )(59 ) <= "11100000";  ramData( to_integer( unsigned( currentGame ) ) )(79 ) <= "11110000";
                ramData( to_integer( unsigned( currentGame ) ) )(20 ) <= "00010000";  ramData( to_integer( unsigned( currentGame ) ) )(40 ) <= "01000000";  ramData( to_integer( unsigned( currentGame ) ) )(60 ) <= "10010000";  ramData( to_integer( unsigned( currentGame ) ) )(80 ) <= "10000000";
                ramData( to_integer( unsigned( currentGame ) ) )(21 ) <= "11110000";  ramData( to_integer( unsigned( currentGame ) ) )(41 ) <= "01000000";  ramData( to_integer( unsigned( currentGame ) ) )(61 ) <= "11100000";  ramData( to_integer( unsigned( currentGame ) ) )(81 ) <= "10000000";
                next_state <= waiting;     
            when waiting =>
                if ( valid(0) = '1' ) then
                    owner <= "001";
                    next_state <= memAccess;
                elsif ( valid(1) = '1' ) then
                    owner <= "010";
                    next_state <= memAccess;
                elsif ( valid(2) = '1' ) then
                    owner <= "100";
                    next_state <= memAccess;
                end if;
            when ownedWaiting =>
                if ( ( owner and hold ) = "000" ) then
                    owner <= "000";
                    next_state <= waiting;
                elsif ( ( owner and valid ) = owner ) then
                    next_state <= memAccess;
                end if;
            when memAccess =>
                if ( owner = "001" ) then
                    cur_address := memAddress( 11 downto 0 );
                    data := dataIn( 7 downto 0 );
                elsif ( owner = "010" ) then
                    cur_address := memAddress( 23 downto 12 );
                    data := dataIn( 15 downto 8 );
                elsif ( owner = "100" ) then
                    cur_address := memAddress( 35 downto 24 );
                    data := dataIn( 23 downto 16 );
                end if;
                
                -- do the read
                dataA := ramData
                    ( to_integer( unsigned( currentGame ) ) )
                    ( to_integer( unsigned( cur_address ) ) );
                
                if( ( owner and write ) = owner ) then
                    -- do the write
                    ramData
                        ( to_integer( unsigned( currentGame ) ) )
                        ( to_integer( unsigned( cur_address ) ) ) <= data;
                end if;
                
                -- output what was in the location, even if we just wrote.
                if ( owner = "001" ) then          
                    dataOut( 7 downto 0 ) <= dataA;
                elsif ( owner = "010" ) then
                    dataOut( 15 downto 8 ) <= dataA;
                elsif ( owner = "100" ) then
                    dataOut( 23 downto 16 ) <= dataA;
                end if;
                
                next_state <= raiseDone;
            when raiseDone =>
                done <= owner;
                next_state <= waitFinish;
            when waitFinish =>
                if ( ( owner and valid ) = "000") then
                    done <= "000";
                    if ( ( owner and hold ) = owner ) then
                        next_state <= ownedWaiting;
                    else
                        owner <= "000";
                        next_state <= waiting;
                    end if;
                end if;
        end case;
    end process;

end Behavioral;
