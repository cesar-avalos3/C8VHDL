-- Adapted from Albert Fazakas who adapted from Alec Wyen and Mihaita Nagy
-- VGA controller sample demo
-- Copyright 2014 Digilent, Inc.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vga_controller is
    Port ( memRead : in STD_LOGIC_VECTOR (7 downto 0);
           memWrite : out STD_LOGIC_VECTOR (7 downto 0);
           memAddress : out STD_LOGIC_VECTOR (11 downto 0);
           mem_valid : out STD_LOGIC;
           mem_write : out STD_LOGIC;
           mem_hold : out STD_LOGIC;
           mem_done : in STD_LOGIC;
           active : out STD_LOGIC;
           clk : in STD_LOGIC;
           sys_clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sys_reset : in STD_LOGIC;
           
           VGA_HS_O : out  STD_LOGIC;
           VGA_VS_O : out  STD_LOGIC;
           VGA_RED_O    : out  STD_LOGIC_VECTOR (3 downto 0);
           VGA_GREEN_O  : out  STD_LOGIC_VECTOR (3 downto 0);
           VGA_BLUE_O   : out  STD_LOGIC_VECTOR (3 downto 0)
           
           );
end vga_controller;

architecture Behavioral of vga_controller is

signal requestLine : STD_LOGIC_VECTOR (7 downto 0);
signal previousRequestBuffer : STD_LOGIC_VECTOR( 0 downto 0 );
signal requestBuffer : STD_LOGIC_VECTOR( 0 downto 0 ) := "0";

type VBUFF is array( 1 downto 0 ) of STD_LOGIC_VECTOR (63 downto 0);
signal vga_VBUFF : VBUFF :=("0000000000000000000000000000000000000000000000000000000000000000",
                            "0000000000000000000000000000000000000000000000000000000000000000");

-------------------------------------------------------------

-- Constants for various VGA Resolutions

-------------------------------------------------------------

--***640x480@60Hz***--  
constant FRAME_WIDTH : natural := 640;
constant FRAME_HEIGHT : natural := 480;

constant H_FP : natural := 16; --H front porch width (pixels)
constant H_PW : natural := 96; --H sync pulse width (pixels)
constant H_MAX : natural := 800; --H total period (pixels)
--
constant V_FP : natural := 10; --V front porch width (lines)
constant V_PW : natural := 2; --V sync pulse width (lines)
constant V_MAX : natural := 525; --V total period (lines)

constant H_POL : std_logic := '0';
constant V_POL : std_logic := '0';


-------------------------------------------------------------------------

-- Signal Declarations

-------------------------------------------------------------------------


-------------------------------------------------------------------------

-- VGA Controller specific signals: Counters, Sync, R, G, B

-------------------------------------------------------------------------
-- Pixel clock, in this case 25 MHz
signal pxl_clk : std_logic := '0';

-- Horizontal and Vertical counters
signal h_cntr_reg : std_logic_vector(11 downto 0) := (others =>'0');
signal v_cntr_reg : std_logic_vector(11 downto 0) := (others =>'0');

-- Pipe Horizontal and Vertical Counters
signal h_cntr_reg_dly   : std_logic_vector(11 downto 0) := (others => '0');
signal v_cntr_reg_dly   : std_logic_vector(11 downto 0) := (others => '0');

-- Horizontal and Vertical Sync
signal h_sync_reg : std_logic := not(H_POL);
signal v_sync_reg : std_logic := not(V_POL);
-- Pipe Horizontal and Vertical Sync
signal h_sync_reg_dly : std_logic := not(H_POL);
signal v_sync_reg_dly : std_logic :=  not(V_POL);

-- VGA R, G and B signals coming from the main multiplexers
signal vga_red_cmb   : std_logic_vector(3 downto 0);
signal vga_green_cmb : std_logic_vector(3 downto 0);
signal vga_blue_cmb  : std_logic_vector(3 downto 0);
--The main VGA R, G and B signals, validated by active
signal vga_red    : std_logic_vector(3 downto 0);
signal vga_green  : std_logic_vector(3 downto 0);
signal vga_blue   : std_logic_vector(3 downto 0);

