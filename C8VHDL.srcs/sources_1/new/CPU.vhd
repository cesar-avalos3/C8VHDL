----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2017 04:12:59 AM
-- Design Name: 
-- Module Name: CPU - Behavioral
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
use work.types.all;

entity CPU is
   Port( clk, reset: in std_logic;
         inputs: in std_logic_vector(7 downto 0);
         registers_cpu: in registers;
         output: out std_logic_vector(3 downto 0));
end CPU;

architecture Behavioral of CPU is

component ALU is
  Port (
       opcode_in: in OPCODE;
       input_one, input_two: in std_logic_vector(3 downto 0);
       carry_flag, shift_flag, borrow_flag: out std_logic;
       output: out std_logic_vector(3 downto 0));
end component;

signal opcode_sig: OPCODE;
signal input_one,input_two, result_ALU: std_logic_vector(3 downto 0);
signal carry_flag, shift_flag, borrow_flag: std_logic;
begin

oop: ALU port map(opcode_in => opcode_sig, input_one => input_one, input_two => input_two, 
                  carry_flag => carry_flag, shift_flag => shift_flag, borrow_flag => borrow_flag, 
                  output => result_alu);

process(clk, reset) begin
    if(rising_edge(clk)) then
        --fetch instruction
        --debug try to see what happens
        input_one <= inputs(3 downto 0);
        input_two <= inputs(7 downto 4);
        opcode_sig <= O_ADD;
    elsif(falling_edge(clk)) then
        opcode_sig <= O_NONE;
    end if;
end process;

        output <= result_alu;

end Behavioral;
