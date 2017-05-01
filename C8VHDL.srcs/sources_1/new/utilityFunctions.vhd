library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
use IEEE.numeric_std.all;
use std.textio.all;
use work.types.all;

package utilityFunctions is
    impure function readFileToRAM(Filename: STRING) return RAM_ARRAY;
    
    impure function findOPCODE(instruction: STD_LOGIC_VECTOR(15 DOWNTO 0)) return OPCODE;
end utilityFunctions;

package body utilityFunctions is

impure function readFileToRAM(Filename: STRING) return RAM_ARRAY is
    file FileHandle         : TEXT open READ_MODE is FileName;
    variable CurrentLine    : LINE;
    variable Word           : STD_LOGIC_VECTOR(15 downto 0);
    variable Output         : RAM_ARRAY := (others => (others => '0'));
    
    begin 

    for i in 0 to 2000 loop
        exit when endfile(FileHandle);
        readline(FileHandle, CurrentLine);
        hread(CurrentLine, Word);
        Output(i) := std_logic_vector(resize(unsigned(word), 16));
   end loop;
   
   return Output;
end function;

-- findOPCODE decodes the instruction set.
impure function findOPCODE(instruction: STD_LOGIC_VECTOR(15 DOWNTO 0)) return OPCODE is
    
    variable Output : OPCODE;
    begin
    
    case instruction is
        when "0000000011100000" =>
            Output := O_CLS;
        when "0000000011101110" =>
            Output := O_RET;
        when "0000XXXX----XXXX" =>
            Output := O_SYS;
        when "0001XXXX----XXXX" =>
            Output := O_JP;
        when "0010XXXX----XXXX" =>
            Output := O_CALL;
        when "0011XXXX----XXXX" =>
            Output := O_SEBYTE;
        when "0100XXXX----XXXX" =>
            Output := O_SNEBYTE;
        when "0101XXXX----XXXX" =>
            Output := O_SEQUAL;
        when "0110XXXX----XXXX" =>
            Output := O_LDBYTE;
        when "0111XXXX----XXXX" =>
            Output := O_ADDBYTE;
        when "1000XXXX----0000" =>
            Output := O_LD;
        when "1000XXXX----0001" =>
            Output := O_OR;
        when "1000XXXX----0010" =>
            Output := O_AND;
        when "1000XXXX----0011" =>
            Output := O_XOR;
        when "1000XXXX----0100" =>
            Output := O_ADD;
        when "1000XXXX----0101" =>
            Output := O_SUB;
        when "1000XXXX----0110" =>
            Output := O_SHR;
        when "1000XXXX----0111" =>
            Output := O_SUBN;
        when "1000XXXX----1110" =>
            Output := O_SHL;
        when "1001XXXX----0000" =>
            Output := O_SNE;
        when "1010XXXX----XXXX" =>
            Output := O_LDI;
        when "1011XXXX----XXXX" =>
            Output := O_JPV0;
        when "1100XXXX----XXXX" =>
            Output := O_RND;
        when "1101XXXX----XXXX" =>
            Output := O_DRW;
        when "1110XXXX10011110" =>
            Output := O_SKP;
        when "1110XXXX10100001" =>
            Output := O_SKNP;
        when "1111XXXX00000111" =>
            Output := O_LDVXDT;
        when "1111XXXX00001010" =>
            Output := O_LDVXK;
        when "1111XXXX00010101" =>
            Output := O_LDDTVX;
        when "1111XXXX00011000" =>
            Output := O_LDSTVX;
        when "1111XXXX00011110" =>
            Output := O_ADDI;
        when "1111XXXX00101001" =>
            Output := O_LDF;
        when "1111XXXX00110011" =>
            Output := O_LDB;
        when "1111XXXX01010101" =>
            Output := O_LDI;
        when "1111XXXX01100110" =>
            Output := O_LDVXI;
        when others =>
            Output := O_NONE;
    end case;
    
    
    return Output;
end function;
end package body;