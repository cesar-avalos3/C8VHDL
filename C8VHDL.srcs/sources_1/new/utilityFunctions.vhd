library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
use IEEE.numeric_std.all;
use std.textio.all;
use work.types.all;

package utilityFunctions is
    impure function readFileToRAM(Filename: STRING) return RAM_ARRAY;
end utilityFunctions;

package body utilityFunctions is

impure function readFileToRAM(Filename: STRING) return RAM_ARRAY is
    file FileHandle         : TEXT open READ_MODE is FileName;
    variable CurrentLine    : LINE;
    variable Word           : STD_LOGIC_VECTOR(15 downto 0);
    variable Output         : RAM_ARRAY := (others => (others => '0'));
    
    begin for i in 0 to 2000 loop
        exit when endfile(FileHandle);
        readline(FileHandle, CurrentLine);
        hread(CurrentLine, Word);
        Output(i) := std_logic_vector(resize(unsigned(word), 16));
   end loop;
   
   return Output;
end function;

end package body;