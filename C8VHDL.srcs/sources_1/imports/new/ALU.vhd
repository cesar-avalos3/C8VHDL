library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types.all;

entity ALU is
    Port (
           opcode_in: in OPCODE;
           input_one, input_two: in std_logic_vector(3 downto 0);
           carry_flag, shift_flag, borrow_flag: out std_logic;
           output: out std_logic_vector(3 downto 0));
end ALU;

-- We have 16 bit instructions going through here

architecture Behavioral of ALU is

signal tempCheck: std_logic_vector(4 downto 0) := "00000";
signal c: std_logic := '0';
signal q: std_logic_vector(3 downto 0) := "0000";
-- opcodes O_MOV, O_OR, O_AND, O_XOR, O_ADD, O_SUB, O_SHIFT_R, O_SHIFT_L, O_GT, O_EQ, O_PLUSPLUS
begin
    process(opcode_in) 
    begin
        c <= '0';
        case opcode_in is
            when O_OR =>
                q <= input_one OR input_two;
            when O_AND =>
                q <= input_one AND input_two;
            when O_XOR =>
                q <= input_one XOR input_two;
            when O_ADD =>
                tempCheck <= std_logic_vector(unsigned('0'&input_one) + unsigned('0'&input_two));
                if(tempCheck(3) = '1') then
                    c <= '1';
                end if;
                q <= tempCheck(3 downto 0);
           when O_SUB =>
                if(input_one < input_two) then
                    q <= "0000";
                else
                    q <= std_logic_vector(unsigned(input_one) - unsigned(input_two));
                end if;
            when O_SHIFT_R =>
                shift_flag <= input_one(0);
                q <= std_logic_vector(shift_right(unsigned(input_one),to_integer(unsigned(input_two))));
            when O_SHIFT_L =>
                shift_flag <= input_one(0);
                q <= std_logic_vector(shift_left(unsigned(input_one),to_integer(unsigned(input_two))));
            when O_GT =>
                if(input_one > input_two) then
                    q <= "0001";
                else
                    q <= "0000";
                end if;
            when O_EQ =>
                if(input_one = input_two) then
                    q <= "0001";
                else
                    q <= "0000";
                end if;
            when others =>
                q <= "0000";
        end case;
    end process;
    
    process(q) begin
    output <= q;
    carry_flag <= c;
    end process;
end Behavioral;