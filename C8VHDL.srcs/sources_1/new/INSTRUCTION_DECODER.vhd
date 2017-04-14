
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.types.all;

entity INSTRUCTION_DECODER is
    Port (
          clk: in std_logic;
          instruction_in: in  STD_LOGIC_VECTOR(15 DOWNTO 0);
          opcode_out    : out OPCODE);
end INSTRUCTION_DECODER;


architecture Behavioral of INSTRUCTION_DECODER is

signal opcode_out_sig: OPCODE;

begin
    process (instruction_in) begin
                   if(instruction_in =  "0000000011100000" ) then 
                    opcode_out_sig <= O_CLS;
                elsif(instruction_in =  "0000000011101110" ) then 
                    opcode_out_sig <= O_RET;
                elsif(instruction_in(15 downto 12) =  "0000" ) then 
                    opcode_out_sig <= O_SYS;
                elsif(instruction_in(15 downto 12) =  "0001" ) then 
                    opcode_out_sig <= O_JP;
                elsif(instruction_in(15 downto 12) =  "0010" ) then 
                    opcode_out_sig <= O_CALL;
                elsif(instruction_in(15 downto 12) =  "0011" ) then 
                    opcode_out_sig <= O_SEBYTE;
                elsif(instruction_in(15 downto 12) =  "0110" ) then 
                    opcode_out_sig <= O_SNEBYTE;
                elsif(instruction_in(15 downto 12) =  "0101" ) then 
                    opcode_out_sig <= O_SEQUAL;
                elsif(instruction_in(15 downto 12) =  "0110" ) then 
                    opcode_out_sig <= O_LDBYTE;
                elsif(instruction_in(15 downto 12) =  "0111" ) then 
                    opcode_out_sig <= O_ADDBYTE;
                elsif(instruction_in(15 downto 12) = "1000" ) then 
                       if(instruction_in(3 downto 0) = "0000") then
                            opcode_out_sig <= O_LD;
                    elsif(instruction_in(3 downto 0) = "0001") then
                            opcode_out_sig <= O_OR;
                    elsif(instruction_in(3 downto 0) = "0010") then
                            opcode_out_sig <= O_AND;
                    elsif(instruction_in(3 downto 0) = "0011") then
                            opcode_out_sig <= O_XOR;
                    elsif(instruction_in(3 downto 0) = "0100") then
                            opcode_out_sig <= O_ADD;
                    elsif(instruction_in(3 downto 0) = "0101") then
                            opcode_out_sig <= O_SUB;
                    elsif(instruction_in(3 downto 0) = "0110") then
                            opcode_out_sig <= O_SHR;
                    elsif(instruction_in(3 downto 0) = "0111") then
                            opcode_out_sig <= O_SUBN;
                    elsif(instruction_in(3 downto 0) = "1110") then
                            opcode_out_sig <= O_SHL;
                    end if;
                elsif(instruction_in(15 downto 12) = "1001" ) then 
                    opcode_out_sig <= O_SNE;
                elsif(instruction_in(15 downto 12) = "1010" ) then 
                    opcode_out_sig <= O_LDI;
                elsif(instruction_in(15 downto 12) = "1011" ) then 
                    opcode_out_sig <= O_JPV0;
                elsif(instruction_in(15 downto 12) = "1100" ) then 
                    opcode_out_sig <= O_RND;
                elsif(instruction_in(15 downto 12) = "1101" ) then 
                    opcode_out_sig <= O_DRW;
                elsif(instruction_in(15 downto 12) = "1110" ) then
                    if(instruction_in(7 downto 0) = "10011110") then
                        opcode_out_sig <= O_SKP;
                    elsif(instruction_in(7 downto 0) = "10100001") then
                        opcode_out_sig <= O_SKNP;
                    end if;
                elsif(instruction_in(15 downto 12) = "1111" ) then
                    if(instruction_in(7 DOWNTO 0) =  "00000111" ) then 
                        opcode_out_sig <= O_LDVXDT;
                    elsif(instruction_in(7 DOWNTO 0) =  "00001010" ) then 
                        opcode_out_sig <= O_LDVXK;
                    elsif(instruction_in(7 DOWNTO 0) =  "00010101" ) then 
                        opcode_out_sig <= O_LDDTVX;
                    elsif(instruction_in(7 DOWNTO 0) =  "00011000" ) then 
                        opcode_out_sig <= O_LDSTVX;
                    elsif(instruction_in(7 DOWNTO 0) =  "00011110" ) then 
                        opcode_out_sig <= O_ADDI;
                    elsif(instruction_in(7 DOWNTO 0) =  "00101001" ) then 
                        opcode_out_sig <= O_LDF;
                    elsif(instruction_in(7 DOWNTO 0) =  "00110011" ) then 
                        opcode_out_sig <= O_LDB;
                    elsif(instruction_in(7 DOWNTO 0) =  "01010101" ) then 
                        opcode_out_sig <= O_LDI;
                    elsif(instruction_in(7 DOWNTO 0) =  "01100110" ) then 
                        opcode_out_sig <= O_LDVXI;
                    end if;
                else
                    opcode_out_sig <= O_NONE;
                end if;
    end process;
 
opcode_out <= opcode_out_sig;
 
end Behavioral;
