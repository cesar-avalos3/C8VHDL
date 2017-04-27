library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity core is
    Port ( memRead : in STD_LOGIC_VECTOR (7 downto 0);
           memWrite : out STD_LOGIC_VECTOR (7 downto 0);
           memAddress : out STD_LOGIC_VECTOR (11 downto 0);
           keyPad : in STD_LOGIC_VECTOR (15 downto 0);
           mem_valid : out STD_LOGIC;
           mem_write : out STD_LOGIC;
           mem_hold : out STD_LOGIC;
           mem_done : in STD_LOGIC;
           cpu_state : out STD_LOGIC_VECTOR( 7 downto 0 );
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           err_code : out STD_LOGIC_VECTOR( 2 downto 0 ) );
end core;

architecture Behavioral of core is
    
    constant DT_ADDRESS  : std_logic_vector(11 downto 0):= "000000000000";
    constant ST_ADDRESS  : std_logic_vector(11 downto 0):= "000000000001";
    
    constant INVALID_OP  : std_logic_vector(2 downto 0):= "001";
    constant STACK_OVER  : std_logic_vector(2 downto 0):= "010";
    constant STACK_UNDER : std_logic_vector(2 downto 0):= "011";

    type state is ( initA, error, fetchA, fetchB, memA, memB, Decode,
                    O_NOP, O_CLEAR, O_RET, O_JUMP, O_CALL, 
                    O_SNI_X_EQ_KK, O_SNI_X_NE_KK, O_SNI_X_EQ_Y, O_LD_X_KK, O_ADD_X_KK, 
                    O_LD_X_Y, O_OR_X_Y, O_AND_X_Y, O_XOR_X_Y, O_ADC_X_Y, 
                    O_SUB_X_Y, O_SHR_X_Y, O_SUBN_X_Y, O_SHL_X_Y, O_SNI_X_NE_Y, 
                    O_LD_I_ADDR, O_JMP_V0_ADDR, O_RND, O_DRW, O_SNI_KEY_X, 
                    O_SNI_KEY_NX, O_LD_X_DT, O_LD_X_KEY, O_LD_DT_X, O_LD_ST_X, 
                    O_ADD_I_X, O_LD_F_X, O_LD_B_X, O_LD_I_X, O_LD_X_I,
                    CLEAR_A, getSprite, grab_graphicsA, grab_graphicsB, 
                    drawSprite, drawSpriteA, drawSpriteB, getDT, 
                    BCD_hundreds, BCD_tens, BCD_ones, pull_reg );

    signal current_state : state;
    signal tmp_err_code : STD_LOGIC_VECTOR( 2 downto 0 );
    
    -- mem_ret_state acts like a stack pointer of sorts,
    -- once the 
    signal mem_ret_state : state;
    signal tmp_mem_write : STD_LOGIC;
    signal mem_ret_data : STD_LOGIC_VECTOR (7 downto 0);
    
    -- Program Counter
    signal PC : STD_LOGIC_VECTOR ( 11 downto 0 );
    
    signal instruction_high : STD_LOGIC_VECTOR ( 7 downto 0 );

    -- Address
    signal addr : STD_LOGIC_VECTOR ( 11 downto 0 );
    
    -- The functions arguments are denoted by n,x,y, and kk
    -- In the technical manuals
    signal n, x, y : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal kk : STD_LOGIC_VECTOR ( 7 downto 0 );
    
    -- Stack Pointer
    signal SP : STD_LOGIC_VECTOR ( 7 downto 0 );
    type STACK is array( 15 downto 0 ) of STD_LOGIC_VECTOR (15 downto 0);
    signal cpu_STACK : STACK;
    
    -- Registers
    type REG is array( 15 downto 0 ) of STD_LOGIC_VECTOR (7 downto 0);
    signal cpu_REG : REG;
    
    type POINTER_TABLE is array( 15 downto 0 ) of STD_LOGIC_VECTOR (11 downto 0);
    signal hex_digits : POINTER_TABLE;
    
    signal I : STD_LOGIC_VECTOR ( 11 downto 0 );
    
    --- poor man's RNG, since a human will let up on the reset,
    --- should start at a random point at least.
    signal RAND : STD_LOGIC_VECTOR ( 15 downto 0 ) := "1010101010101010";
    
    signal multi_address : STD_LOGIC_VECTOR ( 11 downto 0 );
    signal multi_count : STD_LOGIC_VECTOR ( 8 downto 0 );
    
    signal graphic_addressA : STD_LOGIC_VECTOR ( 11 downto 0 );
    signal graphic_addressB : STD_LOGIC_VECTOR ( 11 downto 0 );
    signal graphic_bufferA : STD_LOGIC_VECTOR ( 7 downto 0 );
    signal graphic_bufferB : STD_LOGIC_VECTOR ( 7 downto 0 );
    signal sprite_buffer    : STD_LOGIC_VECTOR ( 7 downto 0 );
    signal graphic_offset : STD_LOGIC_VECTOR ( 2 downto 0 );
    signal graphic_collision : STD_LOGIC;
    
    signal key_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal BCD_total : STD_LOGIC_VECTOR ( 7 downto 0 );
    signal BCD_left : STD_LOGIC_VECTOR ( 7 downto 0 );
    signal reg_copy_num : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
    
    mem_write <= tmp_mem_write;
    err_code <= tmp_err_code;
    
    process( clk, reset )
        variable instruction : STD_LOGIC_VECTOR ( 15 downto 0 );
        variable tmp_SP : STD_LOGIC_VECTOR ( 7 downto 0 );
        variable tmp_8 : STD_LOGIC_VECTOR ( 7 downto 0 );
        variable tmp_8x : STD_LOGIC_VECTOR ( 7 downto 0 );
        variable tmp_8y : STD_LOGIC_VECTOR ( 7 downto 0 );
        variable tmp_8A : STD_LOGIC_VECTOR ( 7 downto 0 );
        variable tmp_8B : STD_LOGIC_VECTOR ( 7 downto 0 );
        variable tmp_4 : STD_LOGIC_VECTOR ( 3 downto 0 );
        variable tmp_12 :  STD_LOGIC_VECTOR ( 11 downto 0 );
        variable tmp_12A : STD_LOGIC_VECTOR ( 11 downto 0 );
        variable tmp_12B : STD_LOGIC_VECTOR ( 11 downto 0 );
        variable key_num : STD_LOGIC_VECTOR ( 3 downto 0 );
        variable key_mask : STD_LOGIC_VECTOR ( 15 downto 0 );
        variable math_buf : STD_LOGIC_VECTOR ( 8 downto 0 );
        variable operand1, operand2: STD_LOGIC_VECTOR(7 DOWNTO 0);
    begin
        if( reset = '1' ) then
            current_state <= initA;
            memWrite <= "00000000";
            memAddress <= x"000";
            mem_valid <= '0';
            tmp_mem_write <= '0';
            mem_hold <= '0';
            tmp_err_code <= "000";
            cpu_state <= x"01";
            -- Not so sure about this right here
            if ( rising_edge( clk ) ) then
                RAND <= ( RAND(0) xor RAND(2) xor RAND(3) xor RAND(5) ) & RAND( 15 downto 1);
            end if;
        elsif ( rising_edge( clk ) ) then
            RAND <= ( RAND(0) xor RAND(2) xor RAND(3) xor RAND(5) ) & RAND( 15 downto 1);
            -- This is not doing anything
            -- It's like writing 1 = 1
            -- current_state <= current_state;
            case current_state is
                when error =>
                    cpu_state <= x"00";
                when initA =>
                    cpu_state <= x"02";           
                    PC <= x"200";
                    I <= (others => '0');
                    SP <= (others => '0');
                    
                    -- Neat short-hand form to reset arrays
                    cpu_REG <= (others => (others => '0'));                                            
                    
                    key_counter <= "0000";
                    
                    -- Hardcoded hexadecimal fonts
                    hex_digits( 0) <= "000000000010";  hex_digits( 8) <= "000000101010";
                    hex_digits( 1) <= "000000000111";  hex_digits( 9) <= "000000101111";
                    hex_digits( 2) <= "000000001100";  hex_digits(10) <= "000000110100";
                    hex_digits( 3) <= "000000010001";  hex_digits(11) <= "000000111001";
                    hex_digits( 4) <= "000000010110";  hex_digits(12) <= "000000111110";
                    hex_digits( 5) <= "000000011011";  hex_digits(13) <= "000001000011";
                    hex_digits( 6) <= "000000100000";  hex_digits(14) <= "000001001000";
                    hex_digits( 7) <= "000000100101";  hex_digits(15) <= "000001001101";
                    
                    current_state <= fetchA;

                -- FetchA
                -- The high instruction bits are fetched.                  
                when fetchA =>
                    cpu_state <= x"03";
                    memAddress <= PC;
                    PC <= PC + x"001";
                    tmp_mem_write <= '0';
                    mem_hold <= '0';
                    mem_ret_state <= fetchB;
                    current_state <= memA;
                -- FetchB
                -- The low instruction bits are fetched
                when fetchB =>
                    cpu_state <= x"04";
                    instruction_high <= mem_ret_data;
                    memAddress <= PC;
                    PC <= PC + x"001";
                    mem_ret_state <= Decode;
                    current_state <= memA;
                -- memA
                -- This state exists as a buffer of sorts
                -- to make sure the memory from fetchA is indeed
                -- loaded. 
                when memA =>
                    cpu_state <= x"05";
                    if ( mem_done = '0' ) then
                        mem_valid <= '1';
                        current_state <= memB;
                    end if;
                    -- What's the cpu state if cpu_state != x"05"
                    -- Does it keep reading?
                -- memB
                -- Same as above but for the fetchB state.
                when memB =>
                    cpu_state <= x"06";
                    if( mem_done = '1' ) then
                        if ( tmp_mem_write = '0' ) then
                            mem_ret_data <= memRead;
                        end if;
                        mem_valid <= '0';
                        current_state <= mem_ret_state;
                    end if;
                -- Decode
                -- Starts by concatenating the instructions fetched in the state
                -- preceding it. It then decodes the instructions and assigns the
                -- cpu state pertaining to each opcode.
                when Decode =>
                    cpu_state <= x"07";
                    instruction := instruction_high & mem_ret_data;
                    case instruction( 15 downto 12 ) is
                        when "0000" =>
                            -- x"00E0" | CLEAR
                            if ( instruction = "0000000011100000" ) then
                                current_state <= O_CLEAR;
                            -- x"00EE" | RETURN
                            elsif ( instruction = "0000000011101110" ) then
                                current_state <= O_RET;
                            -- x"00EF" | NOP
                            else
                                current_state <= O_NOP;
                            end if;
                            -- x"1nnn" | JUMP
                        when "0001" =>
                            addr <= instruction( 11 downto 0 );
                            current_state <= O_JUMP;
                            -- x"2nnn" | CALL
                        when "0010" =>
                            addr <= instruction( 11 downto 0 );
                            current_state <= O_CALL;
                            -- x"3xkk" | SKIP IF EQUAL (REG, BYTE)
                        when "0011" =>
                            x <= instruction( 11 downto 8 );
                            kk <= instruction( 7 downto 0 );
                            current_state <= O_SNI_X_EQ_KK;
                            -- x"4xkk" | SKIP IF UNEQUAL (REG, BYTE)
                        when "0100" =>
                            x <= instruction( 11 downto 8 );
                            kk <= instruction( 7 downto 0 );
                            current_state <= O_SNI_X_NE_KK;
                            -- x"5xy0" | SKIP IF EQUAL (REG, REG)
                        when "0101" =>
                            x <= instruction( 11 downto 8 );
                            y <= instruction( 7 downto 4 );
                            current_state <= O_SNI_X_EQ_Y;
                            -- x"6xkk" | LOAD (REG, BYTE)
                        when "0110" =>
                            x <= instruction( 11 downto 8 );
                            kk <= instruction( 7 downto 0 );
                            current_state <= O_LD_X_KK;
                            -- x"7xkk" | ADD (REG, BYTE)
                        when "0111" =>
                            x <= instruction( 11 downto 8 );
                            kk <= instruction( 7 downto 0 );
                            current_state <= O_ADD_X_KK;
                            -- x"8---" | INSTRUCTIONS
                        when "1000" =>
                            x <= instruction( 11 downto 8 );
                            y <= instruction( 7 downto 4 );
                            case instruction( 3 downto 0 ) is
                                -- x"8xy0" | LOAD (REG, REG)
                                when "0000" =>
                                    current_state <= O_LD_X_Y;
                                -- x"8xy1" | OR (REG, REG)
                                when "0001" =>
                                    current_state <= O_OR_X_Y;
                                -- x"8xy2" | AND (REG, REG)
                                when "0010" =>
                                    current_state <= O_AND_X_Y;
                                -- x"8xy3" | XOR (REG, REG)
                                when "0011" =>
                                    current_state <= O_XOR_X_Y;
                                -- x"8xy4" | ADD (REG, REG)
                                when "0100" =>
                                    current_state <= O_ADC_X_Y;
                                -- x"8xy5" | SUBTRACT (REG, REG)
                                when "0101" =>
                                    current_state <= O_SUB_X_Y;
                                -- x"8xy6" | SHIFT RIGHT (REG, REG)
                                when "0110" =>
                                    current_state <= O_SHR_X_Y;
                                -- x"8xy7" | SUBTRACT FLIP (REG, REG)                                    
                                when "0111" =>
                                    current_state <= O_SUBN_X_Y;
                                -- x"8xyE" | SHIFT LEFT (REG, REG)                                    
                                when "1110" =>
                                    current_state <= O_SHL_X_Y;
                                when others =>
                                    tmp_err_code <= INVALID_OP;
                                    current_state <= error;
                            end case;
                        -- x"9xy0" | SKIP IF NOT EQUAL (REG, REG)                               
                        when "1001" =>
                            x <= instruction( 11 downto 8 );
                            y <= instruction( 7 downto 4 );
                            current_state <= O_SNI_X_NE_Y;
                        -- x"Annn" | LOAD INDEX (REG, CONST)                                    
                        when "1010" =>
                            addr <= instruction( 11 downto 0 );
                            current_state <= O_LD_I_ADDR;
                        -- x"Bnnn" | JUMP (ADDRESS, REG)                                    
                        when "1011" =>
                            addr <= instruction( 11 downto 0 );
                            current_state <= O_JMP_V0_ADDR;
                        -- x"Cxkk" | RANDOM (REG, CONST)                                    
                        when "1100" =>
                            x <= instruction( 11 downto 8 );
                            kk <= instruction( 7 downto 0 );
                            current_state <= O_RND;
                        -- x"Dxyn" | DRAW (REG, REG, SPRITE ADDRESS)                                    
                        when "1101" =>
                            x <= instruction( 11 downto 8 );
                            y <= instruction( 7 downto 4 );
                            n <= instruction( 3 downto 0 );
                            current_state <= O_DRW;
                        -- x"Ex9E" | SKP (REG) and NOT SKIP (REG)                                
                        when "1110" =>
                            x <= instruction( 11 downto 8 );
                            if ( instruction( 7 downto 0 ) = "10011110" ) then
                                current_state <= O_SNI_KEY_X;
                            elsif ( instruction( 7 downto 0 ) = "10100001" ) then
                                current_state <= O_SNI_KEY_NX;
                            else
                                tmp_err_code <= INVALID_OP;
                                current_state <= error;
                            end if;
                        -- x"F" | Instructions                                    
                        when "1111" =>
                            x <= instruction( 11 downto 8 );
                            case instruction( 7 downto 0 ) is
                                -- x"Fx07" | LOAD (DELAY TIMER -> REG)                                    
                                when x"07" =>
                                    current_state <= O_LD_X_DT;
                                -- x"Fx0A" | LOAD (REG, KEY)                                    
                                when x"0A" =>
                                    current_state <= O_LD_X_KEY;
                                -- x"Fx15" | LOAD (REG -> DELAY TIMER)                                   
                                when x"15" =>
                                    current_state <= O_LD_DT_X;
                                -- x"Fx18" | LOAD (SOUND TIMER -> REG)                                                                       
                                when x"18" =>
                                    current_state <= O_LD_ST_X;
                                -- x"Fx1E" | ADD (I + REG -> I)                                   
                                when x"1E" =>
                                    current_state <= O_ADD_I_X;
                                -- x"Fx29" | LOAD (I -> REG ADDRESS SPRITE HEX FONT)                                   
                                when x"29" =>
                                    current_state <= O_LD_F_X;
                                -- x"Fx33" | BCD                                   
                                when x"33" =>
                                    current_state <= O_LD_B_X;
                                -- x"Fx55" | LOAD (V0&...&VX ->  MEMORY ADDRESS I)                                                                       
                                when x"55" =>
                                    current_state <= O_LD_I_X;
                                -- x"Fx65" | READ (MEMORY ADDRESS I -> V0&...&VX)                                   
                                when x"65" =>
                                    current_state <= O_LD_X_I;
                                when others =>
                                    tmp_err_code <= INVALID_OP;
                                    current_state <= error;
                            end case;
                        when others =>
                            tmp_err_code <= INVALID_OP;
                            current_state <= error;
                    end case;
                when O_NOP =>
                    cpu_state <= x"08";
                    current_state <= fetchA;
                when O_CLEAR =>
                    cpu_state <= x"09";
                    multi_address <= "111100000000"; -- 0xF00
                    multi_count <= "100000000"; -- 256
                    current_state <= CLEAR_A;
                when CLEAR_A =>
                    cpu_state <= x"0A";
                    if ( multi_count = "000000000" ) then
                        current_state <= fetchA;
                    else
                        memAddress <= multi_address;
                        tmp_mem_write <= '1';
                        mem_hold <= '0';
                        mem_ret_state <= CLEAR_A;
                        memWrite <= "00000000";
                        current_state <= memA;
                        
                        multi_address <= multi_address + "000000000001";
                        multi_count <= multi_count - "000000001";
                    end if;
                when O_RET =>
                    cpu_state <= x"0B";
                    tmp_SP := SP;
                    tmp_SP := tmp_SP - "00000001";
                    if( tmp_SP = "11111111" ) then
                        tmp_err_code <= STACK_UNDER;
                        current_state <= error;
                    else
                        PC <= cpu_STACK( to_integer( unsigned ( tmp_SP ) ))( 11 downto 0 );
                        SP <= tmp_SP;
                        current_state <= fetchA;
                    end if;
                when O_JUMP =>
                    cpu_state <= x"0C";
                    PC <= addr;
                    current_state <= fetchA;
                when O_CALL =>
                    cpu_state <= x"0D";
                    tmp_SP := SP;
                    if( tmp_SP = "00010000" ) then   -- 16 is to much
                        tmp_err_code <= STACK_OVER;
                        current_state <= error;
                    else
                        cpu_STACK( to_integer( unsigned ( tmp_SP ) )) <= "0000" & PC;
                        tmp_SP := tmp_SP + "00000001";
                        SP <= tmp_SP;
                        PC <= addr;
                        current_state <= fetchA;
                    end if;
                when O_SNI_X_EQ_KK =>
                    cpu_state <= x"0E";
                    if ( cpu_REG( to_integer( unsigned ( x ) ) ) = kk ) then
                        PC <= PC + "000000000010";
                    end if;
                    current_state <= fetchA;
                when O_SNI_X_NE_KK =>
                    cpu_state <= x"0F";
                    if ( cpu_REG( to_integer( unsigned ( x ) ) ) /= kk ) then
                        PC <= PC + "000000000010";
                    end if;
                    current_state <= fetchA;
                when O_SNI_X_EQ_Y =>
                     cpu_state <= x"10";
                     if ( cpu_REG( to_integer( unsigned ( x ) ) ) = 
                          cpu_REG( to_integer( unsigned ( y ) ) ) ) then
                        PC <= PC + "000000000010";
                     end if;
                     
                     current_state <= fetchA;
                when O_LD_X_KK =>
                    cpu_state <= x"11";
                    cpu_REG(to_integer(unsigned( x ))) <= kk;
                    current_state <= fetchA;
                when O_ADD_X_KK => 
                    cpu_state <= x"12";
                    cpu_REG(to_integer(unsigned( x ))) <=
                            cpu_REG(to_integer(unsigned( x ))) + kk;
                    current_state <= fetchA;
                when O_LD_X_Y =>
                    cpu_state <= x"13";
                    cpu_REG(to_integer(unsigned( x ))) <=
                            cpu_REG(to_integer(unsigned( y )));
                    current_state <= fetchA;
                -- CHIP_8 OR Operation is bitwise
                when O_OR_X_Y =>
                    cpu_state <= x"14";
                    operand1 := cpu_REG(to_integer(unsigned( x )));
                    operand2 := cpu_REG(to_integer(unsigned( y )));
                    cpu_REG(to_integer(unsigned( x ))) <=
                                                          ( operand1(7) OR operand2(7) ) & 
                                                          ( operand1(6) OR operand2(6) ) &
                                                          ( operand1(5) OR operand2(5) ) &
                                                          ( operand1(4) OR operand2(4) ) &
                                                          ( operand1(3) OR operand2(3) ) &
                                                          ( operand1(2) OR operand2(2) ) &
                                                          ( operand1(1) OR operand2(1) ) &
                                                          ( operand1(0) OR operand2(0) );

                    current_state <= fetchA;
                -- CHIP_8 OR Operation is bitwise
                when O_AND_X_Y =>
                    cpu_state <= x"15";
                    operand1 := cpu_REG(to_integer(unsigned( x )));
                    operand2 := cpu_REG(to_integer(unsigned( y )));
                    cpu_REG(to_integer(unsigned( x ))) <= ( operand1(7) AND operand2(7) ) & 
                                                          ( operand1(6) AND operand2(6) ) &
                                                          ( operand1(5) AND operand2(5) ) &
                                                          ( operand1(4) AND operand2(4) ) &
                                                          ( operand1(3) AND operand2(3) ) &
                                                          ( operand1(2) AND operand2(2) ) &
                                                          ( operand1(1) AND operand2(1) ) &
                                                          ( operand1(0) AND operand2(0) );

                    current_state <= fetchA;
                when O_XOR_X_Y =>
                    cpu_state <= x"16";
                    operand1 := cpu_REG(to_integer(unsigned( x )));
                    operand2 := cpu_REG(to_integer(unsigned( y )));
                    cpu_REG(to_integer(unsigned( x ))) <= ( operand1(7) XOR operand2(7) ) & 
                                                          ( operand1(6) XOR operand2(6) ) &
                                                          ( operand1(5) XOR operand2(5) ) &
                                                          ( operand1(4) XOR operand2(4) ) &
                                                          ( operand1(3) XOR operand2(3) ) &
                                                          ( operand1(2) XOR operand2(2) ) &
                                                          ( operand1(1) XOR operand2(1) ) &
                                                          ( operand1(0) XOR operand2(0) );
                    current_state <= fetchA;
                when O_ADC_X_Y =>
                    cpu_state <= x"17";
                    math_buf :=
                            (  '0' & cpu_REG(to_integer(unsigned( x )))  )
                            +
                            (  '0' & cpu_REG(to_integer(unsigned( y )))  );
                    cpu_REG(to_integer(unsigned( x ))) <= math_buf( 7 downto 0 );
                    cpu_REG( 15 ) <= "0000000" & math_buf( 8 );
                    current_state <= fetchA;
                when O_SUB_X_Y => 
                    cpu_state <= x"18";
                    cpu_REG(to_integer(unsigned( x ))) <=
                           cpu_REG(to_integer(unsigned( x )))
                           -
                           cpu_REG(to_integer(unsigned( y )));
    ---- not sure about this, think documentation might have a typo.
                    if ( cpu_REG(to_integer(unsigned( x )))
                         >=
                         cpu_REG(to_integer(unsigned( y )))  ) then
                        cpu_REG( 15 ) <= "00000001";
                    else
                        cpu_REG( 15 ) <= "00000000";
                    end if;
                    current_state <= fetchA;
    ---- is the doc right on this one? You don't use the Y?????
                when O_SHR_X_Y =>
                    cpu_state <= x"19";
                    cpu_REG(to_integer(unsigned( x ))) <= '0' &
                                cpu_REG(to_integer(unsigned( y )))( 7 downto 1 );
                    cpu_REG( 15 ) <= "0000000" &
                                        cpu_REG(to_integer(unsigned( y )))(0);
                    current_state <= fetchA;
                when O_SUBN_X_Y =>
                    cpu_state <= x"1A";
                    cpu_REG(to_integer(unsigned( x ))) <=
                            cpu_REG(to_integer(unsigned( y )))
                            -
                            cpu_REG(to_integer(unsigned( x )));
                    if ( cpu_REG(to_integer(unsigned( y )))
                         >=
                         cpu_REG(to_integer(unsigned( x )))  ) then
                       cpu_REG( 15 ) <= "00000001";
                    else
                       cpu_REG( 15 ) <= "00000000";
                    end if;
                    current_state <= fetchA;
                when O_SHL_X_Y =>
                    cpu_state <= x"1B";
                    cpu_REG(to_integer(unsigned( x ))) <=
                           cpu_REG(to_integer(unsigned( y )))( 6 downto 0 ) & '0';
                    cpu_REG( 15 ) <= "0000000" & 
                                        cpu_REG(to_integer(unsigned( y )))(7);
                    current_state <= fetchA;
                when O_SNI_X_NE_Y =>
                    cpu_state <= x"1C";
                    if ( cpu_REG( to_integer( unsigned ( x ) ) ) 
                         /= 
                         cpu_REG( to_integer( unsigned ( y ) ) ) ) then
                        PC <= PC + "000000000010";
                    end if;
                    
                    current_state <= fetchA; 
                when O_LD_I_ADDR => 
                    cpu_state <= x"1D";
                    I <= addr;
                    current_state <= fetchA;
                when O_JMP_V0_ADDR =>
                    cpu_state <= x"1E";
                    PC <= addr + ( "0000" & cpu_REG(0) );
                    current_state <= fetchA;
                when O_RND =>
                    cpu_state <= x"1F";
                    tmp_8 := RAND( 7 downto 0 );
                    tmp_8 := tmp_8 and kk;
                    cpu_REG( to_integer( unsigned ( x ) ) ) <= tmp_8;
                    current_state <= fetchA;
                when O_DRW =>
                    cpu_state <= x"20";
                    tmp_8x := "00" & cpu_REG( to_integer( unsigned ( x ) ) )(5 downto 0);
                    tmp_8y := "000" & cpu_REG( to_integer( unsigned ( y ) ) )( 4 downto 0);
                    
                    -- address = 0xF00 + ( y << 3 ) + ( x >> 3 )
                    tmp_12 := "1111" & tmp_8y( 4 downto 0 ) & tmp_8x( 5 downto 3);
                    graphic_addressA <= tmp_12;
                    
                    -- address + 1 = address + 1, but roll over on 8 byte boundary
                    tmp_12 := tmp_12( 11 downto 3 ) & ( tmp_12( 2 downto 0 ) + "001");
                    graphic_addressB <= tmp_12;
                    
                    graphic_offset <= tmp_8x( 2 downto 0 );
                    graphic_collision <= '0';
                    multi_address <= I;
                    current_state <= getSprite;
                when getSprite =>
                    cpu_state <= x"21";
                    -- when n gets to 0 we are done, if there was a collision set VF
                    if( n = "0000" ) then
                        if ( graphic_collision = '1' ) then
                            cpu_REG( 15 ) <= "00000001";
                        end if;
                        current_state <= fetchA;
                    else
                        -- we have more to do, n--
                        n <= n - "0001";
                        -- readAddress = spriteAddress++
                        memAddress <= multi_address;
                        multi_address <= multi_address + "000000000001";
                        -- read, do not hold memory
                        tmp_mem_write <= '0';
                        mem_hold <= '0';
                        mem_ret_state <= grab_graphicsA;
                        current_state <= memA;
                    end if;
                when grab_graphicsA =>
                    cpu_state <= x"22";
                    -- grab the value
                    sprite_buffer <= mem_ret_data;
                    -- get old info from video buffer low byte
                    memAddress <= graphic_addressA;
                    mem_ret_state <= grab_graphicsB;
                    current_state <= memA;
                when grab_graphicsB =>
                    cpu_state <= x"23";
                    -- grab the value
                    graphic_bufferA <= mem_ret_data;
                    -- get old info from video buffer high byte
                    memAddress <= graphic_addressB;
                    mem_ret_state <= drawSpriteA;
                    current_state <= memA;
                when drawSprite =>
                    cpu_state <= x"24";
                    -- xor the new data into highByte::lowByte at the corret offset
                    tmp_8A := graphic_bufferA;
                    tmp_8B := mem_ret_data;
                    
                    if( graphic_offset = "000" ) then
                        tmp_8A := tmp_8A xor sprite_buffer;
                    elsif ( graphic_offset = "001" ) then
                        tmp_8B := tmp_8B xor ( "0000000" & sprite_buffer(7) );
                        tmp_8A := tmp_8A xor ( sprite_buffer( 6 downto 0 ) & "0");
                    elsif ( graphic_offset = "010" ) then
                        tmp_8B := tmp_8B xor ( "000000" & sprite_buffer(7 downto 6) );
                        tmp_8A := tmp_8A xor ( sprite_buffer( 5 downto 0 ) & "00");
                    elsif ( graphic_offset = "011" ) then
                        tmp_8B := tmp_8B xor ( "00000" & sprite_buffer(7 downto 5) );
                        tmp_8A := tmp_8A xor ( sprite_buffer( 4 downto 0 ) & "000");
                    elsif ( graphic_offset = "100" ) then
                        tmp_8B := tmp_8B xor ( "0000" & sprite_buffer(7 downto 4) );
                        tmp_8A := tmp_8A xor ( sprite_buffer( 3 downto 0 ) & "0000");
                    elsif ( graphic_offset = "101" ) then
                        tmp_8B := tmp_8B xor ( "000" & sprite_buffer(7 downto 3) );
                        tmp_8A := tmp_8A xor ( sprite_buffer( 2 downto 0 ) & "00000");
                    elsif ( graphic_offset = "110" ) then
                        tmp_8B := tmp_8B xor ( "00" & sprite_buffer(7 downto 2) );
                        tmp_8A := tmp_8A xor ( sprite_buffer( 1 downto 0 ) & "000000");
                    elsif ( graphic_offset = "111" ) then
                        tmp_8B := tmp_8B xor ( "0" & sprite_buffer(7 downto 1) );
                        tmp_8A := tmp_8A xor ( sprite_buffer( 0 ) & "0000000");
                    end if;
                    
                    -- collision if the old bits are gone
                    if( ( graphic_bufferA and tmp_8A ) /= graphic_bufferA ) then
                        graphic_collision <= '1';
                    elsif ( ( mem_ret_data and tmp_8B ) /= mem_ret_data ) then
                        graphic_collision <= '1';
                    end if;
                    
                    -- store this here to remember we cannot use it this state, whoops!!
                    graphic_bufferB <= tmp_8B;
                    -- writeAddress = videoLowByte++8 to increment to the next row.
                    memAddress <= graphic_addressA;
                    graphic_addressA <= graphic_addressA + "00000001000";
                    -- we are writing the new xored video data here
                    tmp_mem_write <= '1';
                    memWrite <= tmp_8A;
                    mem_ret_state <= drawSpriteA;
                    current_state <= memA;
                when drawSpriteA =>
                    cpu_state <= x"25";
                    -- writeAddress = videoHighByte++8 to increment to the next row.
                    memAddress <= graphic_addressB;
                    graphic_addressB <= graphic_addressB + "00000001000";
                    -- write the rest of the video update
                    memWrite <= graphic_bufferB;
                    mem_ret_state <= drawSpriteB;
                    current_state <= memA;
                when drawSpriteB =>
                    cpu_state <= x"26";
                    -- if the addresses rolled off the bottom of the screen,
                    --  then put them back up at the top of the buffer instead of top of memory
                    if( graphic_addressA( 11 downto 8 ) = "0000" ) then
                        graphic_addressA <= graphic_addressA + "11110000000";
                        graphic_addressB <= graphic_addressB + "11110000000";
                    end if;
                    
                    -- get the next sprite line.
                    current_state <= getSprite;
                when O_SNI_KEY_X => 
                    cpu_state <= x"27";
                    key_num := cpu_REG( to_integer( unsigned ( x ) ) )( 3 downto 0 );
                    key_mask := "0000000000000001";
                    
                    key_mask := std_logic_vector(  shift_left( unsigned( key_mask ), to_integer( unsigned ( key_num ) ) )  );
                    if( ( key_mask and keyPad ) = key_mask ) then
                        PC <= PC + "000000000010";
                    end if;
                    
                    current_state <= fetchA;
                when O_SNI_KEY_NX =>
                    cpu_state <= x"28";
                    key_num := cpu_REG( to_integer( unsigned ( x ) ) )( 3 downto 0 );
                    key_mask := "0000000000000001";
                    
                    key_mask := std_logic_vector(  shift_left( unsigned( key_mask ), to_integer( unsigned ( key_num ) ) )  );
                    if( ( key_mask and keyPad ) /= key_mask ) then
                        PC <= PC + "000000000010";
                    end if;
                    
                    current_state <= fetchA;
                when O_LD_X_DT =>
                    cpu_state <= x"29";
                    memAddress <= DT_ADDRESS;
                    tmp_mem_write <= '0';
                    mem_hold <= '0';
                    mem_ret_state <= getDT;
                    current_state <= memA;
                when getDT =>
                    cpu_state <= x"2A";
                    cpu_REG( to_integer( unsigned ( x ) ) ) <= mem_ret_data;
                    current_state <= fetchA;
                when O_LD_X_KEY =>
                    cpu_state <= x"2B";
                    -- keep rolling through all 15 keys until we find one that is down. 
                    key_num := key_counter;
                    key_mask := "0000000000000001";
                    
                    key_counter <= key_counter + 1;
                    key_mask := std_logic_vector(  shift_left( unsigned( key_mask ), to_integer( unsigned ( key_num ) ) )  );
                    
                    if( ( key_mask and keyPad ) = key_mask ) then
                        cpu_REG( to_integer( unsigned ( x ) ) ) <= "0000" & key_num;
                        current_state <= fetchA;
                    end if;
                when O_LD_DT_X =>
                    cpu_state <= x"2C";
                    memAddress <= DT_ADDRESS;
                    tmp_mem_write <= '1';
                    mem_hold <= '0';
                    mem_ret_state <= fetchA;
                    memWrite <= cpu_REG( to_integer( unsigned ( x ) ) );
                    current_state <= memA;
                when O_LD_ST_X =>
                    cpu_state <= x"2D";
                    memAddress <= ST_ADDRESS;
                    tmp_mem_write <= '1';
                    mem_hold <= '0';
                    mem_ret_state <= fetchA;
                    memWrite <= cpu_REG( to_integer( unsigned ( x ) ) );
                    current_state <= memA;
                when O_ADD_I_X =>
                    cpu_state <= x"2E";
                    I <= I +  ( "0000" & cpu_REG(to_integer(unsigned( x ))) );
                    current_state <= fetchA;
                when O_LD_F_X =>
                    cpu_state <= x"2F";
                    tmp_4 := cpu_REG(to_integer(unsigned( x )))( 3 downto 0 );
                    I <= hex_digits( to_integer(unsigned( tmp_4 )));
                    current_state <= fetchA;
                when O_LD_B_X =>
                    cpu_state <= x"30";
                    BCD_left <= cpu_REG(to_integer(unsigned( x )));
                    BCD_total <= "00000000";
                    current_state <= BCD_hundreds;
                when BCD_hundreds =>
                    cpu_state <= x"31";
                    if ( BCD_left < "01100100" ) then -- if < 100
                        memAddress <= I;
                        tmp_mem_write <= '1';
                        mem_hold <= '0';
                        mem_ret_state <= BCD_tens;
                        memWrite <= BCD_total;
                        BCD_total <= "00000000";
                        current_state <= memA;
                    else
                        BCD_left <= BCD_left - "01100100"; -- BCD_left -= 100
                        BCD_total <= BCD_total + "00000001"; -- total++
                    end if;
                when BCD_tens =>
                    cpu_state <= x"32";
                    if ( BCD_left < "00001010" ) then -- if < 10
                        memAddress <= I + "000000000001";
                        mem_ret_state <= BCD_ones;
                        memWrite <= BCD_total;
                        BCD_total <= "00000000";
                        current_state <= memA;
                    else
                        BCD_left <= BCD_left - "00001010"; -- BCD_left -= 10
                        BCD_total <= BCD_total + "00000001"; -- total++
                    end if;
                when BCD_ones =>
                    cpu_state <= x"33";
                    if ( BCD_left = "00000000" ) then
                        memAddress <= I + "000000000010";
                        mem_ret_state <= fetchA;
                        memWrite <= BCD_total;
                        BCD_total <= "00000000";
                        current_state <= memA;
                    else
                        BCD_left <= BCD_left - "00000001"; -- BCD_left -= 1
                        BCD_total <= BCD_total + "00000001"; -- total++
                    end if;
                when O_LD_I_X =>
                    cpu_state <= x"34";
                    memAddress <= I + ( "00000000" & x );
                    tmp_mem_write <= '1';
                    mem_hold <= '0';
                    memWrite <= cpu_REG(to_integer(unsigned( x )));
                    x <= x - "0001";
                    current_state <= memA;
                    if( x = "0000" ) then
                        mem_ret_state <= fetchA;
                    else
                        mem_ret_state <= O_LD_I_X;
                    end if;
                when O_LD_X_I =>
                    cpu_state <= x"35";
                    reg_copy_num <= "0000";
                    multi_address <= I + "000000000001";
                    memAddress <= I;
                    tmp_mem_write <= '0';
                    mem_hold <= '0';
                    mem_ret_state <= pull_reg;
                    current_state <= memA;
                when pull_reg =>
                    cpu_state <= x"36";
                    cpu_REG( to_integer( unsigned ( reg_copy_num ) ) ) <= mem_ret_data;
                    memAddress <= multi_address;
                    multi_address <= multi_address + "000000000001";
                    reg_copy_num <= reg_copy_num + "0001";
                    
                    -- Is this conditional checking before or after increasing by 1?
                    if ( reg_copy_num = x ) then
                        current_state <= fetchA;
                    else
                        mem_ret_state <= pull_reg;
                        current_state <= memA;
                    end if;
                when others =>
                    cpu_state <= x"37";
                    tmp_err_code <= INVALID_OP;
                    current_state <= error;
            end case;
        end if;
    end process;
end Behavioral;
