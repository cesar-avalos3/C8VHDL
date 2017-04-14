library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types.all;

entity ALU is
    Port (
           opcode_in: in OPCODE;
           clk: STD_LOGIC;
           input_one, input_two: in STD_LOGIC_VECTOR(3 downto 0);
           carry_flag, shift_flag, borrow_flag: out STD_LOGIC;
           output: out STD_LOGIC_VECTOR(3 downto 0));
end ALU;

-- We have 16 bit instructions going through here

architecture Behavioral of ALU is

signal tempCheck: STD_LOGIC_VECTOR(4 downto 0) := "00000";
signal c: STD_LOGIC := '0';
signal q: STD_LOGIC_VECTOR(3 downto 0) := "0000";
-- opcodes O_MOV, O_OR, O_AND, O_XOR, O_ADD, O_SUB, O_SHIFT_R, O_SHIFT_L, O_GT, O_EQ, O_PLUSPLUS
begin
    process(input_one, input_two, opcode_in)
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
                tempCheck <= STD_LOGIC_VECTOR(unsigned('0'&input_one) + unsigned('0'&input_two));
                if(tempCheck(3) = '1') then
                    c <= '1';
                end if;
                q <= tempCheck(3 downto 0);
           when O_SUB =>
                if(input_one < input_two) then
                    q <= "0000";
                else
                    q <= STD_LOGIC_VECTOR(unsigned(input_one) - unsigned(input_two));
                end if;
            when O_SHR =>
                shift_flag <= input_one(0);
                q <= STD_LOGIC_VECTOR(shift_right(unsigned(input_one),to_integer(unsigned(input_two))));
            when O_SHL =>
                shift_flag <= input_one(0);
                q <= STD_LOGIC_VECTOR(shift_left(unsigned(input_one),to_integer(unsigned(input_two))));
--            when O_GT =>
--               if(input_one > input_two) then
--                    q <= "0001";
--                else
--                    q <= "0000";
--                end if;
            when O_SEQUAL =>
                if(input_one = input_two) then
                    q <= "0001";
                else
                    q <= "0000";
                end if;
            when others =>
                q <= "0000";
        end case;
    end process;
    
    output <= q;
    carry_flag <= c;
    
end Behavioral;