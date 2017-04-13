library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.types.all;

entity CPU is
   Port( clk, reset: in STD_LOGIC;
         -- inputs for debugging purposes only
         inputs: in STD_LOGIC_VECTOR(7 downto 0);
         output: out STD_LOGIC_VECTOR(3 downto 0));
end CPU;

architecture Behavioral of CPU is

component ALU is
  Port (
       opcode_in: in OPCODE;
       input_one, input_two: in STD_LOGIC_VECTOR(3 downto 0);
       carry_flag, shift_flag, borrow_flag: out std_logic;
       output: out STD_LOGIC_VECTOR(3 downto 0));
end component;

component programCounter is
    Port ( clk, enable, load, increment, reset: IN STD_LOGIC;
           dataBus   : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
           addressBus: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
           );
end component;

-- ALU Signals
signal opcode_sig: OPCODE;
signal input_one,input_two, result_ALU: STD_LOGIC_VECTOR(3 downto 0);
signal carry_flag, shift_flag, borrow_flag: STD_LOGIC;

-- PC signals
signal enable_pc, load_pc, increment_pc, reset_pc: STD_LOGIC;
signal dataBus_pc, addressBus_pc: STD_LOGIC_VECTOR(15 downto 0);

-- CPU signals
signal registers_cpu : registers;
signal stack_cpu: stack;

begin

ALU_f: ALU port map(opcode_in => opcode_sig, input_one => input_one, input_two => input_two, 
                  carry_flag => carry_flag, shift_flag => shift_flag, borrow_flag => borrow_flag, 
                  output => result_alu);


PC_f:  programCounter port map(enable => enable_pc, load => load_pc, increment => increment_pc, clk => clk,
                               reset => reset_pc, dataBus => dataBus_pc, addressBus => addressBus_pc);

process(clk, reset) begin
    if(rising_edge(clk)) then
        --fetch instruction
    elsif(falling_edge(clk)) then
        opcode_sig <= O_NONE;
    end if;
end process;

        output <= result_alu;

end Behavioral;