signal vga_red_reg    : std_logic_vector(3 downto 0);
signal vga_green_reg  : std_logic_vector(3 downto 0);
signal vga_blue_reg   : std_logic_vector(3 downto 0);

signal tmp_mem_write : std_logic;
signal mem_ret_data : std_logic_vector(7 downto 0);

signal mhz50 : std_logic := '0';

type state is ( waiting, get0, get1, get2, get3, 
                get4, get5, get6, get7, memA, memB );
signal mem_ret_state, current_state : state;

begin

mem_write <= tmp_mem_write;

    process( sys_clk, sys_reset )
    begin
        if( sys_reset = '1' ) then
            active <= '0';
            memWrite <= ( others => '0' );
            memAddress <= ( others => '0' );
            mem_valid <= '0';
            tmp_mem_write <= '0';
            mem_hold <= '0';
            current_state <= waiting;
            mem_ret_state <= waiting;
        elsif ( rising_edge( sys_clk ) ) then
            current_state <= current_state;
            case current_state is
                when waiting =>
                    if( previousRequestBuffer /= requestBuffer ) then
                        previousRequestBuffer <= requestBuffer;
                        memAddress <= x"F" & requestLine( 4 downto 0 ) & "000";
                        tmp_mem_write <= '0';
                        mem_hold <= '1';
                        mem_ret_state <= get0;
                        current_state <= memA;
                    end if;
                when get0 =>
                    vga_VBUFF(to_integer( unsigned ( requestBuffer ) ))( 7 downto 0 ) <= mem_ret_data;
                    memAddress <= x"F" & requestLine( 4 downto 0 ) & "001";
                    mem_ret_state <= get1;
                    current_state <= memA;
                when get1 =>
                    vga_VBUFF(to_integer( unsigned ( requestBuffer ) ))( 15 downto 8 ) <= mem_ret_data;
                    memAddress <= x"F" & requestLine( 4 downto 0 ) & "010";
                    mem_ret_state <= get2;
                    current_state <= memA;
                when get2 =>
                    vga_VBUFF(to_integer( unsigned ( requestBuffer ) ))( 23 downto 16 ) <= mem_ret_data;
                    memAddress <= x"F" & requestLine( 4 downto 0 ) & "011";
                    mem_ret_state <= get3;
                    current_state <= memA;
                when get3 =>
                    vga_VBUFF(to_integer( unsigned ( requestBuffer ) ))( 31 downto 24 ) <= mem_ret_data;
                    memAddress <= x"F" & requestLine( 4 downto 0 ) & "100";
                    mem_ret_state <= get4;
                    current_state <= memA;
                when get4 =>
                    vga_VBUFF(to_integer( unsigned ( requestBuffer ) ))( 39 downto 32 ) <= mem_ret_data;
                    memAddress <= x"F" & requestLine( 4 downto 0 ) & "101";
                    mem_ret_state <= get5;
                    current_state <= memA;
                when get5 =>
                    vga_VBUFF(to_integer( unsigned ( requestBuffer ) ))( 47 downto 40 ) <= mem_ret_data;
                    memAddress <= x"F" & requestLine( 4 downto 0 ) & "110";
                    mem_ret_state <= get6;
                    current_state <= memA;
                when get6 =>
                    vga_VBUFF(to_integer( unsigned ( requestBuffer ) ))( 55 downto 48 ) <= mem_ret_data;
                    memAddress <= x"F" & requestLine( 4 downto 0 ) & "111";
                    mem_ret_state <= get7;
                    current_state <= memA;
                when get7 =>
                    vga_VBUFF(to_integer( unsigned ( requestBuffer ) ))( 63 downto 56 ) <= mem_ret_data;
                    mem_hold <= '0';
                    current_state <= waiting;
                when memA =>
                    if ( mem_done = '0' ) then
                        mem_valid <= '1';
                        current_state <= memB;
                    end if;
                when memB =>
                    if( mem_done = '1' ) then
                        if ( tmp_mem_write = '0' ) then
                            mem_ret_data <= memRead;
                        end if;
                        
                        mem_valid <= '0';
                        current_state <= mem_ret_state;
                    end if;
            end case;
        end if;
    end process;


