library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vga_controller is
    Port ( memRead : in STD_LOGIC_VECTOR (7 downto 0);
           memWrite : out STD_LOGIC_VECTOR (7 downto 0);
           memAddress : out STD_LOGIC_VECTOR (11 downto 0);
           mem_valid : out STD_LOGIC;
           mem_write : out STD_LOGIC;
           mem_hold : out STD_LOGIC;
           mem_done : in STD_LOGIC;
           rgb: out STD_LOGIC_VECTOR(2 DOWNTO 0);
           hsync: out STD_LOGIC;
           vsync: out STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end vga_controller;

architecture Behavioral of vga_controller is

signal pixel_x, pixel_y: STD_LOGIC_VECTOR(9 DOWNTO 0);
signal video_on, p_tick: STD_LOGIC;
signal line_memory: STD_LOGIC_VECTOR(31 DOWNTO 0);

component vga_sync is
  port (clk,   reset: in std_logic;
        hsync, vsync: out std_logic;
        video_on, p_tick: out std_logic;
        pixel_x, pixel_y: out std_logic_vector (9 downto 0));
end component;

begin

    vga_sync_f: vga_sync port map(clk => clk,
                         reset => reset,
                         hsync => hsync,
                         vsync => vsync,
                         video_on => video_on,
                         p_tick => p_tick,
                         pixel_x => pixel_x,
                         pixel_y => pixel_y);

    -- P_tick is the pixel tick, each time the beam
    -- is over a pixel, this pixel tick will activate
    process(p_tick) begin
      if rising_edge(p_tick) then
        -- As dummy video out we will draw skinny columns
        -- of white pixels.
        if (unsigned(pixel_x) mod 2) = '0' then
          rgb <= "111";
        else
          rgb <= "000";
        end if;
      end if;
    end process;


    -- don't have to write anything to the buffer from here
    memWrite <= ( others => '0' );
    memAddress <= ( others => '0' );
    mem_valid <= '0';
    mem_write <= '0';
    mem_hold <= '0';

end Behavioral;
