library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.types.all;
use work.utilityFunctions.all;

entity CPU is
   Port( clk, reset: in STD_LOGIC;
         -- inputs for debugging purposes only
         inputs: in STD_LOGIC_VECTOR(7 downto 0);
         output: out STD_LOGIC_VECTOR(7 downto 0);
         instruction_debug: out STD_LOGIC_VECTOR(15 DOWNTO 0);
         programCounter_debug: out STD_LOGIC_VECTOR(11 DOWNTO 0);
         registers_debug: out REGISTERS;
         opcode_debug: out OPCODE);
end CPU;

architecture Behavioral of CPU is

component ALU is
  Port (
       registers_cpu: inout REGISTERS;
       opcode_in: in OPCODE;
       clk, enable: in STD_LOGIC;
       inputs:  in STD_LOGIC_VECTOR(15 DOWNTO 0);
       input_one, input_two: in STD_LOGIC_VECTOR(7 downto 0);
       carry_flag, shift_flag, borrow_flag: out std_logic;
       output: out STD_LOGIC_VECTOR(7 downto 0));
end component;

component programCounter is
    Port ( clk, enable, load, increment, reset: IN STD_LOGIC;
           dataBus   : IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
           addressBus: OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
           );
end component;

component RAM is
    PORT (
    enable, reset, r_w:     IN  STD_LOGIC;
    address:    IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
    dataIn:     IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
    dataOut:    OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;


component INSTRUCTION_DECODER is
    Port (clk: in std_logic;
          instruction_in: in  STD_LOGIC_VECTOR(15 DOWNTO 0);
          opcode_out    : out OPCODE);
end component;


component REGISTERS_16 is
    Port ( clk, reset, write_In: IN STD_LOGIC;
         address_in_A: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
         address_in_B: IN STD_LOGIC_VECTOR(3 DOWNTO 0);        
         dataIn_A: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
         DEBUG_REG: OUT REGISTERS;
         Data_Out_A, Data_Out_B: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
         );
end component;


-- ALU Signals
signal opcode_sig: OPCODE;
signal work_sig, alu_enable: STD_LOGIC :='0';
signal input_one,input_two, result_ALU: STD_LOGIC_VECTOR(7 downto 0);
signal carry_flag, shift_flag, borrow_flag: STD_LOGIC;
signal DEBUG_REG: REGISTERS;

-- PC signals
signal enable_pc, load_pc, increment_pc, reset_pc: STD_LOGIC;
signal dataBus_pc, addressBus_pc: STD_LOGIC_VECTOR(11 downto 0);

-- RAM signals
signal address_ram: STD_LOGIC_VECTOR(11 DOWNTO 0);
signal enable_ram, reset_ram, r_w_ram:  STD_LOGIC := '0';
signal dataOut_ram, dataIn_ram: STD_LOGIC_VECTOR(15 DOWNTO 0);

-- DECODER signals
signal opcode_out : opcode;
signal decoder_in : std_logic_vector(15 downto 0);

-- REGISTERS signals
signal write_enable_register: STD_LOGIC;
signal address_A_register, address_B_register: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal data_write_in_register, register_x, register_y: STD_LOGIC_VECTOR(7 DOWNTO 0);

-- CPU signals
signal registers_cpu, registers_alu : registers := (others => (others => '0'));
signal stack_cpu: stack;
signal current_pc_state, next_pc_state : CPU_STATE;

signal counter: STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";

begin

ALU_f: ALU port map(opcode_in => opcode_sig, clk => clk, enable => alu_enable, inputs => dataOut_ram, input_one => input_one, input_two => input_two, 
                  carry_flag => carry_flag, shift_flag => shift_flag, borrow_flag => borrow_flag, 
                  output => result_alu, registers_cpu => registers_alu);


PC_f:  PROGRAMCOUNTER port map(enable => enable_pc, load => load_pc, increment => increment_pc, clk => clk,
                               reset => reset, dataBus => dataBus_pc, addressBus => addressBus_pc);

RAM_f: RAM port map(address => address_ram, enable => enable_ram, reset => reset, r_w => r_w_ram, dataIn => dataIn_ram, dataOut => dataOut_ram);

DECODER_f: INSTRUCTION_DECODER port map(clk => clk, instruction_in => dataOut_ram, opcode_out => opcode_sig);

REGISTERS_f: REGISTERS_16 port map(DEBUG_REG => registers_debug, clk => clk, reset => reset, write_In => write_enable_register, address_in_A => address_A_register, address_in_B => address_B_register, dataIn_A => data_write_in_register, Data_Out_A => register_x, Data_Out_B => register_y);

process(clk, reset) begin
    if(reset = '1') then
         counter <= "00";
         for i in 0 to 15 loop
             registers_cpu(i) <= "00000000";
         end loop;
        --Something here
    elsif(rising_edge(clk)) then
        -- first cycle is fetch instructions and prepare for ALU
        -- Data path begins here, this is temporary will probably
        -- make another component that will be instanced by the CPU
        if(counter = "00") then
          write_enable_register <= '0';
          alu_enable <= '0';
          reset_ram <= '0';
          reset_pc  <= '0';
          increment_pc <= '1';
          enable_ram <= '1';
          enable_pc <= '1';
          load_pc <= '0';
          r_w_ram <= '1';
          counter <= "01";
        elsif(counter = "01") then -- Testing ADDITION
          address_A_register <= dataOut_ram(11 DOWNTO 8);
          address_B_register <= dataOut_ram(7 DOWNTO 4);

          write_enable_register <= '1';
          increment_pc <= '0';
          alu_enable <= '1';
          counter <= "00";
        else
        end if;
    end if;
end process;

data_write_in_register <= result_alu;  -- Testing ADDITION
registers_debug <= registers_cpu;
address_ram <= addressBus_pc;
input_one <= register_x;
input_two <= register_y;    
instruction_debug <= dataOut_ram;
programCounter_debug <= addressBus_pc;
output <= result_alu;
opcode_debug <= opcode_sig;
end Behavioral;