process( clk )
begin
    if( rising_edge( clk )) then
        mhz50 <= not mhz50;
    end if;
end process;

process( mhz50 )
begin
    if( rising_edge( mhz50 )) then
        pxl_clk <= not pxl_clk;
    end if;
end process;
  

---------------------------------------------------------------

-- Generate Horizontal, Vertical counters and the Sync signals

---------------------------------------------------------------
  -- Horizontal counter
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (h_cntr_reg = (H_MAX - 1)) then
        h_cntr_reg <= (others =>'0');
      else
        h_cntr_reg <= h_cntr_reg + 1;
      end if;
    end if;
  end process;
  -- Vertical counter
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if ((h_cntr_reg = (H_MAX - 1)) and (v_cntr_reg = (V_MAX - 1))) then
        v_cntr_reg <= (others =>'0');
      elsif (h_cntr_reg = (H_MAX - 1)) then
        v_cntr_reg <= v_cntr_reg + 1;
      end if;
    end if;
  end process;
  -- Horizontal sync
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (h_cntr_reg >= (H_FP + FRAME_WIDTH - 1)) and (h_cntr_reg < (H_FP + FRAME_WIDTH + H_PW - 1)) then
        h_sync_reg <= H_POL;
      else
        h_sync_reg <= not(H_POL);
      end if;
    end if;
  end process;
  -- Vertical sync
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (v_cntr_reg >= (V_FP + FRAME_HEIGHT - 1)) and (v_cntr_reg < (V_FP + FRAME_HEIGHT + V_PW - 1)) then
        v_sync_reg <= V_POL;
      else
        v_sync_reg <= not(V_POL);
      end if;
    end if;
  end process;
  
  
  process( pxl_clk )
    variable xspot : std_logic_vector(11 downto 0);
    variable yspot : std_logic_vector(11 downto 0);
    variable which_buf : std_logic_vector( 0 downto 0 );
  begin
    which_buf := not requestBuffer;
    vga_red <= "0000";
    vga_blue <= "0000";
    vga_green <= "0000";
    if( rising_edge(pxl_clk) ) then
        if ( h_cntr_reg >= (H_FP + 64)) and (h_cntr_reg < (H_FP + FRAME_WIDTH - 64) ) then
            if( v_cntr_reg >= (V_FP + 112)) and (v_cntr_reg < (V_FP + FRAME_HEIGHT - 112)) then
                xspot := h_cntr_reg - ( H_FP + 64 );
                yspot := v_cntr_reg - ( V_FP + 112 );
                if( ( xspot = x"000" ) and ( yspot( 2 downto 0 ) = "000") ) then
                    requestBuffer <= which_buf;
                    which_buf := not which_buf;
                    yspot := "0000000" & yspot( 7 downto 3 );
                    yspot := yspot + 1;
                    requestLine <= "000" & yspot( 4 downto 0 );
                end if;
                
                if( vga_VBUFF( to_integer( unsigned ( which_buf ) ))( to_integer( unsigned ( xspot( 11 downto 3 ) ) )) = '1' ) then
                    vga_green <= "1111";
                end if;
            end if;
        end if;
    end if;
  end process;

 vga_red_cmb <= vga_red;
 vga_green_cmb <= vga_green;
 vga_blue_cmb <= vga_blue;
 

 -- Register Outputs
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then

      v_sync_reg_dly <= v_sync_reg;
      h_sync_reg_dly <= h_sync_reg;
      vga_red_reg    <= vga_red_cmb;
      vga_green_reg  <= vga_green_cmb;
      vga_blue_reg   <= vga_blue_cmb;      
    end if;
  end process;

  -- Assign outputs
  VGA_HS_O     <= h_sync_reg_dly;
  VGA_VS_O     <= v_sync_reg_dly;
  VGA_RED_O    <= vga_red_reg;
  VGA_GREEN_O  <= vga_green_reg;
  VGA_BLUE_O   <= vga_blue_reg;

end Behavioral;
