library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_sync is
port(
clk, reset: in std_logic;
hsync, vsync: out std_logic;
video_on, p_tick: out std_logic;
-- pixel_x and pixel_y tells us 
-- where in particular the beam is
pixel_x, pixel_y: out std_logic_vector (9 downto 0));
end vga_sync;

architecture arch of vga_sync is

-- VGA 640-by-480 sync parameters
constant HD: integer:=640; --horizontal display area
constant HF: integer:=16 ; --h. front porch
constant HR: integer:=96 ; --h. retrace
constant HB: integer:=48 ; --h. back porch
constant VD: integer:=480; --vertical display area
constant VF: integer:=10; --v. front porch
constant VR: integer:=2; --v. retrace
constant VB: integer:=33; --v. back porch

-- mod-2 counter
-- whenever mod2_reg is 0, mod2_next is 1 and the thing runs.
signal mod4_reg, mod2_reg, mod2_next: std_logic;
-- sync counters
signal v_count_reg, v_count_next: unsigned(9 downto 0);
signal h_count_reg, h_count_next: unsigned(9 downto 0);
-- output buffer
signal v_sync_reg, h_sync_reg: std_logic;
signal v_sync_next, h_sync_next: std_logic;
-- status signal
signal h_end, v_end, pixel_tick: std_logic;
--signal video_on: std_logic := '1';
--signal p_tick: std_logic;
--signal pixel_x: std_logic_vector(9 downto 0);
--signal pixel_y: std_logic_vector(9 downto 0);

begin
process(clk, reset) begin
	if reset='1' then
		mod4_reg <= '0';
		mod2_reg <= '0';
		v_count_reg <= (others=>'0');
		h_count_reg <= (others=>'0');
		v_sync_reg <= '0';
		h_sync_reg <= '0';
	elsif(clk'event and clk='1') then
	    video_on <= '1';
	    if(mod4_reg = '1') then
			mod2_reg <= mod2_next;
			mod4_reg <= '0';
		else
			mod4_reg <= '1';
		end if;
		v_count_reg <= v_count_next;
		h_count_reg <= h_count_next;
		v_sync_reg <= v_sync_next;
		h_sync_reg <= h_sync_next;
	end if;
end process;
-- mod-2 circuit to generate 25 MHz enable tick
	mod2_next <= not mod2_reg;
-- 25 MHz pixel tick
	pixel_tick <= '1' when mod2_reg='1' else '0';
-- status
	h_end <= '1' when h_count_reg=(HD+HF+HR+HB-1) else '0';
	v_end <= '1' when v_count_reg=(VD+VF+VR+VB-1) else '0';
-- mod-800 horizontal sync counter
process (h_count_reg, h_end, pixel_tick)
	begin
		if pixel_tick='1' then -- 25 MHz tick
			if h_end='1' then
				h_count_next <= (others=>'0');
			else
				h_count_next <= h_count_reg + 1;
			end if;
		else h_count_next <= h_count_reg;
		end if;
end process;
-- mod-525 vertical sync counter
process (v_count_reg, h_end, v_end, pixel_tick)
begin
	if pixel_tick='1' and h_end='1' then
		if (v_end='1') then 
			v_count_next <= (others=>'0');
		else v_count_next <= v_count_reg + 1; end if;
		else v_count_next <= v_count_reg;
	end if;
end process;
-- horizontal and vertical sync, buffered to avoid glitch
h_sync_next <= '0' when (h_count_reg >= (HD+HF)) and (h_count_reg <= (HD+HF+HR-1)) else '1';
v_sync_next <= '0' when (v_count_reg >= (VD+VF)) and (v_count_reg <= (VD+VF+VR-1)) else '1';
-- tells us when we are in a drawable area of the screen
video_on <= '1' when (h_count_reg<HD) and (v_count_reg<VD) else '0';
-- output signal
hsync <= h_sync_reg; 
vsync <= v_sync_reg;
pixel_x <= std_logic_vector(h_count_reg);
pixel_y <= std_logic_vector(v_count_reg);
p_tick <= pixel_tick;
end arch;