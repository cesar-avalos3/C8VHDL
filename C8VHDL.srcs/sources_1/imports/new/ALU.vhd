----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2017 02:45:10 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
-- Project Name: 
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
use IEEE.NUMERIC_STD.ALL;
use work.types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( clk, reset: in std_logic;
           opcode_in: in OPCODE;
           input_one, input_two: in std_logic_vector(3 downto 0);
           carry_flag, shift_flag, borrow_flag: out std_logic;
           output: out std_logic_vector(3 downto 0));
end ALU;

-- We have 16 bit instructions going through here

architecture Behavioral of ALU is

signal tempCheck: std_logic_vector(4 downto 0);
signal q: std_logic_vector(15 downto 0);
-- opcodes O_MOV, O_OR, O_AND, O_XOR, O_ADD, O_SUB, O_SHIFT_R, O_SHIFT_L, O_GT, O_EQ, O_PLUSPLUS
begin
    process(opcode_in) 
    begin
        case opcode_in is
            when O_OR =>
                carry_flag <= '0';
                output <= input_one OR input_two;
            when O_AND =>
                carry_flag <= '0';
                output <= input_one AND input_two;
            when O_XOR =>
                carry_flag <= '0';
                output <= input_one XOR input_two;
            when O_ADD =>
                tempCheck <= std_logic_vector(unsigned('0'&input_one) + unsigned('0'&input_two));
                if(tempCheck(3) = '1') then
                    carry_flag <= '1';
                else
                    carry_flag <= '0';
                end if;
                output <= tempCheck(3 downto 0);
           when O_SUB =>
                if(input_one < input_two) then
                    output <= "0000";
                else
                    output <= std_logic_vector(unsigned(input_one) - unsigned(input_two));
                end if;
            when O_SHIFT_R =>
                shift_flag <= input_one(0);
                output <= std_logic_vector(shift_right(unsigned(input_one),to_integer(unsigned(input_two))));
            when O_SHIFT_L =>
                shift_flag <= input_one(0);
                output <= std_logic_vector(shift_left(unsigned(input_one),to_integer(unsigned(input_two))));
            when O_GT =>
                if(input_one > input_two) then
                    output <= "0001";
                else
                    output <= "0000";
                end if;
            when O_EQ =>
                if(input_one = input_two) then
                    output <= "0001";
                else
                    output <= "0000";
                end if;
        end case;
    end process;
end Behavioral;