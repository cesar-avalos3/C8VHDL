// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Tue Apr 25 22:26:47 2017
// Host        : 2002-13 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               H:/EECS_443_project/C8VHDL/Chip8_cur_BAK/chip8/chip8.sim/sim_1/synth/timing/chip_8_TB_A_time_synth.v
// Design      : chip_8A_board
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

(* NotValidForBitStream *)
module chip_8A_board
   (keyPad,
    gameSelect,
    clk,
    reset,
    err_code,
    heart_beat,
    buzz,
    mapped_out);
  input [15:0]keyPad;
  input [3:0]gameSelect;
  input clk;
  input reset;
  output [2:0]err_code;
  output heart_beat;
  output buzz;
  output [7:0]mapped_out;

  wire I0;
  wire [15:0]RAND_reg;
  wire buzz;
  wire buzz_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]err_code;
  wire [1:0]err_code_OBUF;
  wire [3:0]gameSelect;
  wire [3:0]gameSelect_IBUF;
  wire heart_beat;
  wire heart_beat_OBUF;
  wire [15:0]keyPad;
  wire [15:0]keyPad_IBUF;
  wire [7:0]mapped_out;
  wire [7:0]mapped_out_OBUF;
  wire [11:0]memAddress;
  wire [7:0]memRead;
  wire [7:0]memRead__0;
  wire [7:0]memWrite;
  wire mem_done;
  wire mem_valid;
  wire mem_write;
  wire my_core_n_0;
  wire my_core_n_1;
  wire my_core_n_3;
  wire my_mem_controller_n_1;
  wire my_mem_controller_n_10;
  wire my_mem_controller_n_11;
  wire my_mem_controller_n_12;
  wire my_mem_controller_n_13;
  wire my_mem_controller_n_14;
  wire my_mem_controller_n_15;
  wire my_mem_controller_n_16;
  wire my_mem_controller_n_17;
  wire my_mem_controller_n_18;
  wire my_mem_controller_n_19;
  wire my_mem_controller_n_20;
  wire my_mem_controller_n_3;
  wire my_mem_controller_n_38;
  wire my_mem_controller_n_4;
  wire my_mem_controller_n_5;
  wire my_mem_controller_n_6;
  wire my_mem_controller_n_7;
  wire my_mem_controller_n_8;
  wire my_mem_controller_n_9;
  wire my_time_keeper_n_10;
  wire my_time_keeper_n_11;
  wire my_time_keeper_n_12;
  wire my_time_keeper_n_13;
  wire my_time_keeper_n_14;
  wire my_time_keeper_n_2;
  wire my_time_keeper_n_5;
  wire my_time_keeper_n_7;
  wire my_time_keeper_n_8;
  wire my_time_keeper_n_9;
  wire reset;
  wire reset_IBUF;
  wire s_TIME_mem_hold;
  wire s_TIME_mem_valid;
  wire s_TIME_mem_write;
  wire s_sys_reset;

initial begin
 $sdf_annotate("chip_8_TB_A_time_synth.sdf",,,,"tool_control");
end
  OBUF buzz_OBUF_inst
       (.I(buzz_OBUF),
        .O(buzz));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \err_code_OBUF[0]_inst 
       (.I(err_code_OBUF[0]),
        .O(err_code[0]));
  OBUF \err_code_OBUF[1]_inst 
       (.I(err_code_OBUF[1]),
        .O(err_code[1]));
  OBUF \err_code_OBUF[2]_inst 
       (.I(1'b0),
        .O(err_code[2]));
  IBUF \gameSelect_IBUF[0]_inst 
       (.I(gameSelect[0]),
        .O(gameSelect_IBUF[0]));
  IBUF \gameSelect_IBUF[1]_inst 
       (.I(gameSelect[1]),
        .O(gameSelect_IBUF[1]));
  IBUF \gameSelect_IBUF[2]_inst 
       (.I(gameSelect[2]),
        .O(gameSelect_IBUF[2]));
  IBUF \gameSelect_IBUF[3]_inst 
       (.I(gameSelect[3]),
        .O(gameSelect_IBUF[3]));
  OBUF heart_beat_OBUF_inst
       (.I(heart_beat_OBUF),
        .O(heart_beat));
  IBUF \keyPad_IBUF[0]_inst 
       (.I(keyPad[0]),
        .O(keyPad_IBUF[0]));
  IBUF \keyPad_IBUF[10]_inst 
       (.I(keyPad[10]),
        .O(keyPad_IBUF[10]));
  IBUF \keyPad_IBUF[11]_inst 
       (.I(keyPad[11]),
        .O(keyPad_IBUF[11]));
  IBUF \keyPad_IBUF[12]_inst 
       (.I(keyPad[12]),
        .O(keyPad_IBUF[12]));
  IBUF \keyPad_IBUF[13]_inst 
       (.I(keyPad[13]),
        .O(keyPad_IBUF[13]));
  IBUF \keyPad_IBUF[14]_inst 
       (.I(keyPad[14]),
        .O(keyPad_IBUF[14]));
  IBUF \keyPad_IBUF[15]_inst 
       (.I(keyPad[15]),
        .O(keyPad_IBUF[15]));
  IBUF \keyPad_IBUF[1]_inst 
       (.I(keyPad[1]),
        .O(keyPad_IBUF[1]));
  IBUF \keyPad_IBUF[2]_inst 
       (.I(keyPad[2]),
        .O(keyPad_IBUF[2]));
  IBUF \keyPad_IBUF[3]_inst 
       (.I(keyPad[3]),
        .O(keyPad_IBUF[3]));
  IBUF \keyPad_IBUF[4]_inst 
       (.I(keyPad[4]),
        .O(keyPad_IBUF[4]));
  IBUF \keyPad_IBUF[5]_inst 
       (.I(keyPad[5]),
        .O(keyPad_IBUF[5]));
  IBUF \keyPad_IBUF[6]_inst 
       (.I(keyPad[6]),
        .O(keyPad_IBUF[6]));
  IBUF \keyPad_IBUF[7]_inst 
       (.I(keyPad[7]),
        .O(keyPad_IBUF[7]));
  IBUF \keyPad_IBUF[8]_inst 
       (.I(keyPad[8]),
        .O(keyPad_IBUF[8]));
  IBUF \keyPad_IBUF[9]_inst 
       (.I(keyPad[9]),
        .O(keyPad_IBUF[9]));
  OBUF \mapped_out_OBUF[0]_inst 
       (.I(mapped_out_OBUF[0]),
        .O(mapped_out[0]));
  OBUF \mapped_out_OBUF[1]_inst 
       (.I(mapped_out_OBUF[1]),
        .O(mapped_out[1]));
  OBUF \mapped_out_OBUF[2]_inst 
       (.I(mapped_out_OBUF[2]),
        .O(mapped_out[2]));
  OBUF \mapped_out_OBUF[3]_inst 
       (.I(mapped_out_OBUF[3]),
        .O(mapped_out[3]));
  OBUF \mapped_out_OBUF[4]_inst 
       (.I(mapped_out_OBUF[4]),
        .O(mapped_out[4]));
  OBUF \mapped_out_OBUF[5]_inst 
       (.I(mapped_out_OBUF[5]),
        .O(mapped_out[5]));
  OBUF \mapped_out_OBUF[6]_inst 
       (.I(mapped_out_OBUF[6]),
        .O(mapped_out[6]));
  OBUF \mapped_out_OBUF[7]_inst 
       (.I(mapped_out_OBUF[7]),
        .O(mapped_out[7]));
  core my_core
       (.D(memRead),
        .E(I0),
        .\I_reg[11]_0 (my_core_n_3),
        .Q({my_core_n_0,my_core_n_1}),
        .\RAND_reg[15]__0_P_0 (RAND_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\err_code[1] (err_code_OBUF),
        .keyPad_IBUF(keyPad_IBUF),
        .mem_done(mem_done),
        .mem_valid(mem_valid),
        .mem_write(mem_write),
        .\s_address_reg[11] (memAddress),
        .\s_dataIn_reg[7] (memWrite),
        .s_sys_reset(s_sys_reset),
        .sys_reset_reg(my_mem_controller_n_5),
        .sys_reset_reg_0(my_mem_controller_n_6),
        .sys_reset_reg_1(my_mem_controller_n_7),
        .sys_reset_reg_10(my_mem_controller_n_16),
        .sys_reset_reg_11(my_mem_controller_n_17),
        .sys_reset_reg_12(my_mem_controller_n_18),
        .sys_reset_reg_13(my_mem_controller_n_19),
        .sys_reset_reg_14(my_mem_controller_n_20),
        .sys_reset_reg_15(my_mem_controller_n_1),
        .sys_reset_reg_16(my_mem_controller_n_3),
        .sys_reset_reg_17(my_mem_controller_n_4),
        .sys_reset_reg_2(my_mem_controller_n_8),
        .sys_reset_reg_3(my_mem_controller_n_9),
        .sys_reset_reg_4(my_mem_controller_n_10),
        .sys_reset_reg_5(my_mem_controller_n_11),
        .sys_reset_reg_6(my_mem_controller_n_12),
        .sys_reset_reg_7(my_mem_controller_n_13),
        .sys_reset_reg_8(my_mem_controller_n_14),
        .sys_reset_reg_9(my_mem_controller_n_15));
  mem_controller my_mem_controller
       (.D(gameSelect_IBUF),
        .E(I0),
        .Q({my_core_n_0,my_core_n_1}),
        .\RAND_reg[0]__0_C (my_mem_controller_n_20),
        .\RAND_reg[10]__0_C (my_mem_controller_n_10),
        .\RAND_reg[11]__0_C (my_mem_controller_n_9),
        .\RAND_reg[12]__0_C (my_mem_controller_n_8),
        .\RAND_reg[13]__0_C (my_mem_controller_n_7),
        .\RAND_reg[14]__0_C (my_mem_controller_n_6),
        .\RAND_reg[15] (RAND_reg),
        .\RAND_reg[15]__0_C (my_mem_controller_n_5),
        .\RAND_reg[1]__0_C (my_mem_controller_n_19),
        .\RAND_reg[2]__0_C (my_mem_controller_n_18),
        .\RAND_reg[3]__0_C (my_mem_controller_n_17),
        .\RAND_reg[4]__0_C (my_mem_controller_n_16),
        .\RAND_reg[5]__0_C (my_mem_controller_n_15),
        .\RAND_reg[6]__0_C (my_mem_controller_n_14),
        .\RAND_reg[7]__0_C (my_mem_controller_n_13),
        .\RAND_reg[8]__0_C (my_mem_controller_n_12),
        .\RAND_reg[9]__0_C (my_mem_controller_n_11),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[0]_0 (my_core_n_3),
        .\done_reg[1]_0 (my_mem_controller_n_38),
        .\mapped_out[7] (mapped_out_OBUF),
        .\memAddress_reg[0] (my_time_keeper_n_2),
        .\memAddress_reg[11] (memAddress),
        .\memWrite_reg[7] ({my_time_keeper_n_7,my_time_keeper_n_8,my_time_keeper_n_9,my_time_keeper_n_10,my_time_keeper_n_11,my_time_keeper_n_12,my_time_keeper_n_13,my_time_keeper_n_14}),
        .\memWrite_reg[7]_0 (memWrite),
        .mem_done(mem_done),
        .\mem_ret_data_reg[7] (memRead),
        .\mem_ret_data_reg[7]_0 (memRead__0),
        .mem_valid(mem_valid),
        .mem_valid_reg(my_time_keeper_n_5),
        .mem_write(mem_write),
        .\reg_copy_num_reg[0] (my_mem_controller_n_3),
        .reset_IBUF(reset_IBUF),
        .s_TIME_mem_hold(s_TIME_mem_hold),
        .s_TIME_mem_valid(s_TIME_mem_valid),
        .s_TIME_mem_write(s_TIME_mem_write),
        .s_sys_reset(s_sys_reset),
        .\tmp_err_code_reg[0] (my_mem_controller_n_4),
        .\y_reg[0] (my_mem_controller_n_1));
  time_keeper my_time_keeper
       (.D(memRead__0),
        .Q(heart_beat_OBUF),
        .buzz_OBUF(buzz_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\done_reg[1] (my_mem_controller_n_38),
        .\memAddress_reg[0]_0 (my_time_keeper_n_2),
        .mem_valid(mem_valid),
        .\owner_reg[1] (my_time_keeper_n_5),
        .s_TIME_mem_hold(s_TIME_mem_hold),
        .s_TIME_mem_valid(s_TIME_mem_valid),
        .s_TIME_mem_write(s_TIME_mem_write),
        .\s_dataIn_reg[7] ({my_time_keeper_n_7,my_time_keeper_n_8,my_time_keeper_n_9,my_time_keeper_n_10,my_time_keeper_n_11,my_time_keeper_n_12,my_time_keeper_n_13,my_time_keeper_n_14}),
        .s_sys_reset(s_sys_reset));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module core
   (Q,
    mem_write,
    \I_reg[11]_0 ,
    \RAND_reg[15]__0_P_0 ,
    \s_dataIn_reg[7] ,
    \s_address_reg[11] ,
    mem_valid,
    \err_code[1] ,
    sys_reset_reg,
    clk_IBUF_BUFG,
    sys_reset_reg_0,
    sys_reset_reg_1,
    sys_reset_reg_2,
    sys_reset_reg_3,
    sys_reset_reg_4,
    sys_reset_reg_5,
    sys_reset_reg_6,
    sys_reset_reg_7,
    sys_reset_reg_8,
    sys_reset_reg_9,
    sys_reset_reg_10,
    sys_reset_reg_11,
    sys_reset_reg_12,
    sys_reset_reg_13,
    sys_reset_reg_14,
    s_sys_reset,
    sys_reset_reg_15,
    mem_done,
    sys_reset_reg_16,
    keyPad_IBUF,
    D,
    sys_reset_reg_17,
    E);
  output [1:0]Q;
  output mem_write;
  output \I_reg[11]_0 ;
  output [15:0]\RAND_reg[15]__0_P_0 ;
  output [7:0]\s_dataIn_reg[7] ;
  output [11:0]\s_address_reg[11] ;
  output mem_valid;
  output [1:0]\err_code[1] ;
  input sys_reset_reg;
  input clk_IBUF_BUFG;
  input sys_reset_reg_0;
  input sys_reset_reg_1;
  input sys_reset_reg_2;
  input sys_reset_reg_3;
  input sys_reset_reg_4;
  input sys_reset_reg_5;
  input sys_reset_reg_6;
  input sys_reset_reg_7;
  input sys_reset_reg_8;
  input sys_reset_reg_9;
  input sys_reset_reg_10;
  input sys_reset_reg_11;
  input sys_reset_reg_12;
  input sys_reset_reg_13;
  input sys_reset_reg_14;
  input s_sys_reset;
  input sys_reset_reg_15;
  input mem_done;
  input sys_reset_reg_16;
  input [15:0]keyPad_IBUF;
  input [7:0]D;
  input sys_reset_reg_17;
  input [0:0]E;

  wire [7:0]BCD_left;
  wire \BCD_left[0]_i_2_n_0 ;
  wire \BCD_left[0]_i_3_n_0 ;
  wire \BCD_left[0]_i_4_n_0 ;
  wire \BCD_left[0]_i_5_n_0 ;
  wire \BCD_left[0]_i_6_n_0 ;
  wire \BCD_left[2]_i_2_n_0 ;
  wire \BCD_left[2]_i_3_n_0 ;
  wire \BCD_left[2]_i_4_n_0 ;
  wire \BCD_left[2]_i_5_n_0 ;
  wire \BCD_left[2]_i_6_n_0 ;
  wire \BCD_left[2]_i_7_n_0 ;
  wire \BCD_left[3]_i_2_n_0 ;
  wire \BCD_left[4]_i_2_n_0 ;
  wire \BCD_left[4]_i_3_n_0 ;
  wire \BCD_left[5]_i_2_n_0 ;
  wire \BCD_left[5]_i_3_n_0 ;
  wire \BCD_left[6]_i_2_n_0 ;
  wire \BCD_left[6]_i_3_n_0 ;
  wire \BCD_left[6]_i_4_n_0 ;
  wire \BCD_left[7]_i_10_n_0 ;
  wire \BCD_left[7]_i_11_n_0 ;
  wire \BCD_left[7]_i_12_n_0 ;
  wire \BCD_left[7]_i_1_n_0 ;
  wire \BCD_left[7]_i_3_n_0 ;
  wire \BCD_left[7]_i_4_n_0 ;
  wire \BCD_left[7]_i_5_n_0 ;
  wire \BCD_left[7]_i_6_n_0 ;
  wire \BCD_left[7]_i_7_n_0 ;
  wire \BCD_left[7]_i_8_n_0 ;
  wire \BCD_left[7]_i_9_n_0 ;
  wire \BCD_left_reg_n_0_[0] ;
  wire \BCD_left_reg_n_0_[1] ;
  wire \BCD_left_reg_n_0_[2] ;
  wire \BCD_left_reg_n_0_[3] ;
  wire \BCD_left_reg_n_0_[4] ;
  wire \BCD_left_reg_n_0_[5] ;
  wire \BCD_left_reg_n_0_[6] ;
  wire \BCD_left_reg_n_0_[7] ;
  wire \BCD_total[0]_i_1_n_0 ;
  wire \BCD_total[1]_i_1_n_0 ;
  wire \BCD_total[2]_i_1_n_0 ;
  wire \BCD_total[3]_i_1_n_0 ;
  wire \BCD_total[4]_i_1_n_0 ;
  wire \BCD_total[5]_i_1_n_0 ;
  wire \BCD_total[6]_i_1_n_0 ;
  wire \BCD_total[6]_i_2_n_0 ;
  wire \BCD_total[7]_i_1_n_0 ;
  wire \BCD_total[7]_i_2_n_0 ;
  wire \BCD_total[7]_i_3_n_0 ;
  wire \BCD_total[7]_i_4_n_0 ;
  wire \BCD_total[7]_i_5_n_0 ;
  wire \BCD_total[7]_i_6_n_0 ;
  wire \BCD_total[7]_i_7_n_0 ;
  wire \BCD_total_reg_n_0_[0] ;
  wire \BCD_total_reg_n_0_[1] ;
  wire \BCD_total_reg_n_0_[2] ;
  wire \BCD_total_reg_n_0_[3] ;
  wire \BCD_total_reg_n_0_[4] ;
  wire \BCD_total_reg_n_0_[5] ;
  wire \BCD_total_reg_n_0_[6] ;
  wire \BCD_total_reg_n_0_[7] ;
  wire [7:0]D;
  wire [0:0]E;
  wire [11:0]I;
  wire \I[0]_i_1_n_0 ;
  wire \I[10]_i_1_n_0 ;
  wire \I[11]_i_2_n_0 ;
  wire \I[1]_i_1_n_0 ;
  wire \I[2]_i_1_n_0 ;
  wire \I[2]_i_2_n_0 ;
  wire \I[3]_i_1_n_0 ;
  wire \I[3]_i_2_n_0 ;
  wire \I[3]_i_4_n_0 ;
  wire \I[3]_i_5_n_0 ;
  wire \I[3]_i_6_n_0 ;
  wire \I[3]_i_7_n_0 ;
  wire \I[4]_i_1_n_0 ;
  wire \I[4]_i_2_n_0 ;
  wire \I[5]_i_1_n_0 ;
  wire \I[5]_i_2_n_0 ;
  wire \I[6]_i_1_n_0 ;
  wire \I[6]_i_2_n_0 ;
  wire \I[6]_i_3_n_0 ;
  wire \I[7]_i_1_n_0 ;
  wire \I[7]_i_3_n_0 ;
  wire \I[7]_i_4_n_0 ;
  wire \I[7]_i_5_n_0 ;
  wire \I[7]_i_6_n_0 ;
  wire \I[8]_i_1_n_0 ;
  wire \I[9]_i_1_n_0 ;
  wire \I_reg[11]_0 ;
  wire \I_reg[11]_i_4_n_1 ;
  wire \I_reg[11]_i_4_n_2 ;
  wire \I_reg[11]_i_4_n_3 ;
  wire \I_reg[11]_i_4_n_4 ;
  wire \I_reg[11]_i_4_n_5 ;
  wire \I_reg[11]_i_4_n_6 ;
  wire \I_reg[11]_i_4_n_7 ;
  wire \I_reg[3]_i_3_n_0 ;
  wire \I_reg[3]_i_3_n_1 ;
  wire \I_reg[3]_i_3_n_2 ;
  wire \I_reg[3]_i_3_n_3 ;
  wire \I_reg[3]_i_3_n_4 ;
  wire \I_reg[3]_i_3_n_5 ;
  wire \I_reg[3]_i_3_n_6 ;
  wire \I_reg[3]_i_3_n_7 ;
  wire \I_reg[7]_i_2_n_0 ;
  wire \I_reg[7]_i_2_n_1 ;
  wire \I_reg[7]_i_2_n_2 ;
  wire \I_reg[7]_i_2_n_3 ;
  wire \I_reg[7]_i_2_n_4 ;
  wire \I_reg[7]_i_2_n_5 ;
  wire \I_reg[7]_i_2_n_6 ;
  wire \I_reg[7]_i_2_n_7 ;
  wire PC0;
  wire \PC[0]_i_1_n_0 ;
  wire \PC[0]_i_2_n_0 ;
  wire \PC[10]_i_1_n_0 ;
  wire \PC[10]_i_2_n_0 ;
  wire \PC[11]_i_11_n_0 ;
  wire \PC[11]_i_12_n_0 ;
  wire \PC[11]_i_13_n_0 ;
  wire \PC[11]_i_14_n_0 ;
  wire \PC[11]_i_15_n_0 ;
  wire \PC[11]_i_16_n_0 ;
  wire \PC[11]_i_17_n_0 ;
  wire \PC[11]_i_18_n_0 ;
  wire \PC[11]_i_19_n_0 ;
  wire \PC[11]_i_20_n_0 ;
  wire \PC[11]_i_27_n_0 ;
  wire \PC[11]_i_28_n_0 ;
  wire \PC[11]_i_29_n_0 ;
  wire \PC[11]_i_2_n_0 ;
  wire \PC[11]_i_30_n_0 ;
  wire \PC[11]_i_31_n_0 ;
  wire \PC[11]_i_32_n_0 ;
  wire \PC[11]_i_33_n_0 ;
  wire \PC[11]_i_34_n_0 ;
  wire \PC[11]_i_35_n_0 ;
  wire \PC[11]_i_36_n_0 ;
  wire \PC[11]_i_37_n_0 ;
  wire \PC[11]_i_38_n_0 ;
  wire \PC[11]_i_39_n_0 ;
  wire \PC[11]_i_3_n_0 ;
  wire \PC[11]_i_40_n_0 ;
  wire \PC[11]_i_41_n_0 ;
  wire \PC[11]_i_42_n_0 ;
  wire \PC[11]_i_43_n_0 ;
  wire \PC[11]_i_44_n_0 ;
  wire \PC[11]_i_45_n_0 ;
  wire \PC[11]_i_46_n_0 ;
  wire \PC[11]_i_47_n_0 ;
  wire \PC[11]_i_48_n_0 ;
  wire \PC[11]_i_49_n_0 ;
  wire \PC[11]_i_4_n_0 ;
  wire \PC[11]_i_50_n_0 ;
  wire \PC[11]_i_51_n_0 ;
  wire \PC[11]_i_52_n_0 ;
  wire \PC[11]_i_53_n_0 ;
  wire \PC[11]_i_54_n_0 ;
  wire \PC[11]_i_56_n_0 ;
  wire \PC[11]_i_57_n_0 ;
  wire \PC[11]_i_59_n_0 ;
  wire \PC[11]_i_5_n_0 ;
  wire \PC[11]_i_60_n_0 ;
  wire \PC[11]_i_61_n_0 ;
  wire \PC[11]_i_62_n_0 ;
  wire \PC[11]_i_64_n_0 ;
  wire \PC[11]_i_65_n_0 ;
  wire \PC[11]_i_66_n_0 ;
  wire \PC[11]_i_67_n_0 ;
  wire \PC[11]_i_68_n_0 ;
  wire \PC[11]_i_69_n_0 ;
  wire \PC[11]_i_6_n_0 ;
  wire \PC[11]_i_70_n_0 ;
  wire \PC[11]_i_71_n_0 ;
  wire \PC[11]_i_72_n_0 ;
  wire \PC[11]_i_73_n_0 ;
  wire \PC[11]_i_7_n_0 ;
  wire \PC[11]_i_8_n_0 ;
  wire \PC[11]_i_9_n_0 ;
  wire \PC[1]_i_1_n_0 ;
  wire \PC[1]_i_2_n_0 ;
  wire \PC[2]_i_1_n_0 ;
  wire \PC[2]_i_2_n_0 ;
  wire \PC[3]_i_10_n_0 ;
  wire \PC[3]_i_11_n_0 ;
  wire \PC[3]_i_12_n_0 ;
  wire \PC[3]_i_13_n_0 ;
  wire \PC[3]_i_14_n_0 ;
  wire \PC[3]_i_15_n_0 ;
  wire \PC[3]_i_16_n_0 ;
  wire \PC[3]_i_1_n_0 ;
  wire \PC[3]_i_3_n_0 ;
  wire \PC[3]_i_6_n_0 ;
  wire \PC[3]_i_9_n_0 ;
  wire \PC[4]_i_1_n_0 ;
  wire \PC[4]_i_2_n_0 ;
  wire \PC[5]_i_1_n_0 ;
  wire \PC[5]_i_2_n_0 ;
  wire \PC[6]_i_1_n_0 ;
  wire \PC[6]_i_2_n_0 ;
  wire \PC[7]_i_10_n_0 ;
  wire \PC[7]_i_11_n_0 ;
  wire \PC[7]_i_12_n_0 ;
  wire \PC[7]_i_13_n_0 ;
  wire \PC[7]_i_14_n_0 ;
  wire \PC[7]_i_15_n_0 ;
  wire \PC[7]_i_16_n_0 ;
  wire \PC[7]_i_1_n_0 ;
  wire \PC[7]_i_3_n_0 ;
  wire \PC[7]_i_9_n_0 ;
  wire \PC[8]_i_1_n_0 ;
  wire \PC[8]_i_2_n_0 ;
  wire \PC[9]_i_1_n_0 ;
  wire \PC[9]_i_2_n_0 ;
  wire \PC[9]_i_3_n_0 ;
  wire \PC[9]_i_4_n_0 ;
  wire [11:0]PC__0;
  wire \PC_reg[11]_i_10_n_1 ;
  wire \PC_reg[11]_i_10_n_2 ;
  wire \PC_reg[11]_i_10_n_3 ;
  wire \PC_reg[11]_i_25_n_1 ;
  wire \PC_reg[11]_i_25_n_2 ;
  wire \PC_reg[11]_i_25_n_3 ;
  wire \PC_reg[11]_i_25_n_4 ;
  wire \PC_reg[11]_i_25_n_5 ;
  wire \PC_reg[11]_i_25_n_6 ;
  wire \PC_reg[11]_i_25_n_7 ;
  wire \PC_reg[11]_i_26_n_3 ;
  wire \PC_reg[11]_i_55_n_0 ;
  wire \PC_reg[11]_i_55_n_1 ;
  wire \PC_reg[11]_i_55_n_2 ;
  wire \PC_reg[11]_i_55_n_3 ;
  wire \PC_reg[11]_i_58_n_3 ;
  wire \PC_reg[11]_i_63_n_0 ;
  wire \PC_reg[11]_i_63_n_1 ;
  wire \PC_reg[11]_i_63_n_2 ;
  wire \PC_reg[11]_i_63_n_3 ;
  wire \PC_reg[3]_i_2_n_0 ;
  wire \PC_reg[3]_i_2_n_1 ;
  wire \PC_reg[3]_i_2_n_2 ;
  wire \PC_reg[3]_i_2_n_3 ;
  wire \PC_reg[3]_i_8_n_0 ;
  wire \PC_reg[3]_i_8_n_1 ;
  wire \PC_reg[3]_i_8_n_2 ;
  wire \PC_reg[3]_i_8_n_3 ;
  wire \PC_reg[3]_i_8_n_4 ;
  wire \PC_reg[3]_i_8_n_5 ;
  wire \PC_reg[3]_i_8_n_6 ;
  wire \PC_reg[3]_i_8_n_7 ;
  wire \PC_reg[7]_i_2_n_0 ;
  wire \PC_reg[7]_i_2_n_1 ;
  wire \PC_reg[7]_i_2_n_2 ;
  wire \PC_reg[7]_i_2_n_3 ;
  wire \PC_reg[7]_i_8_n_0 ;
  wire \PC_reg[7]_i_8_n_1 ;
  wire \PC_reg[7]_i_8_n_2 ;
  wire \PC_reg[7]_i_8_n_3 ;
  wire \PC_reg[7]_i_8_n_4 ;
  wire \PC_reg[7]_i_8_n_5 ;
  wire \PC_reg[7]_i_8_n_6 ;
  wire \PC_reg[7]_i_8_n_7 ;
  wire [1:0]Q;
  wire [7:0]R;
  wire \RAND[0]_i_1_n_0 ;
  wire \RAND[1]_i_1_n_0 ;
  wire \RAND[2]_i_1_n_0 ;
  wire \RAND[3]_i_1_n_0 ;
  wire \RAND[4]_i_1_n_0 ;
  wire \RAND[5]_i_1_n_0 ;
  wire \RAND[6]_i_1_n_0 ;
  wire \RAND_reg[0]__0_C_n_0 ;
  wire \RAND_reg[0]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[0]__0_LDC_n_0 ;
  wire \RAND_reg[0]__0_P_n_0 ;
  wire \RAND_reg[10]__0_C_n_0 ;
  wire \RAND_reg[10]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[10]__0_LDC_n_0 ;
  wire \RAND_reg[10]__0_P_n_0 ;
  wire \RAND_reg[11]__0_C_n_0 ;
  wire \RAND_reg[11]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[11]__0_LDC_n_0 ;
  wire \RAND_reg[11]__0_P_n_0 ;
  wire \RAND_reg[12]__0_C_n_0 ;
  wire \RAND_reg[12]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[12]__0_LDC_n_0 ;
  wire \RAND_reg[12]__0_P_n_0 ;
  wire \RAND_reg[13]__0_C_n_0 ;
  wire \RAND_reg[13]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[13]__0_LDC_n_0 ;
  wire \RAND_reg[13]__0_P_n_0 ;
  wire \RAND_reg[14]__0_C_n_0 ;
  wire \RAND_reg[14]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[14]__0_LDC_n_0 ;
  wire \RAND_reg[14]__0_P_n_0 ;
  wire \RAND_reg[15]__0_C_n_0 ;
  wire \RAND_reg[15]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[15]__0_LDC_n_0 ;
  wire [15:0]\RAND_reg[15]__0_P_0 ;
  wire \RAND_reg[15]__0_P_n_0 ;
  wire \RAND_reg[1]__0_C_n_0 ;
  wire \RAND_reg[1]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[1]__0_LDC_n_0 ;
  wire \RAND_reg[1]__0_P_n_0 ;
  wire \RAND_reg[2]__0_C_n_0 ;
  wire \RAND_reg[2]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[2]__0_LDC_n_0 ;
  wire \RAND_reg[2]__0_P_n_0 ;
  wire \RAND_reg[3]__0_C_n_0 ;
  wire \RAND_reg[3]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[3]__0_LDC_n_0 ;
  wire \RAND_reg[3]__0_P_n_0 ;
  wire \RAND_reg[4]__0_C_n_0 ;
  wire \RAND_reg[4]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[4]__0_LDC_n_0 ;
  wire \RAND_reg[4]__0_P_n_0 ;
  wire \RAND_reg[5]__0_C_n_0 ;
  wire \RAND_reg[5]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[5]__0_LDC_n_0 ;
  wire \RAND_reg[5]__0_P_n_0 ;
  wire \RAND_reg[6]__0_C_n_0 ;
  wire \RAND_reg[6]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[6]__0_LDC_n_0 ;
  wire \RAND_reg[6]__0_P_n_0 ;
  wire \RAND_reg[7]__0_C_n_0 ;
  wire \RAND_reg[7]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[7]__0_LDC_n_0 ;
  wire \RAND_reg[7]__0_P_n_0 ;
  wire \RAND_reg[8]__0_C_n_0 ;
  wire \RAND_reg[8]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[8]__0_LDC_n_0 ;
  wire \RAND_reg[8]__0_P_n_0 ;
  wire \RAND_reg[9]__0_C_n_0 ;
  wire \RAND_reg[9]__0_LDC_i_1_n_0 ;
  wire \RAND_reg[9]__0_LDC_n_0 ;
  wire \RAND_reg[9]__0_P_n_0 ;
  wire SP0;
  wire \SP[1]_i_1_n_0 ;
  wire \SP[2]_i_1_n_0 ;
  wire \SP[3]_i_1_n_0 ;
  wire \SP[4]_i_1_n_0 ;
  wire \SP[5]_i_1_n_0 ;
  wire \SP[5]_i_2_n_0 ;
  wire \SP[5]_i_3_n_0 ;
  wire \SP[6]_i_1_n_0 ;
  wire \SP[7]_i_1_n_0 ;
  wire \SP[7]_i_3_n_0 ;
  wire \SP[7]_i_4_n_0 ;
  wire \SP[7]_i_5_n_0 ;
  wire \SP[7]_i_6_n_0 ;
  wire \SP[7]_i_7_n_0 ;
  wire \SP[7]_i_8_n_0 ;
  wire \SP_reg_n_0_[0] ;
  wire \SP_reg_n_0_[1] ;
  wire \SP_reg_n_0_[2] ;
  wire \SP_reg_n_0_[3] ;
  wire \SP_reg_n_0_[4] ;
  wire \SP_reg_n_0_[5] ;
  wire \SP_reg_n_0_[6] ;
  wire \SP_reg_n_0_[7] ;
  wire [11:0]addr;
  wire addr0;
  wire \addr[11]_i_2_n_0 ;
  wire clk_IBUF_BUFG;
  wire \cpu_REG[0][7]_i_2_n_0 ;
  wire \cpu_REG[0][7]_i_3_n_0 ;
  wire [7:0]\cpu_REG[0]_0 ;
  wire \cpu_REG[10][7]_i_2_n_0 ;
  wire \cpu_REG[10][7]_i_3_n_0 ;
  wire \cpu_REG[10][7]_i_4_n_0 ;
  wire \cpu_REG[11][7]_i_2_n_0 ;
  wire \cpu_REG[11][7]_i_3_n_0 ;
  wire \cpu_REG[11][7]_i_4_n_0 ;
  wire \cpu_REG[11][7]_i_5_n_0 ;
  wire \cpu_REG[11][7]_i_6_n_0 ;
  wire \cpu_REG[12][7]_i_2_n_0 ;
  wire \cpu_REG[13][0]_i_10_n_0 ;
  wire \cpu_REG[13][0]_i_11_n_0 ;
  wire \cpu_REG[13][0]_i_12_n_0 ;
  wire \cpu_REG[13][0]_i_13_n_0 ;
  wire \cpu_REG[13][0]_i_14_n_0 ;
  wire \cpu_REG[13][0]_i_15_n_0 ;
  wire \cpu_REG[13][0]_i_16_n_0 ;
  wire \cpu_REG[13][0]_i_17_n_0 ;
  wire \cpu_REG[13][0]_i_18_n_0 ;
  wire \cpu_REG[13][0]_i_19_n_0 ;
  wire \cpu_REG[13][0]_i_20_n_0 ;
  wire \cpu_REG[13][0]_i_2_n_0 ;
  wire \cpu_REG[13][0]_i_3_n_0 ;
  wire \cpu_REG[13][0]_i_5_n_0 ;
  wire \cpu_REG[13][0]_i_6_n_0 ;
  wire \cpu_REG[13][0]_i_7_n_0 ;
  wire \cpu_REG[13][0]_i_8_n_0 ;
  wire \cpu_REG[13][0]_i_9_n_0 ;
  wire \cpu_REG[13][1]_i_2_n_0 ;
  wire \cpu_REG[13][1]_i_3_n_0 ;
  wire \cpu_REG[13][1]_i_4_n_0 ;
  wire \cpu_REG[13][1]_i_5_n_0 ;
  wire \cpu_REG[13][1]_i_6_n_0 ;
  wire \cpu_REG[13][1]_i_7_n_0 ;
  wire \cpu_REG[13][1]_i_8_n_0 ;
  wire \cpu_REG[13][2]_i_2_n_0 ;
  wire \cpu_REG[13][2]_i_3_n_0 ;
  wire \cpu_REG[13][2]_i_4_n_0 ;
  wire \cpu_REG[13][2]_i_5_n_0 ;
  wire \cpu_REG[13][2]_i_6_n_0 ;
  wire \cpu_REG[13][3]_i_10_n_0 ;
  wire \cpu_REG[13][3]_i_11_n_0 ;
  wire \cpu_REG[13][3]_i_12_n_0 ;
  wire \cpu_REG[13][3]_i_13_n_0 ;
  wire \cpu_REG[13][3]_i_14_n_0 ;
  wire \cpu_REG[13][3]_i_15_n_0 ;
  wire \cpu_REG[13][3]_i_16_n_0 ;
  wire \cpu_REG[13][3]_i_17_n_0 ;
  wire \cpu_REG[13][3]_i_18_n_0 ;
  wire \cpu_REG[13][3]_i_19_n_0 ;
  wire \cpu_REG[13][3]_i_20_n_0 ;
  wire \cpu_REG[13][3]_i_2_n_0 ;
  wire \cpu_REG[13][3]_i_3_n_0 ;
  wire \cpu_REG[13][3]_i_4_n_0 ;
  wire \cpu_REG[13][3]_i_5_n_0 ;
  wire \cpu_REG[13][3]_i_7_n_0 ;
  wire \cpu_REG[13][3]_i_9_n_0 ;
  wire \cpu_REG[13][4]_i_2_n_0 ;
  wire \cpu_REG[13][4]_i_3_n_0 ;
  wire \cpu_REG[13][4]_i_4_n_0 ;
  wire \cpu_REG[13][4]_i_5_n_0 ;
  wire \cpu_REG[13][4]_i_6_n_0 ;
  wire \cpu_REG[13][4]_i_7_n_0 ;
  wire \cpu_REG[13][4]_i_8_n_0 ;
  wire \cpu_REG[13][4]_i_9_n_0 ;
  wire \cpu_REG[13][5]_i_2_n_0 ;
  wire \cpu_REG[13][5]_i_3_n_0 ;
  wire \cpu_REG[13][5]_i_4_n_0 ;
  wire \cpu_REG[13][5]_i_5_n_0 ;
  wire \cpu_REG[13][5]_i_6_n_0 ;
  wire \cpu_REG[13][5]_i_7_n_0 ;
  wire \cpu_REG[13][5]_i_8_n_0 ;
  wire \cpu_REG[13][6]_i_10_n_0 ;
  wire \cpu_REG[13][6]_i_11_n_0 ;
  wire \cpu_REG[13][6]_i_12_n_0 ;
  wire \cpu_REG[13][6]_i_13_n_0 ;
  wire \cpu_REG[13][6]_i_14_n_0 ;
  wire \cpu_REG[13][6]_i_15_n_0 ;
  wire \cpu_REG[13][6]_i_16_n_0 ;
  wire \cpu_REG[13][6]_i_2_n_0 ;
  wire \cpu_REG[13][6]_i_3_n_0 ;
  wire \cpu_REG[13][6]_i_4_n_0 ;
  wire \cpu_REG[13][6]_i_5_n_0 ;
  wire \cpu_REG[13][6]_i_7_n_0 ;
  wire \cpu_REG[13][6]_i_8_n_0 ;
  wire \cpu_REG[13][6]_i_9_n_0 ;
  wire \cpu_REG[13][7]_i_10_n_0 ;
  wire \cpu_REG[13][7]_i_11_n_0 ;
  wire \cpu_REG[13][7]_i_12_n_0 ;
  wire \cpu_REG[13][7]_i_16_n_0 ;
  wire \cpu_REG[13][7]_i_17_n_0 ;
  wire \cpu_REG[13][7]_i_18_n_0 ;
  wire \cpu_REG[13][7]_i_19_n_0 ;
  wire \cpu_REG[13][7]_i_20_n_0 ;
  wire \cpu_REG[13][7]_i_21_n_0 ;
  wire \cpu_REG[13][7]_i_25_n_0 ;
  wire \cpu_REG[13][7]_i_26_n_0 ;
  wire \cpu_REG[13][7]_i_27_n_0 ;
  wire \cpu_REG[13][7]_i_28_n_0 ;
  wire \cpu_REG[13][7]_i_29_n_0 ;
  wire \cpu_REG[13][7]_i_30_n_0 ;
  wire \cpu_REG[13][7]_i_31_n_0 ;
  wire \cpu_REG[13][7]_i_32_n_0 ;
  wire \cpu_REG[13][7]_i_33_n_0 ;
  wire \cpu_REG[13][7]_i_3_n_0 ;
  wire \cpu_REG[13][7]_i_4_n_0 ;
  wire \cpu_REG[13][7]_i_5_n_0 ;
  wire \cpu_REG[13][7]_i_6_n_0 ;
  wire \cpu_REG[13][7]_i_7_n_0 ;
  wire \cpu_REG[13][7]_i_9_n_0 ;
  wire \cpu_REG[14][7]_i_2_n_0 ;
  wire [7:7]\cpu_REG[15]0 ;
  wire \cpu_REG[15][0]_i_10_n_0 ;
  wire \cpu_REG[15][0]_i_11_n_0 ;
  wire \cpu_REG[15][0]_i_12_n_0 ;
  wire \cpu_REG[15][0]_i_13_n_0 ;
  wire \cpu_REG[15][0]_i_14_n_0 ;
  wire \cpu_REG[15][0]_i_15_n_0 ;
  wire \cpu_REG[15][0]_i_16_n_0 ;
  wire \cpu_REG[15][0]_i_17_n_0 ;
  wire \cpu_REG[15][0]_i_18_n_0 ;
  wire \cpu_REG[15][0]_i_19_n_0 ;
  wire \cpu_REG[15][0]_i_1_n_0 ;
  wire \cpu_REG[15][0]_i_20_n_0 ;
  wire \cpu_REG[15][0]_i_22_n_0 ;
  wire \cpu_REG[15][0]_i_24_n_0 ;
  wire \cpu_REG[15][0]_i_25_n_0 ;
  wire \cpu_REG[15][0]_i_26_n_0 ;
  wire \cpu_REG[15][0]_i_27_n_0 ;
  wire \cpu_REG[15][0]_i_28_n_0 ;
  wire \cpu_REG[15][0]_i_29_n_0 ;
  wire \cpu_REG[15][0]_i_2_n_0 ;
  wire \cpu_REG[15][0]_i_30_n_0 ;
  wire \cpu_REG[15][0]_i_31_n_0 ;
  wire \cpu_REG[15][0]_i_3_n_0 ;
  wire \cpu_REG[15][0]_i_4_n_0 ;
  wire \cpu_REG[15][0]_i_6_n_0 ;
  wire \cpu_REG[15][0]_i_7_n_0 ;
  wire \cpu_REG[15][0]_i_9_n_0 ;
  wire \cpu_REG[15][1]_i_10_n_0 ;
  wire \cpu_REG[15][1]_i_13_n_0 ;
  wire \cpu_REG[15][1]_i_14_n_0 ;
  wire \cpu_REG[15][1]_i_15_n_0 ;
  wire \cpu_REG[15][1]_i_16_n_0 ;
  wire \cpu_REG[15][1]_i_17_n_0 ;
  wire \cpu_REG[15][1]_i_18_n_0 ;
  wire \cpu_REG[15][1]_i_1_n_0 ;
  wire \cpu_REG[15][1]_i_2_n_0 ;
  wire \cpu_REG[15][1]_i_3_n_0 ;
  wire \cpu_REG[15][1]_i_5_n_0 ;
  wire \cpu_REG[15][1]_i_6_n_0 ;
  wire \cpu_REG[15][1]_i_7_n_0 ;
  wire \cpu_REG[15][1]_i_8_n_0 ;
  wire \cpu_REG[15][1]_i_9_n_0 ;
  wire \cpu_REG[15][2]_i_10_n_0 ;
  wire \cpu_REG[15][2]_i_11_n_0 ;
  wire \cpu_REG[15][2]_i_12_n_0 ;
  wire \cpu_REG[15][2]_i_13_n_0 ;
  wire \cpu_REG[15][2]_i_14_n_0 ;
  wire \cpu_REG[15][2]_i_1_n_0 ;
  wire \cpu_REG[15][2]_i_2_n_0 ;
  wire \cpu_REG[15][2]_i_3_n_0 ;
  wire \cpu_REG[15][2]_i_4_n_0 ;
  wire \cpu_REG[15][2]_i_6_n_0 ;
  wire \cpu_REG[15][2]_i_7_n_0 ;
  wire \cpu_REG[15][3]_i_12_n_0 ;
  wire \cpu_REG[15][3]_i_13_n_0 ;
  wire \cpu_REG[15][3]_i_14_n_0 ;
  wire \cpu_REG[15][3]_i_15_n_0 ;
  wire \cpu_REG[15][3]_i_16_n_0 ;
  wire \cpu_REG[15][3]_i_17_n_0 ;
  wire \cpu_REG[15][3]_i_18_n_0 ;
  wire \cpu_REG[15][3]_i_1_n_0 ;
  wire \cpu_REG[15][3]_i_2_n_0 ;
  wire \cpu_REG[15][3]_i_3_n_0 ;
  wire \cpu_REG[15][3]_i_5_n_0 ;
  wire \cpu_REG[15][3]_i_6_n_0 ;
  wire \cpu_REG[15][3]_i_7_n_0 ;
  wire \cpu_REG[15][3]_i_8_n_0 ;
  wire \cpu_REG[15][3]_i_9_n_0 ;
  wire \cpu_REG[15][4]_i_10_n_0 ;
  wire \cpu_REG[15][4]_i_13_n_0 ;
  wire \cpu_REG[15][4]_i_14_n_0 ;
  wire \cpu_REG[15][4]_i_15_n_0 ;
  wire \cpu_REG[15][4]_i_16_n_0 ;
  wire \cpu_REG[15][4]_i_1_n_0 ;
  wire \cpu_REG[15][4]_i_2_n_0 ;
  wire \cpu_REG[15][4]_i_3_n_0 ;
  wire \cpu_REG[15][4]_i_5_n_0 ;
  wire \cpu_REG[15][4]_i_6_n_0 ;
  wire \cpu_REG[15][4]_i_7_n_0 ;
  wire \cpu_REG[15][4]_i_8_n_0 ;
  wire \cpu_REG[15][4]_i_9_n_0 ;
  wire \cpu_REG[15][5]_i_10_n_0 ;
  wire \cpu_REG[15][5]_i_13_n_0 ;
  wire \cpu_REG[15][5]_i_14_n_0 ;
  wire \cpu_REG[15][5]_i_15_n_0 ;
  wire \cpu_REG[15][5]_i_16_n_0 ;
  wire \cpu_REG[15][5]_i_1_n_0 ;
  wire \cpu_REG[15][5]_i_2_n_0 ;
  wire \cpu_REG[15][5]_i_3_n_0 ;
  wire \cpu_REG[15][5]_i_5_n_0 ;
  wire \cpu_REG[15][5]_i_6_n_0 ;
  wire \cpu_REG[15][5]_i_7_n_0 ;
  wire \cpu_REG[15][5]_i_8_n_0 ;
  wire \cpu_REG[15][5]_i_9_n_0 ;
  wire \cpu_REG[15][6]_i_1_n_0 ;
  wire \cpu_REG[15][6]_i_2_n_0 ;
  wire \cpu_REG[15][6]_i_3_n_0 ;
  wire \cpu_REG[15][6]_i_4_n_0 ;
  wire \cpu_REG[15][6]_i_5_n_0 ;
  wire \cpu_REG[15][6]_i_6_n_0 ;
  wire \cpu_REG[15][6]_i_7_n_0 ;
  wire \cpu_REG[15][6]_i_8_n_0 ;
  wire \cpu_REG[15][6]_i_9_n_0 ;
  wire \cpu_REG[15][7]_i_10_n_0 ;
  wire \cpu_REG[15][7]_i_11_n_0 ;
  wire \cpu_REG[15][7]_i_12_n_0 ;
  wire \cpu_REG[15][7]_i_13_n_0 ;
  wire \cpu_REG[15][7]_i_14_n_0 ;
  wire \cpu_REG[15][7]_i_15_n_0 ;
  wire \cpu_REG[15][7]_i_16_n_0 ;
  wire \cpu_REG[15][7]_i_18_n_0 ;
  wire \cpu_REG[15][7]_i_1_n_0 ;
  wire \cpu_REG[15][7]_i_20_n_0 ;
  wire \cpu_REG[15][7]_i_21_n_0 ;
  wire \cpu_REG[15][7]_i_22_n_0 ;
  wire \cpu_REG[15][7]_i_23_n_0 ;
  wire \cpu_REG[15][7]_i_2_n_0 ;
  wire \cpu_REG[15][7]_i_3_n_0 ;
  wire \cpu_REG[15][7]_i_4_n_0 ;
  wire \cpu_REG[15][7]_i_5_n_0 ;
  wire \cpu_REG[15][7]_i_6_n_0 ;
  wire \cpu_REG[15][7]_i_7_n_0 ;
  wire \cpu_REG[15][7]_i_8_n_0 ;
  wire \cpu_REG[15][7]_i_9_n_0 ;
  wire \cpu_REG[1][7]_i_2_n_0 ;
  wire \cpu_REG[2][7]_i_2_n_0 ;
  wire \cpu_REG[3][7]_i_2_n_0 ;
  wire \cpu_REG[3][7]_i_3_n_0 ;
  wire \cpu_REG[4][7]_i_2_n_0 ;
  wire \cpu_REG[4][7]_i_3_n_0 ;
  wire \cpu_REG[4][7]_i_4_n_0 ;
  wire \cpu_REG[5][7]_i_2_n_0 ;
  wire \cpu_REG[6][7]_i_2_n_0 ;
  wire \cpu_REG[6][7]_i_3_n_0 ;
  wire \cpu_REG[7][7]_i_2_n_0 ;
  wire \cpu_REG[7][7]_i_3_n_0 ;
  wire \cpu_REG[7][7]_i_4_n_0 ;
  wire \cpu_REG[8][7]_i_2_n_0 ;
  wire \cpu_REG[9][7]_i_2_n_0 ;
  wire \cpu_REG_reg[0]0 ;
  wire \cpu_REG_reg[10]0 ;
  wire [7:0]\cpu_REG_reg[10]_4 ;
  wire \cpu_REG_reg[11]0 ;
  wire [7:0]\cpu_REG_reg[11]_3 ;
  wire \cpu_REG_reg[12]0 ;
  wire [7:0]\cpu_REG_reg[12]_2 ;
  wire \cpu_REG_reg[13]0 ;
  wire \cpu_REG_reg[13][0]_i_4_n_0 ;
  wire \cpu_REG_reg[13][0]_i_4_n_1 ;
  wire \cpu_REG_reg[13][0]_i_4_n_2 ;
  wire \cpu_REG_reg[13][0]_i_4_n_3 ;
  wire \cpu_REG_reg[13][0]_i_4_n_4 ;
  wire \cpu_REG_reg[13][0]_i_4_n_5 ;
  wire \cpu_REG_reg[13][0]_i_4_n_6 ;
  wire \cpu_REG_reg[13][0]_i_4_n_7 ;
  wire \cpu_REG_reg[13][3]_i_6_n_0 ;
  wire \cpu_REG_reg[13][3]_i_6_n_1 ;
  wire \cpu_REG_reg[13][3]_i_6_n_2 ;
  wire \cpu_REG_reg[13][3]_i_6_n_3 ;
  wire \cpu_REG_reg[13][3]_i_6_n_4 ;
  wire \cpu_REG_reg[13][3]_i_6_n_5 ;
  wire \cpu_REG_reg[13][3]_i_6_n_6 ;
  wire \cpu_REG_reg[13][3]_i_6_n_7 ;
  wire \cpu_REG_reg[13][3]_i_8_n_0 ;
  wire \cpu_REG_reg[13][3]_i_8_n_1 ;
  wire \cpu_REG_reg[13][3]_i_8_n_2 ;
  wire \cpu_REG_reg[13][3]_i_8_n_3 ;
  wire \cpu_REG_reg[13][6]_i_6_n_1 ;
  wire \cpu_REG_reg[13][6]_i_6_n_2 ;
  wire \cpu_REG_reg[13][6]_i_6_n_3 ;
  wire \cpu_REG_reg[13][6]_i_6_n_4 ;
  wire \cpu_REG_reg[13][6]_i_6_n_5 ;
  wire \cpu_REG_reg[13][6]_i_6_n_6 ;
  wire \cpu_REG_reg[13][6]_i_6_n_7 ;
  wire \cpu_REG_reg[13][7]_i_13_n_0 ;
  wire \cpu_REG_reg[13][7]_i_14_n_0 ;
  wire \cpu_REG_reg[13][7]_i_15_n_0 ;
  wire \cpu_REG_reg[13][7]_i_22_n_0 ;
  wire \cpu_REG_reg[13][7]_i_23_n_0 ;
  wire \cpu_REG_reg[13][7]_i_24_n_0 ;
  wire \cpu_REG_reg[13][7]_i_24_n_1 ;
  wire \cpu_REG_reg[13][7]_i_24_n_2 ;
  wire \cpu_REG_reg[13][7]_i_24_n_3 ;
  wire \cpu_REG_reg[13][7]_i_8_n_0 ;
  wire [7:0]\cpu_REG_reg[13]_1 ;
  wire \cpu_REG_reg[14]0 ;
  wire [7:0]\cpu_REG_reg[14]_14 ;
  wire \cpu_REG_reg[15][0]_i_21_n_0 ;
  wire \cpu_REG_reg[15][0]_i_23_n_1 ;
  wire \cpu_REG_reg[15][0]_i_23_n_2 ;
  wire \cpu_REG_reg[15][0]_i_23_n_3 ;
  wire \cpu_REG_reg[15][0]_i_5_n_1 ;
  wire \cpu_REG_reg[15][0]_i_5_n_2 ;
  wire \cpu_REG_reg[15][0]_i_5_n_3 ;
  wire \cpu_REG_reg[15][1]_i_11_n_0 ;
  wire \cpu_REG_reg[15][1]_i_12_n_0 ;
  wire \cpu_REG_reg[15][1]_i_4_n_0 ;
  wire \cpu_REG_reg[15][2]_i_5_n_0 ;
  wire \cpu_REG_reg[15][2]_i_8_n_0 ;
  wire \cpu_REG_reg[15][2]_i_9_n_0 ;
  wire \cpu_REG_reg[15][3]_i_10_n_0 ;
  wire \cpu_REG_reg[15][3]_i_11_n_0 ;
  wire \cpu_REG_reg[15][3]_i_4_n_0 ;
  wire \cpu_REG_reg[15][4]_i_11_n_0 ;
  wire \cpu_REG_reg[15][4]_i_12_n_0 ;
  wire \cpu_REG_reg[15][4]_i_4_n_0 ;
  wire \cpu_REG_reg[15][5]_i_11_n_0 ;
  wire \cpu_REG_reg[15][5]_i_12_n_0 ;
  wire \cpu_REG_reg[15][5]_i_4_n_0 ;
  wire \cpu_REG_reg[15][7]_i_19_n_1 ;
  wire \cpu_REG_reg[15][7]_i_19_n_2 ;
  wire \cpu_REG_reg[15][7]_i_19_n_3 ;
  wire \cpu_REG_reg[15][7]_i_19_n_4 ;
  wire \cpu_REG_reg[15][7]_i_19_n_5 ;
  wire \cpu_REG_reg[15][7]_i_19_n_6 ;
  wire \cpu_REG_reg[15][7]_i_19_n_7 ;
  wire [7:0]\cpu_REG_reg[15]_15 ;
  wire \cpu_REG_reg[1]0 ;
  wire [7:0]\cpu_REG_reg[1]_13 ;
  wire \cpu_REG_reg[2]0 ;
  wire [7:0]\cpu_REG_reg[2]_12 ;
  wire \cpu_REG_reg[3]0 ;
  wire [7:0]\cpu_REG_reg[3]_11 ;
  wire \cpu_REG_reg[4]0 ;
  wire [7:0]\cpu_REG_reg[4]_10 ;
  wire \cpu_REG_reg[5]0 ;
  wire [7:0]\cpu_REG_reg[5]_9 ;
  wire \cpu_REG_reg[6]0 ;
  wire [7:0]\cpu_REG_reg[6]_8 ;
  wire \cpu_REG_reg[7]0 ;
  wire [7:0]\cpu_REG_reg[7]_7 ;
  wire \cpu_REG_reg[8]0 ;
  wire [7:0]\cpu_REG_reg[8]_6 ;
  wire \cpu_REG_reg[9]0 ;
  wire [7:0]\cpu_REG_reg[9]_5 ;
  wire cpu_STACK_reg_0_15_0_5_i_2_n_0;
  wire cpu_STACK_reg_0_15_0_5_i_3_n_0;
  wire cpu_STACK_reg_0_15_0_5_i_4_n_0;
  wire cpu_STACK_reg_0_15_0_5_i_5_n_0;
  wire cpu_STACK_reg_0_15_0_5_i_6_n_0;
  wire cpu_STACK_reg_0_15_0_5_i_7_n_0;
  wire cpu_STACK_reg_0_15_0_5_n_0;
  wire cpu_STACK_reg_0_15_0_5_n_1;
  wire cpu_STACK_reg_0_15_0_5_n_2;
  wire cpu_STACK_reg_0_15_0_5_n_3;
  wire cpu_STACK_reg_0_15_0_5_n_4;
  wire cpu_STACK_reg_0_15_0_5_n_5;
  wire cpu_STACK_reg_0_15_6_11_n_0;
  wire cpu_STACK_reg_0_15_6_11_n_1;
  wire cpu_STACK_reg_0_15_6_11_n_2;
  wire cpu_STACK_reg_0_15_6_11_n_3;
  wire cpu_STACK_reg_0_15_6_11_n_4;
  wire cpu_STACK_reg_0_15_6_11_n_5;
  wire current_state;
  wire \current_state[0]_i_10_n_0 ;
  wire \current_state[0]_i_11_n_0 ;
  wire \current_state[0]_i_12_n_0 ;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[0]_i_4_n_0 ;
  wire \current_state[0]_i_5_n_0 ;
  wire \current_state[0]_i_6_n_0 ;
  wire \current_state[0]_i_7_n_0 ;
  wire \current_state[0]_i_8_n_0 ;
  wire \current_state[0]_i_9_n_0 ;
  wire \current_state[1]_i_10_n_0 ;
  wire \current_state[1]_i_11_n_0 ;
  wire \current_state[1]_i_12_n_0 ;
  wire \current_state[1]_i_13_n_0 ;
  wire \current_state[1]_i_14_n_0 ;
  wire \current_state[1]_i_15_n_0 ;
  wire \current_state[1]_i_16_n_0 ;
  wire \current_state[1]_i_17_n_0 ;
  wire \current_state[1]_i_18_n_0 ;
  wire \current_state[1]_i_19_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3__1_n_0 ;
  wire \current_state[1]_i_4_n_0 ;
  wire \current_state[1]_i_5_n_0 ;
  wire \current_state[1]_i_6_n_0 ;
  wire \current_state[1]_i_7_n_0 ;
  wire \current_state[1]_i_8_n_0 ;
  wire \current_state[1]_i_9_n_0 ;
  wire \current_state[2]_i_10_n_0 ;
  wire \current_state[2]_i_11_n_0 ;
  wire \current_state[2]_i_12_n_0 ;
  wire \current_state[2]_i_13_n_0 ;
  wire \current_state[2]_i_14_n_0 ;
  wire \current_state[2]_i_15_n_0 ;
  wire \current_state[2]_i_16_n_0 ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state[2]_i_2__0_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[2]_i_6_n_0 ;
  wire \current_state[2]_i_7_n_0 ;
  wire \current_state[2]_i_8_n_0 ;
  wire \current_state[2]_i_9_n_0 ;
  wire \current_state[3]_i_10_n_0 ;
  wire \current_state[3]_i_11_n_0 ;
  wire \current_state[3]_i_12_n_0 ;
  wire \current_state[3]_i_13_n_0 ;
  wire \current_state[3]_i_14_n_0 ;
  wire \current_state[3]_i_15_n_0 ;
  wire \current_state[3]_i_16_n_0 ;
  wire \current_state[3]_i_17_n_0 ;
  wire \current_state[3]_i_1_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state[3]_i_3_n_0 ;
  wire \current_state[3]_i_4_n_0 ;
  wire \current_state[3]_i_5_n_0 ;
  wire \current_state[3]_i_6_n_0 ;
  wire \current_state[3]_i_7_n_0 ;
  wire \current_state[3]_i_8_n_0 ;
  wire \current_state[3]_i_9_n_0 ;
  wire \current_state[3]_rep_i_1_n_0 ;
  wire \current_state[4]_i_1_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire \current_state[4]_i_3_n_0 ;
  wire \current_state[4]_i_4_n_0 ;
  wire \current_state[4]_i_5_n_0 ;
  wire \current_state[5]_i_10_n_0 ;
  wire \current_state[5]_i_11_n_0 ;
  wire \current_state[5]_i_13_n_0 ;
  wire \current_state[5]_i_15_n_0 ;
  wire \current_state[5]_i_16_n_0 ;
  wire \current_state[5]_i_17_n_0 ;
  wire \current_state[5]_i_18_n_0 ;
  wire \current_state[5]_i_19_n_0 ;
  wire \current_state[5]_i_20_n_0 ;
  wire \current_state[5]_i_21_n_0 ;
  wire \current_state[5]_i_22_n_0 ;
  wire \current_state[5]_i_23_n_0 ;
  wire \current_state[5]_i_24_n_0 ;
  wire \current_state[5]_i_25_n_0 ;
  wire \current_state[5]_i_26_n_0 ;
  wire \current_state[5]_i_4_n_0 ;
  wire \current_state[5]_i_5_n_0 ;
  wire \current_state[5]_i_6_n_0 ;
  wire \current_state[5]_i_7_n_0 ;
  wire \current_state[5]_i_8_n_0 ;
  wire \current_state[5]_i_9_n_0 ;
  wire \current_state_reg[3]_rep_n_0 ;
  wire \current_state_reg[5]_i_12_n_2 ;
  wire \current_state_reg[5]_i_12_n_3 ;
  wire \current_state_reg[5]_i_14_n_0 ;
  wire \current_state_reg[5]_i_14_n_1 ;
  wire \current_state_reg[5]_i_14_n_2 ;
  wire \current_state_reg[5]_i_14_n_3 ;
  wire \current_state_reg[5]_i_2_n_0 ;
  wire \current_state_reg_n_0_[2] ;
  wire \current_state_reg_n_0_[3] ;
  wire \current_state_reg_n_0_[4] ;
  wire \current_state_reg_n_0_[5] ;
  wire eqOp0_out;
  wire [1:0]\err_code[1] ;
  wire geqOp;
  wire geqOp1_in;
  wire [7:0]graphic_addressA;
  wire \graphic_addressA[10]_i_1_n_0 ;
  wire \graphic_addressA[11]_i_1_n_0 ;
  wire \graphic_addressA[11]_i_2_n_0 ;
  wire \graphic_addressA[11]_i_6_n_0 ;
  wire \graphic_addressA[3]_i_2_n_0 ;
  wire \graphic_addressA[3]_i_3_n_0 ;
  wire \graphic_addressA[3]_i_4_n_0 ;
  wire \graphic_addressA[3]_i_5_n_0 ;
  wire \graphic_addressA[3]_i_6_n_0 ;
  wire \graphic_addressA[5]_i_5_n_0 ;
  wire \graphic_addressA[7]_i_1_n_0 ;
  wire \graphic_addressA[7]_i_3_n_0 ;
  wire \graphic_addressA[7]_i_4_n_0 ;
  wire \graphic_addressA[7]_i_7_n_0 ;
  wire \graphic_addressA[7]_i_8_n_0 ;
  wire \graphic_addressA[7]_i_9_n_0 ;
  wire \graphic_addressA[8]_i_1_n_0 ;
  wire \graphic_addressA[9]_i_1_n_0 ;
  wire \graphic_addressA_reg[11]_i_3_n_3 ;
  wire \graphic_addressA_reg[11]_i_3_n_6 ;
  wire \graphic_addressA_reg[11]_i_3_n_7 ;
  wire \graphic_addressA_reg[11]_i_4_n_3 ;
  wire \graphic_addressA_reg[11]_i_4_n_6 ;
  wire \graphic_addressA_reg[11]_i_4_n_7 ;
  wire \graphic_addressA_reg[5]_i_2_n_0 ;
  wire \graphic_addressA_reg[5]_i_2_n_1 ;
  wire \graphic_addressA_reg[5]_i_2_n_2 ;
  wire \graphic_addressA_reg[5]_i_2_n_3 ;
  wire \graphic_addressA_reg[5]_i_2_n_4 ;
  wire \graphic_addressA_reg[5]_i_2_n_5 ;
  wire \graphic_addressA_reg[5]_i_2_n_6 ;
  wire \graphic_addressA_reg[5]_i_2_n_7 ;
  wire \graphic_addressA_reg[7]_i_5_n_0 ;
  wire \graphic_addressA_reg[7]_i_5_n_1 ;
  wire \graphic_addressA_reg[7]_i_5_n_2 ;
  wire \graphic_addressA_reg[7]_i_5_n_3 ;
  wire \graphic_addressA_reg[7]_i_5_n_4 ;
  wire \graphic_addressA_reg[7]_i_5_n_5 ;
  wire \graphic_addressA_reg[7]_i_5_n_6 ;
  wire \graphic_addressA_reg[7]_i_5_n_7 ;
  wire \graphic_addressA_reg[7]_i_6_n_0 ;
  wire \graphic_addressA_reg[7]_i_6_n_1 ;
  wire \graphic_addressA_reg[7]_i_6_n_2 ;
  wire \graphic_addressA_reg[7]_i_6_n_3 ;
  wire \graphic_addressA_reg[7]_i_6_n_4 ;
  wire \graphic_addressA_reg[7]_i_6_n_5 ;
  wire \graphic_addressA_reg[7]_i_6_n_6 ;
  wire \graphic_addressA_reg[7]_i_6_n_7 ;
  wire \graphic_addressA_reg_n_0_[0] ;
  wire \graphic_addressA_reg_n_0_[10] ;
  wire \graphic_addressA_reg_n_0_[11] ;
  wire \graphic_addressA_reg_n_0_[1] ;
  wire \graphic_addressA_reg_n_0_[2] ;
  wire \graphic_addressA_reg_n_0_[3] ;
  wire \graphic_addressA_reg_n_0_[4] ;
  wire \graphic_addressA_reg_n_0_[5] ;
  wire \graphic_addressA_reg_n_0_[6] ;
  wire \graphic_addressA_reg_n_0_[7] ;
  wire \graphic_addressA_reg_n_0_[8] ;
  wire \graphic_addressA_reg_n_0_[9] ;
  wire [7:0]graphic_addressB;
  wire \graphic_addressB[10]_i_1_n_0 ;
  wire \graphic_addressB[11]_i_1_n_0 ;
  wire \graphic_addressB[11]_i_2_n_0 ;
  wire \graphic_addressB[11]_i_6_n_0 ;
  wire \graphic_addressB[2]_i_2_n_0 ;
  wire \graphic_addressB[5]_i_5_n_0 ;
  wire \graphic_addressB[7]_i_1_n_0 ;
  wire \graphic_addressB[7]_i_3_n_0 ;
  wire \graphic_addressB[7]_i_6_n_0 ;
  wire \graphic_addressB[7]_i_7_n_0 ;
  wire \graphic_addressB[7]_i_8_n_0 ;
  wire \graphic_addressB[8]_i_1_n_0 ;
  wire \graphic_addressB[9]_i_1_n_0 ;
  wire \graphic_addressB_reg[11]_i_3_n_3 ;
  wire \graphic_addressB_reg[11]_i_3_n_6 ;
  wire \graphic_addressB_reg[11]_i_3_n_7 ;
  wire \graphic_addressB_reg[11]_i_4_n_3 ;
  wire \graphic_addressB_reg[11]_i_4_n_6 ;
  wire \graphic_addressB_reg[11]_i_4_n_7 ;
  wire \graphic_addressB_reg[5]_i_2_n_0 ;
  wire \graphic_addressB_reg[5]_i_2_n_1 ;
  wire \graphic_addressB_reg[5]_i_2_n_2 ;
  wire \graphic_addressB_reg[5]_i_2_n_3 ;
  wire \graphic_addressB_reg[5]_i_2_n_4 ;
  wire \graphic_addressB_reg[5]_i_2_n_5 ;
  wire \graphic_addressB_reg[5]_i_2_n_6 ;
  wire \graphic_addressB_reg[5]_i_2_n_7 ;
  wire \graphic_addressB_reg[7]_i_4_n_0 ;
  wire \graphic_addressB_reg[7]_i_4_n_1 ;
  wire \graphic_addressB_reg[7]_i_4_n_2 ;
  wire \graphic_addressB_reg[7]_i_4_n_3 ;
  wire \graphic_addressB_reg[7]_i_4_n_4 ;
  wire \graphic_addressB_reg[7]_i_4_n_5 ;
  wire \graphic_addressB_reg[7]_i_4_n_6 ;
  wire \graphic_addressB_reg[7]_i_4_n_7 ;
  wire \graphic_addressB_reg[7]_i_5_n_0 ;
  wire \graphic_addressB_reg[7]_i_5_n_1 ;
  wire \graphic_addressB_reg[7]_i_5_n_2 ;
  wire \graphic_addressB_reg[7]_i_5_n_3 ;
  wire \graphic_addressB_reg[7]_i_5_n_4 ;
  wire \graphic_addressB_reg[7]_i_5_n_5 ;
  wire \graphic_addressB_reg[7]_i_5_n_6 ;
  wire \graphic_addressB_reg[7]_i_5_n_7 ;
  wire \graphic_addressB_reg_n_0_[0] ;
  wire \graphic_addressB_reg_n_0_[10] ;
  wire \graphic_addressB_reg_n_0_[11] ;
  wire \graphic_addressB_reg_n_0_[1] ;
  wire \graphic_addressB_reg_n_0_[2] ;
  wire \graphic_addressB_reg_n_0_[3] ;
  wire \graphic_addressB_reg_n_0_[4] ;
  wire \graphic_addressB_reg_n_0_[5] ;
  wire \graphic_addressB_reg_n_0_[6] ;
  wire \graphic_addressB_reg_n_0_[7] ;
  wire \graphic_addressB_reg_n_0_[8] ;
  wire \graphic_addressB_reg_n_0_[9] ;
  wire [7:0]graphic_bufferA;
  wire \graphic_bufferA[7]_i_1_n_0 ;
  wire \graphic_bufferA[7]_i_2_n_0 ;
  wire [7:0]graphic_bufferB;
  wire \graphic_bufferB[0]_i_2_n_0 ;
  wire \graphic_bufferB[0]_i_3_n_0 ;
  wire \graphic_bufferB[0]_i_4_n_0 ;
  wire \graphic_bufferB[1]_i_2_n_0 ;
  wire \graphic_bufferB[1]_i_3_n_0 ;
  wire \graphic_bufferB[1]_i_4_n_0 ;
  wire \graphic_bufferB[2]_i_1_n_0 ;
  wire \graphic_bufferB[2]_i_2_n_0 ;
  wire \graphic_bufferB[2]_i_3_n_0 ;
  wire \graphic_bufferB[3]_i_1_n_0 ;
  wire \graphic_bufferB[3]_i_2_n_0 ;
  wire \graphic_bufferB[3]_i_3_n_0 ;
  wire \graphic_bufferB[4]_i_1_n_0 ;
  wire \graphic_bufferB[4]_i_2_n_0 ;
  wire \graphic_bufferB[5]_i_1_n_0 ;
  wire \graphic_bufferB[6]_i_1_n_0 ;
  wire \graphic_bufferB[7]_i_1_n_0 ;
  wire \graphic_bufferB_reg[0]_i_1_n_0 ;
  wire \graphic_bufferB_reg[1]_i_1_n_0 ;
  wire graphic_collision_i_10_n_0;
  wire graphic_collision_i_11_n_0;
  wire graphic_collision_i_12_n_0;
  wire graphic_collision_i_1_n_0;
  wire graphic_collision_i_2_n_0;
  wire graphic_collision_i_3_n_0;
  wire graphic_collision_i_4_n_0;
  wire graphic_collision_i_5_n_0;
  wire graphic_collision_i_6_n_0;
  wire graphic_collision_i_7_n_0;
  wire graphic_collision_i_8_n_0;
  wire graphic_collision_i_9_n_0;
  wire graphic_collision_reg_n_0;
  wire [2:0]graphic_offset;
  wire \graphic_offset[0]_i_1_n_0 ;
  wire \graphic_offset[1]_i_1_n_0 ;
  wire \graphic_offset[2]_i_1_n_0 ;
  wire \graphic_offset[2]_i_2_n_0 ;
  wire instruction_high0;
  wire \instruction_high[7]_i_2_n_0 ;
  wire \instruction_high_reg_n_0_[0] ;
  wire \instruction_high_reg_n_0_[1] ;
  wire \instruction_high_reg_n_0_[2] ;
  wire \instruction_high_reg_n_0_[3] ;
  wire [15:0]keyPad_IBUF;
  wire [3:0]key_counter;
  wire key_counter0;
  wire \key_counter[0]_i_1_n_0 ;
  wire \key_counter[1]_i_1_n_0 ;
  wire \key_counter[2]_i_1_n_0 ;
  wire \key_counter[3]_i_2_n_0 ;
  wire [7:0]kk;
  wire kk0;
  wire \kk[7]_i_2_n_0 ;
  wire \memAddress[0]_i_10_n_0 ;
  wire \memAddress[0]_i_11_n_0 ;
  wire \memAddress[0]_i_14_n_0 ;
  wire \memAddress[0]_i_1_n_0 ;
  wire \memAddress[0]_i_2_n_0 ;
  wire \memAddress[0]_i_3_n_0 ;
  wire \memAddress[0]_i_4_n_0 ;
  wire \memAddress[0]_i_5_n_0 ;
  wire \memAddress[0]_i_8_n_0 ;
  wire \memAddress[0]_i_9_n_0 ;
  wire \memAddress[10]_i_1_n_0 ;
  wire \memAddress[10]_i_2_n_0 ;
  wire \memAddress[10]_i_3_n_0 ;
  wire \memAddress[10]_i_4_n_0 ;
  wire \memAddress[10]_i_5_n_0 ;
  wire \memAddress[11]_i_10_n_0 ;
  wire \memAddress[11]_i_11_n_0 ;
  wire \memAddress[11]_i_1_n_0 ;
  wire \memAddress[11]_i_2_n_0 ;
  wire \memAddress[11]_i_3_n_0 ;
  wire \memAddress[11]_i_4_n_0 ;
  wire \memAddress[11]_i_5_n_0 ;
  wire \memAddress[11]_i_6_n_0 ;
  wire \memAddress[11]_i_7_n_0 ;
  wire \memAddress[11]_i_8_n_0 ;
  wire \memAddress[11]_i_9_n_0 ;
  wire \memAddress[1]_i_1_n_0 ;
  wire \memAddress[1]_i_2_n_0 ;
  wire \memAddress[1]_i_3_n_0 ;
  wire \memAddress[1]_i_4_n_0 ;
  wire \memAddress[1]_i_5_n_0 ;
  wire \memAddress[2]_i_1_n_0 ;
  wire \memAddress[2]_i_2_n_0 ;
  wire \memAddress[2]_i_3_n_0 ;
  wire \memAddress[2]_i_4_n_0 ;
  wire \memAddress[2]_i_5_n_0 ;
  wire \memAddress[3]_i_1_n_0 ;
  wire \memAddress[3]_i_2_n_0 ;
  wire \memAddress[3]_i_3_n_0 ;
  wire \memAddress[3]_i_4_n_0 ;
  wire \memAddress[3]_i_5_n_0 ;
  wire \memAddress[4]_i_1_n_0 ;
  wire \memAddress[4]_i_2_n_0 ;
  wire \memAddress[4]_i_3_n_0 ;
  wire \memAddress[4]_i_4_n_0 ;
  wire \memAddress[4]_i_5_n_0 ;
  wire \memAddress[5]_i_1_n_0 ;
  wire \memAddress[5]_i_2_n_0 ;
  wire \memAddress[5]_i_3_n_0 ;
  wire \memAddress[5]_i_4_n_0 ;
  wire \memAddress[5]_i_5_n_0 ;
  wire \memAddress[6]_i_1_n_0 ;
  wire \memAddress[6]_i_2_n_0 ;
  wire \memAddress[6]_i_3_n_0 ;
  wire \memAddress[6]_i_4_n_0 ;
  wire \memAddress[6]_i_5_n_0 ;
  wire \memAddress[7]_i_1_n_0 ;
  wire \memAddress[7]_i_2_n_0 ;
  wire \memAddress[7]_i_3_n_0 ;
  wire \memAddress[7]_i_4_n_0 ;
  wire \memAddress[7]_i_5_n_0 ;
  wire \memAddress[8]_i_1_n_0 ;
  wire \memAddress[8]_i_2_n_0 ;
  wire \memAddress[8]_i_3_n_0 ;
  wire \memAddress[8]_i_4_n_0 ;
  wire \memAddress[8]_i_5_n_0 ;
  wire \memAddress[9]_i_1_n_0 ;
  wire \memAddress[9]_i_2_n_0 ;
  wire \memAddress[9]_i_3_n_0 ;
  wire \memAddress[9]_i_4_n_0 ;
  wire \memAddress[9]_i_5_n_0 ;
  wire \memAddress_reg[0]_i_6_n_0 ;
  wire \memAddress_reg[0]_i_6_n_1 ;
  wire \memAddress_reg[0]_i_6_n_2 ;
  wire \memAddress_reg[0]_i_6_n_3 ;
  wire \memAddress_reg[0]_i_6_n_4 ;
  wire \memAddress_reg[0]_i_6_n_5 ;
  wire \memAddress_reg[0]_i_6_n_6 ;
  wire \memAddress_reg[0]_i_6_n_7 ;
  wire \memAddress_reg[0]_i_7_n_0 ;
  wire \memAddress_reg[0]_i_7_n_1 ;
  wire \memAddress_reg[0]_i_7_n_2 ;
  wire \memAddress_reg[0]_i_7_n_3 ;
  wire \memAddress_reg[11]_i_12_n_1 ;
  wire \memAddress_reg[11]_i_12_n_2 ;
  wire \memAddress_reg[11]_i_12_n_3 ;
  wire \memAddress_reg[11]_i_13_n_1 ;
  wire \memAddress_reg[11]_i_13_n_2 ;
  wire \memAddress_reg[11]_i_13_n_3 ;
  wire \memAddress_reg[11]_i_13_n_4 ;
  wire \memAddress_reg[11]_i_13_n_5 ;
  wire \memAddress_reg[11]_i_13_n_6 ;
  wire \memAddress_reg[11]_i_13_n_7 ;
  wire \memAddress_reg[7]_i_6_n_0 ;
  wire \memAddress_reg[7]_i_6_n_1 ;
  wire \memAddress_reg[7]_i_6_n_2 ;
  wire \memAddress_reg[7]_i_6_n_3 ;
  wire \memAddress_reg[7]_i_7_n_0 ;
  wire \memAddress_reg[7]_i_7_n_1 ;
  wire \memAddress_reg[7]_i_7_n_2 ;
  wire \memAddress_reg[7]_i_7_n_3 ;
  wire \memAddress_reg[7]_i_7_n_4 ;
  wire \memAddress_reg[7]_i_7_n_5 ;
  wire \memAddress_reg[7]_i_7_n_6 ;
  wire \memAddress_reg[7]_i_7_n_7 ;
  wire \memWrite[0]_i_1_n_0 ;
  wire \memWrite[0]_i_2_n_0 ;
  wire \memWrite[0]_i_3_n_0 ;
  wire \memWrite[1]_i_1_n_0 ;
  wire \memWrite[1]_i_2_n_0 ;
  wire \memWrite[1]_i_3_n_0 ;
  wire \memWrite[2]_i_1_n_0 ;
  wire \memWrite[2]_i_2_n_0 ;
  wire \memWrite[2]_i_3_n_0 ;
  wire \memWrite[3]_i_1_n_0 ;
  wire \memWrite[3]_i_2_n_0 ;
  wire \memWrite[3]_i_3_n_0 ;
  wire \memWrite[4]_i_1_n_0 ;
  wire \memWrite[4]_i_2_n_0 ;
  wire \memWrite[4]_i_3_n_0 ;
  wire \memWrite[4]_i_4_n_0 ;
  wire \memWrite[5]_i_1_n_0 ;
  wire \memWrite[5]_i_2_n_0 ;
  wire \memWrite[5]_i_3_n_0 ;
  wire \memWrite[5]_i_4_n_0 ;
  wire \memWrite[6]_i_1_n_0 ;
  wire \memWrite[6]_i_2_n_0 ;
  wire \memWrite[6]_i_3_n_0 ;
  wire \memWrite[6]_i_4_n_0 ;
  wire \memWrite[6]_i_5_n_0 ;
  wire \memWrite[7]_i_1_n_0 ;
  wire \memWrite[7]_i_2_n_0 ;
  wire \memWrite[7]_i_3_n_0 ;
  wire \memWrite[7]_i_4_n_0 ;
  wire \memWrite[7]_i_5_n_0 ;
  wire \memWrite[7]_i_6_n_0 ;
  wire \memWrite[7]_i_7_n_0 ;
  wire \memWrite[7]_i_8_n_0 ;
  wire \memWrite[7]_i_9_n_0 ;
  wire mem_done;
  wire mem_ret_data0;
  wire \mem_ret_data[7]_i_2_n_0 ;
  wire \mem_ret_data[7]_i_3_n_0 ;
  wire \mem_ret_data_reg_n_0_[0] ;
  wire \mem_ret_data_reg_n_0_[1] ;
  wire \mem_ret_data_reg_n_0_[2] ;
  wire \mem_ret_data_reg_n_0_[3] ;
  wire \mem_ret_data_reg_n_0_[4] ;
  wire \mem_ret_data_reg_n_0_[5] ;
  wire \mem_ret_data_reg_n_0_[6] ;
  wire \mem_ret_data_reg_n_0_[7] ;
  wire [5:0]mem_ret_state;
  wire mem_ret_state0;
  wire \mem_ret_state[0]_i_1_n_0 ;
  wire \mem_ret_state[1]_i_1_n_0 ;
  wire \mem_ret_state[2]_i_1_n_0 ;
  wire \mem_ret_state[3]_i_1_n_0 ;
  wire \mem_ret_state[3]_i_2_n_0 ;
  wire \mem_ret_state[3]_i_3_n_0 ;
  wire \mem_ret_state[4]_i_1_n_0 ;
  wire \mem_ret_state[5]_i_10_n_0 ;
  wire \mem_ret_state[5]_i_11_n_0 ;
  wire \mem_ret_state[5]_i_12_n_0 ;
  wire \mem_ret_state[5]_i_13_n_0 ;
  wire \mem_ret_state[5]_i_14_n_0 ;
  wire \mem_ret_state[5]_i_15_n_0 ;
  wire \mem_ret_state[5]_i_2_n_0 ;
  wire \mem_ret_state[5]_i_3_n_0 ;
  wire \mem_ret_state[5]_i_4_n_0 ;
  wire \mem_ret_state[5]_i_5_n_0 ;
  wire \mem_ret_state[5]_i_6_n_0 ;
  wire \mem_ret_state[5]_i_7_n_0 ;
  wire \mem_ret_state[5]_i_8_n_0 ;
  wire \mem_ret_state[5]_i_9_n_0 ;
  wire mem_valid;
  wire mem_valid_i_1_n_0;
  wire mem_write;
  wire [11:0]multi_address;
  wire multi_address0;
  wire \multi_address[0]_i_1_n_0 ;
  wire \multi_address[10]_i_1_n_0 ;
  wire \multi_address[11]_i_2_n_0 ;
  wire \multi_address[11]_i_3_n_0 ;
  wire \multi_address[11]_i_4_n_0 ;
  wire \multi_address[11]_i_5_n_0 ;
  wire \multi_address[1]_i_1_n_0 ;
  wire \multi_address[2]_i_1_n_0 ;
  wire \multi_address[3]_i_1_n_0 ;
  wire \multi_address[4]_i_1_n_0 ;
  wire \multi_address[5]_i_1_n_0 ;
  wire \multi_address[6]_i_1_n_0 ;
  wire \multi_address[7]_i_1_n_0 ;
  wire \multi_address[8]_i_1_n_0 ;
  wire \multi_address[9]_i_1_n_0 ;
  wire \multi_address_reg[11]_i_6_n_2 ;
  wire \multi_address_reg[11]_i_6_n_3 ;
  wire \multi_address_reg[11]_i_6_n_5 ;
  wire \multi_address_reg[11]_i_6_n_6 ;
  wire \multi_address_reg[11]_i_6_n_7 ;
  wire \multi_address_reg[11]_i_7_n_2 ;
  wire \multi_address_reg[11]_i_7_n_3 ;
  wire \multi_address_reg[4]_i_2_n_0 ;
  wire \multi_address_reg[4]_i_2_n_1 ;
  wire \multi_address_reg[4]_i_2_n_2 ;
  wire \multi_address_reg[4]_i_2_n_3 ;
  wire \multi_address_reg[4]_i_3_n_0 ;
  wire \multi_address_reg[4]_i_3_n_1 ;
  wire \multi_address_reg[4]_i_3_n_2 ;
  wire \multi_address_reg[4]_i_3_n_3 ;
  wire \multi_address_reg[4]_i_3_n_4 ;
  wire \multi_address_reg[4]_i_3_n_5 ;
  wire \multi_address_reg[4]_i_3_n_6 ;
  wire \multi_address_reg[4]_i_3_n_7 ;
  wire \multi_address_reg[8]_i_2_n_0 ;
  wire \multi_address_reg[8]_i_2_n_1 ;
  wire \multi_address_reg[8]_i_2_n_2 ;
  wire \multi_address_reg[8]_i_2_n_3 ;
  wire \multi_address_reg[8]_i_2_n_4 ;
  wire \multi_address_reg[8]_i_2_n_5 ;
  wire \multi_address_reg[8]_i_2_n_6 ;
  wire \multi_address_reg[8]_i_2_n_7 ;
  wire \multi_address_reg[8]_i_3_n_0 ;
  wire \multi_address_reg[8]_i_3_n_1 ;
  wire \multi_address_reg[8]_i_3_n_2 ;
  wire \multi_address_reg[8]_i_3_n_3 ;
  wire [8:0]multi_count;
  wire multi_count0;
  wire \multi_count[0]_i_1_n_0 ;
  wire \multi_count[1]_i_1_n_0 ;
  wire \multi_count[2]_i_1_n_0 ;
  wire \multi_count[3]_i_1_n_0 ;
  wire \multi_count[4]_i_1_n_0 ;
  wire \multi_count[5]_i_1_n_0 ;
  wire \multi_count[6]_i_1_n_0 ;
  wire \multi_count[7]_i_1_n_0 ;
  wire \multi_count[7]_i_3_n_0 ;
  wire \multi_count[7]_i_4_n_0 ;
  wire \multi_count[8]_i_1_n_0 ;
  wire [3:0]n;
  wire n0;
  wire \n[0]_i_1_n_0 ;
  wire \n[1]_i_1_n_0 ;
  wire \n[2]_i_1_n_0 ;
  wire \n[3]_i_2_n_0 ;
  wire \n[3]_i_3_n_0 ;
  wire \n[3]_i_4_n_0 ;
  wire neqOp;
  wire [3:0]p_0_in;
  wire p_0_in2_out;
  wire [15:7]p_2_in;
  wire [8:0]p_5_in;
  wire [11:0]plusOp;
  wire [11:0]plusOp0_in;
  wire [11:1]plusOp1_in;
  wire [2:0]reg_copy_num;
  wire \reg_copy_num[1]_i_1_n_0 ;
  wire \reg_copy_num[3]_i_1_n_0 ;
  wire \reg_copy_num[3]_i_2_n_0 ;
  wire \reg_copy_num_reg_n_0_[0] ;
  wire \reg_copy_num_reg_n_0_[1] ;
  wire \reg_copy_num_reg_n_0_[2] ;
  wire \reg_copy_num_reg_n_0_[3] ;
  wire [11:0]\s_address_reg[11] ;
  wire [7:0]\s_dataIn_reg[7] ;
  wire s_sys_reset;
  wire [7:0]sprite_buffer;
  wire \sprite_buffer[7]_i_1_n_0 ;
  wire \sprite_buffer[7]_i_2_n_0 ;
  wire sys_reset_reg;
  wire sys_reset_reg_0;
  wire sys_reset_reg_1;
  wire sys_reset_reg_10;
  wire sys_reset_reg_11;
  wire sys_reset_reg_12;
  wire sys_reset_reg_13;
  wire sys_reset_reg_14;
  wire sys_reset_reg_15;
  wire sys_reset_reg_16;
  wire sys_reset_reg_17;
  wire sys_reset_reg_2;
  wire sys_reset_reg_3;
  wire sys_reset_reg_4;
  wire sys_reset_reg_5;
  wire sys_reset_reg_6;
  wire sys_reset_reg_7;
  wire sys_reset_reg_8;
  wire sys_reset_reg_9;
  wire \tmp_err_code[0]_i_1_n_0 ;
  wire \tmp_err_code[1]_i_10_n_0 ;
  wire \tmp_err_code[1]_i_11_n_0 ;
  wire \tmp_err_code[1]_i_12_n_0 ;
  wire \tmp_err_code[1]_i_1_n_0 ;
  wire \tmp_err_code[1]_i_2_n_0 ;
  wire \tmp_err_code[1]_i_3_n_0 ;
  wire \tmp_err_code[1]_i_4_n_0 ;
  wire \tmp_err_code[1]_i_5_n_0 ;
  wire \tmp_err_code[1]_i_6_n_0 ;
  wire \tmp_err_code[1]_i_7_n_0 ;
  wire \tmp_err_code[1]_i_8_n_0 ;
  wire \tmp_err_code[1]_i_9_n_0 ;
  wire tmp_mem_write_i_1_n_0;
  wire tmp_mem_write_i_2_n_0;
  wire tmp_mem_write_i_3_n_0;
  wire tmp_mem_write_i_4_n_0;
  wire tmp_mem_write_i_5_n_0;
  wire tmp_mem_write_i_6_n_0;
  wire tmp_mem_write_i_7_n_0;
  wire [3:0]x;
  wire x0;
  wire \x[0]_i_1_n_0 ;
  wire \x[1]_i_1_n_0 ;
  wire \x[2]_i_1_n_0 ;
  wire \x[3]_i_2_n_0 ;
  wire \x[3]_i_3_n_0 ;
  wire \x[3]_i_4_n_0 ;
  wire [3:0]y;
  wire y0;
  wire \y[3]_i_2_n_0 ;
  wire [3:3]\NLW_I_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PC_reg[11]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_PC_reg[11]_i_25_CO_UNCONNECTED ;
  wire [3:2]\NLW_PC_reg[11]_i_26_CO_UNCONNECTED ;
  wire [3:0]\NLW_PC_reg[11]_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_PC_reg[11]_i_55_O_UNCONNECTED ;
  wire [3:2]\NLW_PC_reg[11]_i_58_CO_UNCONNECTED ;
  wire [3:0]\NLW_PC_reg[11]_i_58_O_UNCONNECTED ;
  wire [3:0]\NLW_PC_reg[11]_i_63_O_UNCONNECTED ;
  wire [3:3]\NLW_cpu_REG_reg[13][6]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_cpu_REG_reg[15][0]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_cpu_REG_reg[15][0]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_cpu_REG_reg[15][0]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_cpu_REG_reg[15][0]_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_cpu_REG_reg[15][7]_i_19_CO_UNCONNECTED ;
  wire [1:0]NLW_cpu_STACK_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_cpu_STACK_reg_0_15_6_11_DOD_UNCONNECTED;
  wire [3:2]\NLW_current_state_reg[5]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[5]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_current_state_reg[5]_i_14_O_UNCONNECTED ;
  wire [3:1]\NLW_graphic_addressA_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_graphic_addressA_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_graphic_addressA_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_graphic_addressA_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_graphic_addressB_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_graphic_addressB_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_graphic_addressB_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_graphic_addressB_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_memAddress_reg[11]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_memAddress_reg[11]_i_13_CO_UNCONNECTED ;
  wire [3:2]\NLW_multi_address_reg[11]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_multi_address_reg[11]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_multi_address_reg[11]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_multi_address_reg[11]_i_7_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hBFB0808F)) 
    \BCD_left[0]_i_1 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\BCD_left_reg_n_0_[0] ),
        .O(BCD_left[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \BCD_left[0]_i_2 
       (.I0(\BCD_left[0]_i_3_n_0 ),
        .I1(\BCD_left[0]_i_4_n_0 ),
        .I2(\BCD_left[0]_i_5_n_0 ),
        .I3(x[2]),
        .I4(x[3]),
        .I5(\BCD_left[0]_i_6_n_0 ),
        .O(\BCD_left[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[0]_i_3 
       (.I0(\cpu_REG_reg[7]_7 [0]),
        .I1(\cpu_REG_reg[6]_8 [0]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[5]_9 [0]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[4]_10 [0]),
        .O(\BCD_left[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[0]_i_4 
       (.I0(\cpu_REG_reg[3]_11 [0]),
        .I1(\cpu_REG_reg[2]_12 [0]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[1]_13 [0]),
        .I4(x[0]),
        .I5(R[0]),
        .O(\BCD_left[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[0]_i_5 
       (.I0(\cpu_REG_reg[15]_15 [0]),
        .I1(\cpu_REG_reg[14]_14 [0]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[13]_1 [0]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[12]_2 [0]),
        .O(\BCD_left[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[0]_i_6 
       (.I0(\cpu_REG_reg[11]_3 [0]),
        .I1(\cpu_REG_reg[10]_4 [0]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[9]_5 [0]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[8]_6 [0]),
        .O(\BCD_left[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8BF0F0F00F)) 
    \BCD_left[1]_i_1 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\BCD_left_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(\BCD_left_reg_n_0_[0] ),
        .I5(Q[0]),
        .O(BCD_left[1]));
  LUT6 #(
    .INIT(64'hB88BFC03B88B30CF)) 
    \BCD_left[2]_i_1 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\BCD_left[2]_i_3_n_0 ),
        .I3(\BCD_left_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\BCD_left_reg_n_0_[1] ),
        .O(BCD_left[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \BCD_left[2]_i_2 
       (.I0(\BCD_left[2]_i_4_n_0 ),
        .I1(\BCD_left[2]_i_5_n_0 ),
        .I2(\BCD_left[2]_i_6_n_0 ),
        .I3(x[2]),
        .I4(x[3]),
        .I5(\BCD_left[2]_i_7_n_0 ),
        .O(\BCD_left[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \BCD_left[2]_i_3 
       (.I0(Q[1]),
        .I1(\BCD_left_reg_n_0_[1] ),
        .I2(\BCD_left_reg_n_0_[0] ),
        .O(\BCD_left[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[2]_i_4 
       (.I0(\cpu_REG_reg[7]_7 [2]),
        .I1(\cpu_REG_reg[6]_8 [2]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[5]_9 [2]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[4]_10 [2]),
        .O(\BCD_left[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[2]_i_5 
       (.I0(\cpu_REG_reg[3]_11 [2]),
        .I1(\cpu_REG_reg[2]_12 [2]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[1]_13 [2]),
        .I4(x[0]),
        .I5(R[2]),
        .O(\BCD_left[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[2]_i_6 
       (.I0(\cpu_REG_reg[15]_15 [2]),
        .I1(\cpu_REG_reg[14]_14 [2]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[13]_1 [2]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[12]_2 [2]),
        .O(\BCD_left[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[2]_i_7 
       (.I0(\cpu_REG_reg[11]_3 [2]),
        .I1(\cpu_REG_reg[10]_4 [2]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[9]_5 [2]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[8]_6 [2]),
        .O(\BCD_left[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \BCD_left[3]_i_1 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\BCD_left[3]_i_2_n_0 ),
        .O(BCD_left[3]));
  LUT6 #(
    .INIT(64'h000003FCFA05FA05)) 
    \BCD_left[3]_i_2 
       (.I0(\BCD_left[2]_i_3_n_0 ),
        .I1(\BCD_left_reg_n_0_[1] ),
        .I2(\BCD_left_reg_n_0_[2] ),
        .I3(\BCD_left_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\BCD_left[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA6665)) 
    \BCD_left[4]_i_2 
       (.I0(\BCD_left_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(\BCD_left_reg_n_0_[1] ),
        .I3(\BCD_left_reg_n_0_[0] ),
        .I4(\BCD_left_reg_n_0_[3] ),
        .I5(\BCD_left_reg_n_0_[2] ),
        .O(\BCD_left[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88B8B8B8B8B)) 
    \BCD_left[4]_i_3 
       (.I0(\cpu_REG[15][4]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\BCD_left_reg_n_0_[4] ),
        .I3(\BCD_left_reg_n_0_[1] ),
        .I4(\BCD_left_reg_n_0_[2] ),
        .I5(\BCD_left_reg_n_0_[3] ),
        .O(\BCD_left[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEEAEEEAEEAAA)) 
    \BCD_left[5]_i_1 
       (.I0(\BCD_left[5]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\cpu_REG[15][5]_i_3_n_0 ),
        .I4(\BCD_left[5]_i_3_n_0 ),
        .I5(\BCD_left_reg_n_0_[5] ),
        .O(BCD_left[5]));
  LUT6 #(
    .INIT(64'h4444111155510004)) 
    \BCD_left[5]_i_2 
       (.I0(Q[0]),
        .I1(\current_state[5]_i_11_n_0 ),
        .I2(\BCD_left_reg_n_0_[1] ),
        .I3(\BCD_left_reg_n_0_[0] ),
        .I4(\BCD_left_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(\BCD_left[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \BCD_left[5]_i_3 
       (.I0(\BCD_left_reg_n_0_[4] ),
        .I1(\BCD_left_reg_n_0_[1] ),
        .I2(\BCD_left_reg_n_0_[2] ),
        .I3(\BCD_left_reg_n_0_[3] ),
        .O(\BCD_left[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9999AAAAAAAAAAA6)) 
    \BCD_left[6]_i_2 
       (.I0(\BCD_left_reg_n_0_[6] ),
        .I1(\current_state[5]_i_11_n_0 ),
        .I2(\BCD_left_reg_n_0_[1] ),
        .I3(\BCD_left_reg_n_0_[0] ),
        .I4(\BCD_left_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(\BCD_left[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \BCD_left[6]_i_3 
       (.I0(\cpu_REG[15][6]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\BCD_left_reg_n_0_[6] ),
        .I3(\BCD_left_reg_n_0_[5] ),
        .I4(\BCD_left_reg_n_0_[4] ),
        .I5(\BCD_left[6]_i_4_n_0 ),
        .O(\BCD_left[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \BCD_left[6]_i_4 
       (.I0(\BCD_left_reg_n_0_[3] ),
        .I1(\BCD_left_reg_n_0_[2] ),
        .I2(\BCD_left_reg_n_0_[1] ),
        .O(\BCD_left[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \BCD_left[7]_i_1 
       (.I0(\BCD_left[7]_i_3_n_0 ),
        .I1(\BCD_left[7]_i_4_n_0 ),
        .I2(s_sys_reset),
        .I3(\current_state_reg_n_0_[5] ),
        .O(\BCD_left[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[7]_i_10 
       (.I0(\cpu_REG_reg[11]_3 [7]),
        .I1(\cpu_REG_reg[10]_4 [7]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[9]_5 [7]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[8]_6 [7]),
        .O(\BCD_left[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[7]_i_11 
       (.I0(\cpu_REG_reg[7]_7 [7]),
        .I1(\cpu_REG_reg[6]_8 [7]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[5]_9 [7]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[4]_10 [7]),
        .O(\BCD_left[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[7]_i_12 
       (.I0(\cpu_REG_reg[3]_11 [7]),
        .I1(\cpu_REG_reg[2]_12 [7]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[1]_13 [7]),
        .I4(x[0]),
        .I5(R[7]),
        .O(\BCD_left[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8B00B8FF8BFFB800)) 
    \BCD_left[7]_i_2 
       (.I0(\BCD_left[7]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\BCD_left[7]_i_6_n_0 ),
        .I3(Q[0]),
        .I4(\BCD_left_reg_n_0_[7] ),
        .I5(\BCD_left[7]_i_7_n_0 ),
        .O(BCD_left[7]));
  LUT6 #(
    .INIT(64'h0000000800C00000)) 
    \BCD_left[7]_i_3 
       (.I0(\current_state[5]_i_4_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\BCD_left[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020E00000)) 
    \BCD_left[7]_i_4 
       (.I0(\mem_ret_state[5]_i_13_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\mem_ret_state[5]_i_11_n_0 ),
        .I4(\BCD_left[7]_i_8_n_0 ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\BCD_left[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[7]_i_5 
       (.I0(\BCD_left[7]_i_9_n_0 ),
        .I1(\BCD_left[7]_i_10_n_0 ),
        .I2(x[3]),
        .I3(\BCD_left[7]_i_11_n_0 ),
        .I4(x[2]),
        .I5(\BCD_left[7]_i_12_n_0 ),
        .O(\BCD_left[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \BCD_left[7]_i_6 
       (.I0(\BCD_left_reg_n_0_[5] ),
        .I1(\BCD_left_reg_n_0_[4] ),
        .I2(\BCD_left_reg_n_0_[1] ),
        .I3(\BCD_left_reg_n_0_[2] ),
        .I4(\BCD_left_reg_n_0_[3] ),
        .I5(\BCD_left_reg_n_0_[6] ),
        .O(\BCD_left[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCD4C4C4C4C)) 
    \BCD_left[7]_i_7 
       (.I0(\BCD_left_reg_n_0_[6] ),
        .I1(Q[1]),
        .I2(\BCD_left_reg_n_0_[5] ),
        .I3(\BCD_left_reg_n_0_[0] ),
        .I4(\BCD_left_reg_n_0_[1] ),
        .I5(\current_state[5]_i_11_n_0 ),
        .O(\BCD_left[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BCD_left[7]_i_8 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[3] ),
        .O(\BCD_left[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \BCD_left[7]_i_9 
       (.I0(\cpu_REG_reg[15]_15 [7]),
        .I1(\cpu_REG_reg[14]_14 [7]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[13]_1 [7]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[12]_2 [7]),
        .O(\BCD_left[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_left_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_left[7]_i_1_n_0 ),
        .D(BCD_left[0]),
        .Q(\BCD_left_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_left_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_left[7]_i_1_n_0 ),
        .D(BCD_left[1]),
        .Q(\BCD_left_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_left_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_left[7]_i_1_n_0 ),
        .D(BCD_left[2]),
        .Q(\BCD_left_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_left_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_left[7]_i_1_n_0 ),
        .D(BCD_left[3]),
        .Q(\BCD_left_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_left_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_left[7]_i_1_n_0 ),
        .D(BCD_left[4]),
        .Q(\BCD_left_reg_n_0_[4] ),
        .R(1'b0));
  MUXF7 \BCD_left_reg[4]_i_1 
       (.I0(\BCD_left[4]_i_2_n_0 ),
        .I1(\BCD_left[4]_i_3_n_0 ),
        .O(BCD_left[4]),
        .S(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_left_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_left[7]_i_1_n_0 ),
        .D(BCD_left[5]),
        .Q(\BCD_left_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_left_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_left[7]_i_1_n_0 ),
        .D(BCD_left[6]),
        .Q(\BCD_left_reg_n_0_[6] ),
        .R(1'b0));
  MUXF7 \BCD_left_reg[6]_i_1 
       (.I0(\BCD_left[6]_i_2_n_0 ),
        .I1(\BCD_left[6]_i_3_n_0 ),
        .O(BCD_left[6]),
        .S(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_left_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_left[7]_i_1_n_0 ),
        .D(BCD_left[7]),
        .Q(\BCD_left_reg_n_0_[7] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \BCD_total[0]_i_1 
       (.I0(\BCD_total_reg_n_0_[0] ),
        .O(\BCD_total[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00080000)) 
    \BCD_total[1]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\BCD_total_reg_n_0_[0] ),
        .I2(\BCD_total[7]_i_4_n_0 ),
        .I3(\BCD_total[7]_i_5_n_0 ),
        .I4(\BCD_total[7]_i_2_n_0 ),
        .I5(\BCD_total_reg_n_0_[1] ),
        .O(\BCD_total[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BCD_total[2]_i_1 
       (.I0(\BCD_total_reg_n_0_[2] ),
        .I1(\BCD_total_reg_n_0_[0] ),
        .I2(\BCD_total_reg_n_0_[1] ),
        .O(\BCD_total[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \BCD_total[3]_i_1 
       (.I0(\BCD_total_reg_n_0_[3] ),
        .I1(\BCD_total_reg_n_0_[2] ),
        .I2(\BCD_total_reg_n_0_[1] ),
        .I3(\BCD_total_reg_n_0_[0] ),
        .O(\BCD_total[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \BCD_total[4]_i_1 
       (.I0(\BCD_total_reg_n_0_[4] ),
        .I1(\BCD_total_reg_n_0_[3] ),
        .I2(\BCD_total_reg_n_0_[0] ),
        .I3(\BCD_total_reg_n_0_[1] ),
        .I4(\BCD_total_reg_n_0_[2] ),
        .O(\BCD_total[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \BCD_total[5]_i_1 
       (.I0(\BCD_total_reg_n_0_[5] ),
        .I1(\BCD_total_reg_n_0_[4] ),
        .I2(\BCD_total_reg_n_0_[2] ),
        .I3(\BCD_total_reg_n_0_[1] ),
        .I4(\BCD_total_reg_n_0_[0] ),
        .I5(\BCD_total_reg_n_0_[3] ),
        .O(\BCD_total[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \BCD_total[6]_i_1 
       (.I0(\BCD_total_reg_n_0_[6] ),
        .I1(\BCD_total_reg_n_0_[5] ),
        .I2(\BCD_total_reg_n_0_[3] ),
        .I3(\BCD_total[6]_i_2_n_0 ),
        .I4(\BCD_total_reg_n_0_[2] ),
        .I5(\BCD_total_reg_n_0_[4] ),
        .O(\BCD_total[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BCD_total[6]_i_2 
       (.I0(\BCD_total_reg_n_0_[1] ),
        .I1(\BCD_total_reg_n_0_[0] ),
        .O(\BCD_total[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \BCD_total[7]_i_1 
       (.I0(\BCD_total[7]_i_2_n_0 ),
        .I1(\BCD_total[7]_i_4_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\BCD_total[7]_i_5_n_0 ),
        .O(\BCD_total[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2488000000000000)) 
    \BCD_total[7]_i_2 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\BCD_total[7]_i_6_n_0 ),
        .I5(s_sys_reset),
        .O(\BCD_total[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \BCD_total[7]_i_3 
       (.I0(\BCD_total_reg_n_0_[7] ),
        .I1(\BCD_total[7]_i_7_n_0 ),
        .I2(\BCD_total_reg_n_0_[6] ),
        .O(\BCD_total[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BCD_total[7]_i_4 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state[5]_i_4_n_0 ),
        .O(\BCD_total[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00A300AA)) 
    \BCD_total[7]_i_5 
       (.I0(\mem_ret_state[5]_i_11_n_0 ),
        .I1(\mem_ret_state[5]_i_13_n_0 ),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(\BCD_total[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BCD_total[7]_i_6 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[3] ),
        .O(\BCD_total[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \BCD_total[7]_i_7 
       (.I0(\BCD_total_reg_n_0_[4] ),
        .I1(\BCD_total_reg_n_0_[2] ),
        .I2(\BCD_total_reg_n_0_[1] ),
        .I3(\BCD_total_reg_n_0_[0] ),
        .I4(\BCD_total_reg_n_0_[3] ),
        .I5(\BCD_total_reg_n_0_[5] ),
        .O(\BCD_total[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_total_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_total[7]_i_2_n_0 ),
        .D(\BCD_total[0]_i_1_n_0 ),
        .Q(\BCD_total_reg_n_0_[0] ),
        .R(\BCD_total[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_total_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\BCD_total[1]_i_1_n_0 ),
        .Q(\BCD_total_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_total_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_total[7]_i_2_n_0 ),
        .D(\BCD_total[2]_i_1_n_0 ),
        .Q(\BCD_total_reg_n_0_[2] ),
        .R(\BCD_total[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_total_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_total[7]_i_2_n_0 ),
        .D(\BCD_total[3]_i_1_n_0 ),
        .Q(\BCD_total_reg_n_0_[3] ),
        .R(\BCD_total[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_total_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_total[7]_i_2_n_0 ),
        .D(\BCD_total[4]_i_1_n_0 ),
        .Q(\BCD_total_reg_n_0_[4] ),
        .R(\BCD_total[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_total_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_total[7]_i_2_n_0 ),
        .D(\BCD_total[5]_i_1_n_0 ),
        .Q(\BCD_total_reg_n_0_[5] ),
        .R(\BCD_total[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_total_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_total[7]_i_2_n_0 ),
        .D(\BCD_total[6]_i_1_n_0 ),
        .Q(\BCD_total_reg_n_0_[6] ),
        .R(\BCD_total[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BCD_total_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\BCD_total[7]_i_2_n_0 ),
        .D(\BCD_total[7]_i_3_n_0 ),
        .Q(\BCD_total_reg_n_0_[7] ),
        .R(\BCD_total[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \I[0]_i_1 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\I_reg[3]_i_3_n_7 ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(addr[0]),
        .O(\I[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h2C20)) 
    \I[10]_i_1 
       (.I0(addr[10]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\I_reg[11]_i_4_n_5 ),
        .O(\I[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h2C20)) 
    \I[11]_i_2 
       (.I0(addr[11]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\I_reg[11]_i_4_n_4 ),
        .O(\I[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFF7DFFFFFFE)) 
    \I[11]_i_3 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\I_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h5CF05C00)) 
    \I[1]_i_1 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(addr[1]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\I_reg[3]_i_3_n_6 ),
        .O(\I[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAEFAAEAA)) 
    \I[2]_i_1 
       (.I0(\I[2]_i_2_n_0 ),
        .I1(addr[2]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\I_reg[3]_i_3_n_5 ),
        .O(\I[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h96000000)) 
    \I[2]_i_2 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\cpu_REG[15][1]_i_3_n_0 ),
        .I2(\BCD_left[2]_i_2_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .O(\I[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAEFAAEAA)) 
    \I[3]_i_1 
       (.I0(\I[3]_i_2_n_0 ),
        .I1(\I_reg[3]_i_3_n_4 ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(addr[3]),
        .O(\I[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008800088800888)) 
    \I[3]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\BCD_left[2]_i_2_n_0 ),
        .I3(\BCD_left[0]_i_2_n_0 ),
        .I4(\cpu_REG[15][1]_i_3_n_0 ),
        .I5(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\I[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \I[3]_i_4 
       (.I0(I[3]),
        .I1(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\I[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \I[3]_i_5 
       (.I0(I[2]),
        .I1(\BCD_left[2]_i_2_n_0 ),
        .O(\I[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \I[3]_i_6 
       (.I0(I[1]),
        .I1(\cpu_REG[15][1]_i_3_n_0 ),
        .O(\I[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \I[3]_i_7 
       (.I0(I[0]),
        .I1(\BCD_left[0]_i_2_n_0 ),
        .O(\I[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCEFFDCCCCCCCCCC)) 
    \I[4]_i_1 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\I[4]_i_2_n_0 ),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .I3(\BCD_left[2]_i_2_n_0 ),
        .I4(\cpu_REG[15][1]_i_3_n_0 ),
        .I5(\cpu_REG[13][0]_i_3_n_0 ),
        .O(\I[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h2C20)) 
    \I[4]_i_2 
       (.I0(addr[4]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\I_reg[7]_i_2_n_7 ),
        .O(\I[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEFAAEAA)) 
    \I[5]_i_1 
       (.I0(\I[5]_i_2_n_0 ),
        .I1(addr[5]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\I_reg[7]_i_2_n_6 ),
        .O(\I[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC10000000F000000)) 
    \I[5]_i_2 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\cpu_REG[15][1]_i_3_n_0 ),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\BCD_left[2]_i_2_n_0 ),
        .O(\I[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h11F0FF0011F00000)) 
    \I[6]_i_1 
       (.I0(\I[6]_i_2_n_0 ),
        .I1(\I[6]_i_3_n_0 ),
        .I2(addr[6]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\I_reg[7]_i_2_n_5 ),
        .O(\I[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \I[6]_i_2 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(\BCD_left[2]_i_2_n_0 ),
        .O(\I[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \I[6]_i_3 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\cpu_REG[15][1]_i_3_n_0 ),
        .O(\I[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h2C20)) 
    \I[7]_i_1 
       (.I0(addr[7]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\I_reg[7]_i_2_n_4 ),
        .O(\I[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \I[7]_i_3 
       (.I0(I[7]),
        .I1(\BCD_left[7]_i_5_n_0 ),
        .O(\I[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \I[7]_i_4 
       (.I0(I[6]),
        .I1(\cpu_REG[15][6]_i_3_n_0 ),
        .O(\I[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \I[7]_i_5 
       (.I0(I[5]),
        .I1(\cpu_REG[15][5]_i_3_n_0 ),
        .O(\I[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \I[7]_i_6 
       (.I0(I[4]),
        .I1(\cpu_REG[15][4]_i_3_n_0 ),
        .O(\I[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h2C20)) 
    \I[8]_i_1 
       (.I0(addr[8]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\I_reg[11]_i_4_n_7 ),
        .O(\I[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h2C20)) 
    \I[9]_i_1 
       (.I0(addr[9]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\I_reg[11]_i_4_n_6 ),
        .O(\I[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[0]_i_1_n_0 ),
        .Q(I[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[10]_i_1_n_0 ),
        .Q(I[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[11]_i_2_n_0 ),
        .Q(I[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \I_reg[11]_i_4 
       (.CI(\I_reg[7]_i_2_n_0 ),
        .CO({\NLW_I_reg[11]_i_4_CO_UNCONNECTED [3],\I_reg[11]_i_4_n_1 ,\I_reg[11]_i_4_n_2 ,\I_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\I_reg[11]_i_4_n_4 ,\I_reg[11]_i_4_n_5 ,\I_reg[11]_i_4_n_6 ,\I_reg[11]_i_4_n_7 }),
        .S(I[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[1]_i_1_n_0 ),
        .Q(I[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[2]_i_1_n_0 ),
        .Q(I[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[3]_i_1_n_0 ),
        .Q(I[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \I_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\I_reg[3]_i_3_n_0 ,\I_reg[3]_i_3_n_1 ,\I_reg[3]_i_3_n_2 ,\I_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(I[3:0]),
        .O({\I_reg[3]_i_3_n_4 ,\I_reg[3]_i_3_n_5 ,\I_reg[3]_i_3_n_6 ,\I_reg[3]_i_3_n_7 }),
        .S({\I[3]_i_4_n_0 ,\I[3]_i_5_n_0 ,\I[3]_i_6_n_0 ,\I[3]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[4]_i_1_n_0 ),
        .Q(I[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[5]_i_1_n_0 ),
        .Q(I[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[6]_i_1_n_0 ),
        .Q(I[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[7]_i_1_n_0 ),
        .Q(I[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \I_reg[7]_i_2 
       (.CI(\I_reg[3]_i_3_n_0 ),
        .CO({\I_reg[7]_i_2_n_0 ,\I_reg[7]_i_2_n_1 ,\I_reg[7]_i_2_n_2 ,\I_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(I[7:4]),
        .O({\I_reg[7]_i_2_n_4 ,\I_reg[7]_i_2_n_5 ,\I_reg[7]_i_2_n_6 ,\I_reg[7]_i_2_n_7 }),
        .S({\I[7]_i_3_n_0 ,\I[7]_i_4_n_0 ,\I[7]_i_5_n_0 ,\I[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[8]_i_1_n_0 ),
        .Q(I[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\I[9]_i_1_n_0 ),
        .Q(I[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[0]_i_1 
       (.I0(cpu_STACK_reg_0_15_0_5_n_1),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[0]),
        .I4(\PC[0]_i_2_n_0 ),
        .O(\PC[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[0]_i_2 
       (.I0(addr[0]),
        .I1(\PC_reg[3]_i_8_n_7 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[10]_i_1 
       (.I0(cpu_STACK_reg_0_15_6_11_n_5),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[10]),
        .I4(\PC[10]_i_2_n_0 ),
        .O(\PC[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[10]_i_2 
       (.I0(addr[10]),
        .I1(\PC_reg[11]_i_25_n_5 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \PC[11]_i_1 
       (.I0(s_sys_reset),
        .I1(\PC[11]_i_3_n_0 ),
        .I2(\PC[11]_i_4_n_0 ),
        .I3(\PC[11]_i_5_n_0 ),
        .I4(\PC[11]_i_6_n_0 ),
        .I5(\PC[11]_i_7_n_0 ),
        .O(PC0));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[11]_i_11 
       (.I0(addr[11]),
        .I1(\PC_reg[11]_i_25_n_4 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[11]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \PC[11]_i_12 
       (.I0(neqOp),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(\PC[11]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \PC[11]_i_13 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .O(\PC[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \PC[11]_i_14 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\PC[11]_i_27_n_0 ),
        .I2(\PC[11]_i_28_n_0 ),
        .I3(\PC[11]_i_29_n_0 ),
        .I4(\PC[11]_i_30_n_0 ),
        .I5(\PC[11]_i_31_n_0 ),
        .O(\PC[11]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \PC[11]_i_15 
       (.I0(\PC[11]_i_32_n_0 ),
        .I1(\PC[11]_i_33_n_0 ),
        .I2(\PC[11]_i_34_n_0 ),
        .I3(\PC[11]_i_35_n_0 ),
        .I4(\PC[11]_i_36_n_0 ),
        .O(\PC[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \PC[11]_i_16 
       (.I0(\PC[11]_i_37_n_0 ),
        .I1(\PC[11]_i_38_n_0 ),
        .I2(\cpu_REG[15][1]_i_3_n_0 ),
        .I3(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I4(\PC[11]_i_39_n_0 ),
        .I5(\PC[11]_i_40_n_0 ),
        .O(\PC[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004004)) 
    \PC[11]_i_17 
       (.I0(\PC[11]_i_41_n_0 ),
        .I1(\PC[11]_i_42_n_0 ),
        .I2(\graphic_addressA[3]_i_2_n_0 ),
        .I3(\BCD_left[0]_i_2_n_0 ),
        .I4(\PC[11]_i_43_n_0 ),
        .I5(\PC[11]_i_44_n_0 ),
        .O(\PC[11]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \PC[11]_i_18 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[0]),
        .O(\PC[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \PC[11]_i_19 
       (.I0(\PC[11]_i_45_n_0 ),
        .I1(\PC[11]_i_46_n_0 ),
        .I2(\PC[11]_i_47_n_0 ),
        .I3(\PC[11]_i_48_n_0 ),
        .I4(\PC[11]_i_49_n_0 ),
        .I5(\PC[11]_i_50_n_0 ),
        .O(\PC[11]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[11]_i_2 
       (.I0(cpu_STACK_reg_0_15_6_11_n_4),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[11]),
        .I4(\PC[11]_i_11_n_0 ),
        .O(\PC[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \PC[11]_i_20 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(Q[0]),
        .I2(cpu_STACK_reg_0_15_0_5_i_7_n_0),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[2] ),
        .O(\PC[11]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC[11]_i_27 
       (.I0(kk[7]),
        .I1(\BCD_left[7]_i_5_n_0 ),
        .O(\PC[11]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \PC[11]_i_28 
       (.I0(kk[5]),
        .I1(\cpu_REG[15][5]_i_3_n_0 ),
        .I2(\cpu_REG[15][1]_i_3_n_0 ),
        .I3(kk[1]),
        .I4(\BCD_left[0]_i_2_n_0 ),
        .I5(kk[0]),
        .O(\PC[11]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \PC[11]_i_29 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(kk[3]),
        .O(\PC[11]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h4544444455555555)) 
    \PC[11]_i_3 
       (.I0(Q[1]),
        .I1(\PC[11]_i_12_n_0 ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\PC[11]_i_13_n_0 ),
        .I4(\PC[11]_i_14_n_0 ),
        .I5(\PC[11]_i_15_n_0 ),
        .O(\PC[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC[11]_i_30 
       (.I0(\cpu_REG[15][6]_i_3_n_0 ),
        .I1(kk[6]),
        .O(\PC[11]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \PC[11]_i_31 
       (.I0(kk[4]),
        .I1(\cpu_REG[15][4]_i_3_n_0 ),
        .I2(kk[2]),
        .I3(\BCD_left[2]_i_2_n_0 ),
        .O(\PC[11]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFFFFFFF)) 
    \PC[11]_i_32 
       (.I0(\current_state[1]_i_15_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(Q[0]),
        .O(\PC[11]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \PC[11]_i_33 
       (.I0(\cpu_REG[15][5]_i_3_n_0 ),
        .I1(kk[5]),
        .I2(kk[7]),
        .I3(\BCD_left[7]_i_5_n_0 ),
        .I4(kk[2]),
        .I5(\BCD_left[2]_i_2_n_0 ),
        .O(\PC[11]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h66F666F6FFFF66F6)) 
    \PC[11]_i_34 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(kk[0]),
        .I2(kk[6]),
        .I3(\cpu_REG[15][6]_i_3_n_0 ),
        .I4(kk[1]),
        .I5(\cpu_REG[15][1]_i_3_n_0 ),
        .O(\PC[11]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hD00000D0)) 
    \PC[11]_i_35 
       (.I0(\cpu_REG[15][6]_i_3_n_0 ),
        .I1(kk[6]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\cpu_REG[15][4]_i_3_n_0 ),
        .I4(kk[4]),
        .O(\PC[11]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hF22F)) 
    \PC[11]_i_36 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(kk[1]),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .I3(kk[3]),
        .O(\PC[11]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h1FF11FF1FFFF1FF1)) 
    \PC[11]_i_37 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .I2(\cpu_REG[15][6]_i_3_n_0 ),
        .I3(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I4(\cpu_REG[15][5]_i_3_n_0 ),
        .I5(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .O(\PC[11]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \PC[11]_i_38 
       (.I0(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I1(\cpu_REG[15][5]_i_3_n_0 ),
        .O(\PC[11]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \PC[11]_i_39 
       (.I0(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I1(\cpu_REG[15][4]_i_3_n_0 ),
        .O(\PC[11]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \PC[11]_i_4 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[4] ),
        .O(\PC[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PC[11]_i_40 
       (.I0(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .I1(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\PC[11]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC[11]_i_41 
       (.I0(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I1(\BCD_left[2]_i_2_n_0 ),
        .O(\PC[11]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \PC[11]_i_42 
       (.I0(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I1(\cpu_REG[15][4]_i_3_n_0 ),
        .O(\PC[11]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \PC[11]_i_43 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .O(\PC[11]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC[11]_i_44 
       (.I0(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I1(\BCD_left[7]_i_5_n_0 ),
        .O(\PC[11]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \PC[11]_i_45 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(eqOp0_out),
        .I3(\current_state_reg_n_0_[4] ),
        .O(\PC[11]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \PC[11]_i_46 
       (.I0(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I1(\cpu_REG[15][4]_i_3_n_0 ),
        .I2(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I3(\cpu_REG[15][5]_i_3_n_0 ),
        .O(\PC[11]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0990)) 
    \PC[11]_i_47 
       (.I0(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I1(\BCD_left[2]_i_2_n_0 ),
        .I2(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .I3(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\PC[11]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \PC[11]_i_48 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[4] ),
        .O(\PC[11]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \PC[11]_i_49 
       (.I0(\graphic_addressA[3]_i_2_n_0 ),
        .I1(\BCD_left[0]_i_2_n_0 ),
        .I2(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I3(\cpu_REG[15][1]_i_3_n_0 ),
        .O(\PC[11]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \PC[11]_i_5 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(Q[0]),
        .O(\PC[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \PC[11]_i_50 
       (.I0(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I1(\cpu_REG[15][6]_i_3_n_0 ),
        .I2(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I3(\BCD_left[7]_i_5_n_0 ),
        .O(\PC[11]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \PC[11]_i_51 
       (.I0(addr[11]),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(PC__0[11]),
        .O(\PC[11]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \PC[11]_i_52 
       (.I0(addr[10]),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(PC__0[10]),
        .O(\PC[11]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \PC[11]_i_53 
       (.I0(addr[9]),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(PC__0[9]),
        .O(\PC[11]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \PC[11]_i_54 
       (.I0(addr[8]),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(PC__0[8]),
        .O(\PC[11]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \PC[11]_i_56 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\cpu_REG[15][1]_i_3_n_0 ),
        .I2(\I[6]_i_2_n_0 ),
        .I3(keyPad_IBUF[15]),
        .O(\PC[11]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFAFFAAEEFA)) 
    \PC[11]_i_57 
       (.I0(\I[6]_i_2_n_0 ),
        .I1(keyPad_IBUF[13]),
        .I2(keyPad_IBUF[12]),
        .I3(\BCD_left[0]_i_2_n_0 ),
        .I4(\cpu_REG[15][1]_i_3_n_0 ),
        .I5(keyPad_IBUF[14]),
        .O(\PC[11]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEAFFEFAFEAAF)) 
    \PC[11]_i_59 
       (.I0(\PC[11]_i_66_n_0 ),
        .I1(keyPad_IBUF[11]),
        .I2(\cpu_REG[15][1]_i_3_n_0 ),
        .I3(\BCD_left[0]_i_2_n_0 ),
        .I4(keyPad_IBUF[9]),
        .I5(keyPad_IBUF[10]),
        .O(\PC[11]_i_59_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \PC[11]_i_6 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[5] ),
        .O(\PC[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCAFFF)) 
    \PC[11]_i_60 
       (.I0(\PC[11]_i_67_n_0 ),
        .I1(keyPad_IBUF[8]),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .I3(\BCD_left[2]_i_2_n_0 ),
        .I4(\I[6]_i_3_n_0 ),
        .O(\PC[11]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF77FFFFFFFF)) 
    \PC[11]_i_61 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\cpu_REG[15][1]_i_3_n_0 ),
        .I2(\PC[11]_i_68_n_0 ),
        .I3(keyPad_IBUF[3]),
        .I4(\BCD_left[2]_i_2_n_0 ),
        .I5(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\PC[11]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFD5F5DFF5D5)) 
    \PC[11]_i_62 
       (.I0(\PC[11]_i_69_n_0 ),
        .I1(keyPad_IBUF[2]),
        .I2(\cpu_REG[15][1]_i_3_n_0 ),
        .I3(\BCD_left[0]_i_2_n_0 ),
        .I4(keyPad_IBUF[0]),
        .I5(keyPad_IBUF[1]),
        .O(\PC[11]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \PC[11]_i_64 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\cpu_REG[15][1]_i_3_n_0 ),
        .I2(\I[6]_i_2_n_0 ),
        .I3(keyPad_IBUF[15]),
        .O(\PC[11]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFAFFAAEEFA)) 
    \PC[11]_i_65 
       (.I0(\I[6]_i_2_n_0 ),
        .I1(keyPad_IBUF[13]),
        .I2(keyPad_IBUF[12]),
        .I3(\BCD_left[0]_i_2_n_0 ),
        .I4(\cpu_REG[15][1]_i_3_n_0 ),
        .I5(keyPad_IBUF[14]),
        .O(\PC[11]_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \PC[11]_i_66 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\PC[11]_i_66_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hCAFF)) 
    \PC[11]_i_67 
       (.I0(keyPad_IBUF[6]),
        .I1(keyPad_IBUF[7]),
        .I2(\BCD_left[0]_i_2_n_0 ),
        .I3(\cpu_REG[15][1]_i_3_n_0 ),
        .O(\PC[11]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFECE)) 
    \PC[11]_i_68 
       (.I0(keyPad_IBUF[4]),
        .I1(\cpu_REG[15][1]_i_3_n_0 ),
        .I2(\BCD_left[0]_i_2_n_0 ),
        .I3(keyPad_IBUF[5]),
        .O(\PC[11]_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \PC[11]_i_69 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(\BCD_left[2]_i_2_n_0 ),
        .O(\PC[11]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFB00000FFFFFFFF)) 
    \PC[11]_i_7 
       (.I0(\PC[11]_i_16_n_0 ),
        .I1(\PC[11]_i_17_n_0 ),
        .I2(\PC[11]_i_18_n_0 ),
        .I3(\PC[11]_i_19_n_0 ),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\PC[11]_i_20_n_0 ),
        .O(\PC[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEAFFEFAFEAAF)) 
    \PC[11]_i_70 
       (.I0(\PC[11]_i_66_n_0 ),
        .I1(keyPad_IBUF[11]),
        .I2(\cpu_REG[15][1]_i_3_n_0 ),
        .I3(\BCD_left[0]_i_2_n_0 ),
        .I4(keyPad_IBUF[9]),
        .I5(keyPad_IBUF[10]),
        .O(\PC[11]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCAFFF)) 
    \PC[11]_i_71 
       (.I0(\PC[11]_i_67_n_0 ),
        .I1(keyPad_IBUF[8]),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .I3(\BCD_left[2]_i_2_n_0 ),
        .I4(\I[6]_i_3_n_0 ),
        .O(\PC[11]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF77FFFFFFFF)) 
    \PC[11]_i_72 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\cpu_REG[15][1]_i_3_n_0 ),
        .I2(\PC[11]_i_68_n_0 ),
        .I3(keyPad_IBUF[3]),
        .I4(\BCD_left[2]_i_2_n_0 ),
        .I5(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\PC[11]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFD5F5DFF5D5)) 
    \PC[11]_i_73 
       (.I0(\PC[11]_i_69_n_0 ),
        .I1(keyPad_IBUF[2]),
        .I2(\cpu_REG[15][1]_i_3_n_0 ),
        .I3(\BCD_left[0]_i_2_n_0 ),
        .I4(keyPad_IBUF[0]),
        .I5(keyPad_IBUF[1]),
        .O(\PC[11]_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \PC[11]_i_8 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(Q[1]),
        .O(\PC[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFE0E)) 
    \PC[11]_i_9 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(Q[1]),
        .O(\PC[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[1]_i_1 
       (.I0(cpu_STACK_reg_0_15_0_5_n_0),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[1]),
        .I4(\PC[1]_i_2_n_0 ),
        .O(\PC[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[1]_i_2 
       (.I0(addr[1]),
        .I1(\PC_reg[3]_i_8_n_6 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[2]_i_1 
       (.I0(cpu_STACK_reg_0_15_0_5_n_3),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[2]),
        .I4(\PC[2]_i_2_n_0 ),
        .O(\PC[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[2]_i_2 
       (.I0(addr[2]),
        .I1(\PC_reg[3]_i_8_n_5 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[3]_i_1 
       (.I0(cpu_STACK_reg_0_15_0_5_n_2),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[3]),
        .I4(\PC[3]_i_3_n_0 ),
        .O(\PC[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \PC[3]_i_10 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(R[2]),
        .O(\PC[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \PC[3]_i_11 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(R[1]),
        .O(\PC[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \PC[3]_i_12 
       (.I0(R[0]),
        .I1(\current_state_reg_n_0_[4] ),
        .O(\PC[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \PC[3]_i_13 
       (.I0(R[3]),
        .I1(PC__0[3]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(addr[3]),
        .O(\PC[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \PC[3]_i_14 
       (.I0(R[2]),
        .I1(PC__0[2]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(addr[2]),
        .O(\PC[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \PC[3]_i_15 
       (.I0(R[1]),
        .I1(PC__0[1]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(addr[1]),
        .O(\PC[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h53A3)) 
    \PC[3]_i_16 
       (.I0(R[0]),
        .I1(PC__0[0]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(addr[0]),
        .O(\PC[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[3]_i_3 
       (.I0(addr[3]),
        .I1(\PC_reg[3]_i_8_n_4 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \PC[3]_i_6 
       (.I0(PC__0[1]),
        .O(\PC[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \PC[3]_i_9 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(R[3]),
        .O(\PC[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[4]_i_1 
       (.I0(cpu_STACK_reg_0_15_0_5_n_5),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[4]),
        .I4(\PC[4]_i_2_n_0 ),
        .O(\PC[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[4]_i_2 
       (.I0(addr[4]),
        .I1(\PC_reg[7]_i_8_n_7 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[5]_i_1 
       (.I0(cpu_STACK_reg_0_15_0_5_n_4),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[5]),
        .I4(\PC[5]_i_2_n_0 ),
        .O(\PC[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[5]_i_2 
       (.I0(addr[5]),
        .I1(\PC_reg[7]_i_8_n_6 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[6]_i_1 
       (.I0(cpu_STACK_reg_0_15_6_11_n_1),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[6]),
        .I4(\PC[6]_i_2_n_0 ),
        .O(\PC[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[6]_i_2 
       (.I0(addr[6]),
        .I1(\PC_reg[7]_i_8_n_5 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[7]_i_1 
       (.I0(cpu_STACK_reg_0_15_6_11_n_0),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[7]),
        .I4(\PC[7]_i_3_n_0 ),
        .O(\PC[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \PC[7]_i_10 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(R[6]),
        .O(\PC[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \PC[7]_i_11 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(R[5]),
        .O(\PC[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \PC[7]_i_12 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(R[4]),
        .O(\PC[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \PC[7]_i_13 
       (.I0(R[7]),
        .I1(PC__0[7]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(addr[7]),
        .O(\PC[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \PC[7]_i_14 
       (.I0(R[6]),
        .I1(PC__0[6]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(addr[6]),
        .O(\PC[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \PC[7]_i_15 
       (.I0(R[5]),
        .I1(PC__0[5]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(addr[5]),
        .O(\PC[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \PC[7]_i_16 
       (.I0(R[4]),
        .I1(PC__0[4]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(addr[4]),
        .O(\PC[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[7]_i_3 
       (.I0(addr[7]),
        .I1(\PC_reg[7]_i_8_n_4 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \PC[7]_i_9 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(R[7]),
        .O(\PC[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \PC[8]_i_1 
       (.I0(cpu_STACK_reg_0_15_6_11_n_3),
        .I1(\PC[11]_i_8_n_0 ),
        .I2(\PC[11]_i_9_n_0 ),
        .I3(plusOp[8]),
        .I4(\PC[8]_i_2_n_0 ),
        .O(\PC[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCCC0A0C0000)) 
    \PC[8]_i_2 
       (.I0(addr[8]),
        .I1(\PC_reg[11]_i_25_n_7 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA8FF08)) 
    \PC[9]_i_1 
       (.I0(\PC[9]_i_2_n_0 ),
        .I1(cpu_STACK_reg_0_15_6_11_n_2),
        .I2(Q[1]),
        .I3(\PC[9]_i_3_n_0 ),
        .I4(addr[9]),
        .I5(\PC[9]_i_4_n_0 ),
        .O(\PC[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \PC[9]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .O(\PC[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h45450045)) 
    \PC[9]_i_3 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(plusOp[9]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(Q[1]),
        .I4(\PC_reg[11]_i_25_n_6 ),
        .O(\PC[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0F02000F0000000)) 
    \PC[9]_i_4 
       (.I0(\PC_reg[11]_i_25_n_6 ),
        .I1(Q[1]),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp[9]),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\PC[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[0]_i_1_n_0 ),
        .Q(PC__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[10]_i_1_n_0 ),
        .Q(PC__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[11]_i_2_n_0 ),
        .Q(PC__0[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[11]_i_10 
       (.CI(\PC_reg[7]_i_2_n_0 ),
        .CO({\NLW_PC_reg[11]_i_10_CO_UNCONNECTED [3],\PC_reg[11]_i_10_n_1 ,\PC_reg[11]_i_10_n_2 ,\PC_reg[11]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[11:8]),
        .S(PC__0[11:8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[11]_i_25 
       (.CI(\PC_reg[7]_i_8_n_0 ),
        .CO({\NLW_PC_reg[11]_i_25_CO_UNCONNECTED [3],\PC_reg[11]_i_25_n_1 ,\PC_reg[11]_i_25_n_2 ,\PC_reg[11]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PC_reg[11]_i_25_n_4 ,\PC_reg[11]_i_25_n_5 ,\PC_reg[11]_i_25_n_6 ,\PC_reg[11]_i_25_n_7 }),
        .S({\PC[11]_i_51_n_0 ,\PC[11]_i_52_n_0 ,\PC[11]_i_53_n_0 ,\PC[11]_i_54_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[11]_i_26 
       (.CI(\PC_reg[11]_i_55_n_0 ),
        .CO({\NLW_PC_reg[11]_i_26_CO_UNCONNECTED [3:2],neqOp,\PC_reg[11]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_PC_reg[11]_i_26_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\PC[11]_i_56_n_0 ,\PC[11]_i_57_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[11]_i_55 
       (.CI(1'b0),
        .CO({\PC_reg[11]_i_55_n_0 ,\PC_reg[11]_i_55_n_1 ,\PC_reg[11]_i_55_n_2 ,\PC_reg[11]_i_55_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_PC_reg[11]_i_55_O_UNCONNECTED [3:0]),
        .S({\PC[11]_i_59_n_0 ,\PC[11]_i_60_n_0 ,\PC[11]_i_61_n_0 ,\PC[11]_i_62_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[11]_i_58 
       (.CI(\PC_reg[11]_i_63_n_0 ),
        .CO({\NLW_PC_reg[11]_i_58_CO_UNCONNECTED [3:2],eqOp0_out,\PC_reg[11]_i_58_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_PC_reg[11]_i_58_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\PC[11]_i_64_n_0 ,\PC[11]_i_65_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[11]_i_63 
       (.CI(1'b0),
        .CO({\PC_reg[11]_i_63_n_0 ,\PC_reg[11]_i_63_n_1 ,\PC_reg[11]_i_63_n_2 ,\PC_reg[11]_i_63_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_PC_reg[11]_i_63_O_UNCONNECTED [3:0]),
        .S({\PC[11]_i_70_n_0 ,\PC[11]_i_71_n_0 ,\PC[11]_i_72_n_0 ,\PC[11]_i_73_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[1]_i_1_n_0 ),
        .Q(PC__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[2]_i_1_n_0 ),
        .Q(PC__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[3]_i_1_n_0 ),
        .Q(PC__0[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\PC_reg[3]_i_2_n_0 ,\PC_reg[3]_i_2_n_1 ,\PC_reg[3]_i_2_n_2 ,\PC_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,PC__0[1],1'b0}),
        .O(plusOp[3:0]),
        .S({PC__0[3:2],\PC[3]_i_6_n_0 ,PC__0[0]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[3]_i_8 
       (.CI(1'b0),
        .CO({\PC_reg[3]_i_8_n_0 ,\PC_reg[3]_i_8_n_1 ,\PC_reg[3]_i_8_n_2 ,\PC_reg[3]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\PC[3]_i_9_n_0 ,\PC[3]_i_10_n_0 ,\PC[3]_i_11_n_0 ,\PC[3]_i_12_n_0 }),
        .O({\PC_reg[3]_i_8_n_4 ,\PC_reg[3]_i_8_n_5 ,\PC_reg[3]_i_8_n_6 ,\PC_reg[3]_i_8_n_7 }),
        .S({\PC[3]_i_13_n_0 ,\PC[3]_i_14_n_0 ,\PC[3]_i_15_n_0 ,\PC[3]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[4]_i_1_n_0 ),
        .Q(PC__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[5]_i_1_n_0 ),
        .Q(PC__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[6]_i_1_n_0 ),
        .Q(PC__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[7]_i_1_n_0 ),
        .Q(PC__0[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[7]_i_2 
       (.CI(\PC_reg[3]_i_2_n_0 ),
        .CO({\PC_reg[7]_i_2_n_0 ,\PC_reg[7]_i_2_n_1 ,\PC_reg[7]_i_2_n_2 ,\PC_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[7:4]),
        .S(PC__0[7:4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg[7]_i_8 
       (.CI(\PC_reg[3]_i_8_n_0 ),
        .CO({\PC_reg[7]_i_8_n_0 ,\PC_reg[7]_i_8_n_1 ,\PC_reg[7]_i_8_n_2 ,\PC_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\PC[7]_i_9_n_0 ,\PC[7]_i_10_n_0 ,\PC[7]_i_11_n_0 ,\PC[7]_i_12_n_0 }),
        .O({\PC_reg[7]_i_8_n_4 ,\PC_reg[7]_i_8_n_5 ,\PC_reg[7]_i_8_n_6 ,\PC_reg[7]_i_8_n_7 }),
        .S({\PC[7]_i_13_n_0 ,\PC[7]_i_14_n_0 ,\PC[7]_i_15_n_0 ,\PC[7]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[8]_i_1_n_0 ),
        .Q(PC__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(PC0),
        .D(\PC[9]_i_1_n_0 ),
        .Q(PC__0[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[0]_i_1 
       (.I0(\RAND_reg[1]__0_P_n_0 ),
        .I1(\RAND_reg[1]__0_LDC_n_0 ),
        .I2(\RAND_reg[1]__0_C_n_0 ),
        .O(\RAND[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[10]_i_1 
       (.I0(\RAND_reg[11]__0_P_n_0 ),
        .I1(\RAND_reg[11]__0_LDC_n_0 ),
        .I2(\RAND_reg[11]__0_C_n_0 ),
        .O(p_2_in[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[11]_i_1 
       (.I0(\RAND_reg[12]__0_P_n_0 ),
        .I1(\RAND_reg[12]__0_LDC_n_0 ),
        .I2(\RAND_reg[12]__0_C_n_0 ),
        .O(p_2_in[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[12]_i_1 
       (.I0(\RAND_reg[13]__0_P_n_0 ),
        .I1(\RAND_reg[13]__0_LDC_n_0 ),
        .I2(\RAND_reg[13]__0_C_n_0 ),
        .O(p_2_in[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[13]_i_1 
       (.I0(\RAND_reg[14]__0_P_n_0 ),
        .I1(\RAND_reg[14]__0_LDC_n_0 ),
        .I2(\RAND_reg[14]__0_C_n_0 ),
        .O(p_2_in[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[14]_i_1 
       (.I0(\RAND_reg[15]__0_P_n_0 ),
        .I1(\RAND_reg[15]__0_LDC_n_0 ),
        .I2(\RAND_reg[15]__0_C_n_0 ),
        .O(p_2_in[14]));
  LUT6 #(
    .INIT(64'h47B8B847B84747B8)) 
    \RAND[15]_i_1 
       (.I0(\RAND_reg[0]__0_P_n_0 ),
        .I1(\RAND_reg[0]__0_LDC_n_0 ),
        .I2(\RAND_reg[0]__0_C_n_0 ),
        .I3(\RAND[1]_i_1_n_0 ),
        .I4(\RAND[2]_i_1_n_0 ),
        .I5(\RAND[4]_i_1_n_0 ),
        .O(p_2_in[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[1]_i_1 
       (.I0(\RAND_reg[2]__0_P_n_0 ),
        .I1(\RAND_reg[2]__0_LDC_n_0 ),
        .I2(\RAND_reg[2]__0_C_n_0 ),
        .O(\RAND[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[2]_i_1 
       (.I0(\RAND_reg[3]__0_P_n_0 ),
        .I1(\RAND_reg[3]__0_LDC_n_0 ),
        .I2(\RAND_reg[3]__0_C_n_0 ),
        .O(\RAND[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[3]_i_1 
       (.I0(\RAND_reg[4]__0_P_n_0 ),
        .I1(\RAND_reg[4]__0_LDC_n_0 ),
        .I2(\RAND_reg[4]__0_C_n_0 ),
        .O(\RAND[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[4]_i_1 
       (.I0(\RAND_reg[5]__0_P_n_0 ),
        .I1(\RAND_reg[5]__0_LDC_n_0 ),
        .I2(\RAND_reg[5]__0_C_n_0 ),
        .O(\RAND[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[5]_i_1 
       (.I0(\RAND_reg[6]__0_P_n_0 ),
        .I1(\RAND_reg[6]__0_LDC_n_0 ),
        .I2(\RAND_reg[6]__0_C_n_0 ),
        .O(\RAND[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[6]_i_1 
       (.I0(\RAND_reg[7]__0_P_n_0 ),
        .I1(\RAND_reg[7]__0_LDC_n_0 ),
        .I2(\RAND_reg[7]__0_C_n_0 ),
        .O(\RAND[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[7]_i_1 
       (.I0(\RAND_reg[8]__0_P_n_0 ),
        .I1(\RAND_reg[8]__0_LDC_n_0 ),
        .I2(\RAND_reg[8]__0_C_n_0 ),
        .O(p_2_in[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[8]_i_1 
       (.I0(\RAND_reg[9]__0_P_n_0 ),
        .I1(\RAND_reg[9]__0_LDC_n_0 ),
        .I2(\RAND_reg[9]__0_C_n_0 ),
        .O(p_2_in[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \RAND[9]_i_1 
       (.I0(\RAND_reg[10]__0_P_n_0 ),
        .I1(\RAND_reg[10]__0_LDC_n_0 ),
        .I2(\RAND_reg[10]__0_C_n_0 ),
        .O(p_2_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \RAND_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[0]_i_1_n_0 ),
        .Q(\RAND_reg[15]__0_P_0 [0]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[0]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_14),
        .D(\RAND[0]_i_1_n_0 ),
        .Q(\RAND_reg[0]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RAND_reg[0]__0_LDC 
       (.CLR(sys_reset_reg_14),
        .D(1'b1),
        .G(\RAND_reg[0]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[0]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[0]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [0]),
        .I1(s_sys_reset),
        .O(\RAND_reg[0]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[0]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[0]_i_1_n_0 ),
        .PRE(\RAND_reg[0]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[0]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RAND_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[10]),
        .Q(\RAND_reg[15]__0_P_0 [10]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[10]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_4),
        .D(p_2_in[10]),
        .Q(\RAND_reg[10]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RAND_reg[10]__0_LDC 
       (.CLR(sys_reset_reg_4),
        .D(1'b1),
        .G(\RAND_reg[10]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[10]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[10]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [10]),
        .I1(s_sys_reset),
        .O(\RAND_reg[10]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[10]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[10]),
        .PRE(\RAND_reg[10]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[10]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \RAND_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[11]),
        .Q(\RAND_reg[15]__0_P_0 [11]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[11]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_3),
        .D(p_2_in[11]),
        .Q(\RAND_reg[11]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    \RAND_reg[11]__0_LDC 
       (.CLR(sys_reset_reg_3),
        .D(1'b1),
        .G(\RAND_reg[11]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[11]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[11]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [11]),
        .I1(s_sys_reset),
        .O(\RAND_reg[11]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[11]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[11]),
        .PRE(\RAND_reg[11]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[11]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RAND_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[12]),
        .Q(\RAND_reg[15]__0_P_0 [12]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[12]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_2),
        .D(p_2_in[12]),
        .Q(\RAND_reg[12]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RAND_reg[12]__0_LDC 
       (.CLR(sys_reset_reg_2),
        .D(1'b1),
        .G(\RAND_reg[12]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[12]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[12]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [12]),
        .I1(s_sys_reset),
        .O(\RAND_reg[12]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[12]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[12]),
        .PRE(\RAND_reg[12]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[12]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \RAND_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[13]),
        .Q(\RAND_reg[15]__0_P_0 [13]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[13]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_1),
        .D(p_2_in[13]),
        .Q(\RAND_reg[13]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    \RAND_reg[13]__0_LDC 
       (.CLR(sys_reset_reg_1),
        .D(1'b1),
        .G(\RAND_reg[13]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[13]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[13]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [13]),
        .I1(s_sys_reset),
        .O(\RAND_reg[13]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[13]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[13]),
        .PRE(\RAND_reg[13]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[13]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RAND_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[14]),
        .Q(\RAND_reg[15]__0_P_0 [14]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[14]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_0),
        .D(p_2_in[14]),
        .Q(\RAND_reg[14]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RAND_reg[14]__0_LDC 
       (.CLR(sys_reset_reg_0),
        .D(1'b1),
        .G(\RAND_reg[14]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[14]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[14]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [14]),
        .I1(s_sys_reset),
        .O(\RAND_reg[14]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[14]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[14]),
        .PRE(\RAND_reg[14]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[14]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \RAND_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[15]),
        .Q(\RAND_reg[15]__0_P_0 [15]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[15]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg),
        .D(p_2_in[15]),
        .Q(\RAND_reg[15]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    \RAND_reg[15]__0_LDC 
       (.CLR(sys_reset_reg),
        .D(1'b1),
        .G(\RAND_reg[15]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[15]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[15]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [15]),
        .I1(s_sys_reset),
        .O(\RAND_reg[15]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[15]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[15]),
        .PRE(\RAND_reg[15]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[15]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \RAND_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[1]_i_1_n_0 ),
        .Q(\RAND_reg[15]__0_P_0 [1]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[1]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_13),
        .D(\RAND[1]_i_1_n_0 ),
        .Q(\RAND_reg[1]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    \RAND_reg[1]__0_LDC 
       (.CLR(sys_reset_reg_13),
        .D(1'b1),
        .G(\RAND_reg[1]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[1]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[1]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [1]),
        .I1(s_sys_reset),
        .O(\RAND_reg[1]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[1]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[1]_i_1_n_0 ),
        .PRE(\RAND_reg[1]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[1]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RAND_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[2]_i_1_n_0 ),
        .Q(\RAND_reg[15]__0_P_0 [2]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[2]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_12),
        .D(\RAND[2]_i_1_n_0 ),
        .Q(\RAND_reg[2]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RAND_reg[2]__0_LDC 
       (.CLR(sys_reset_reg_12),
        .D(1'b1),
        .G(\RAND_reg[2]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[2]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[2]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [2]),
        .I1(s_sys_reset),
        .O(\RAND_reg[2]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[2]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[2]_i_1_n_0 ),
        .PRE(\RAND_reg[2]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[2]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \RAND_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[3]_i_1_n_0 ),
        .Q(\RAND_reg[15]__0_P_0 [3]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[3]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_11),
        .D(\RAND[3]_i_1_n_0 ),
        .Q(\RAND_reg[3]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    \RAND_reg[3]__0_LDC 
       (.CLR(sys_reset_reg_11),
        .D(1'b1),
        .G(\RAND_reg[3]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[3]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[3]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [3]),
        .I1(s_sys_reset),
        .O(\RAND_reg[3]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[3]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[3]_i_1_n_0 ),
        .PRE(\RAND_reg[3]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[3]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RAND_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[4]_i_1_n_0 ),
        .Q(\RAND_reg[15]__0_P_0 [4]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[4]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_10),
        .D(\RAND[4]_i_1_n_0 ),
        .Q(\RAND_reg[4]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RAND_reg[4]__0_LDC 
       (.CLR(sys_reset_reg_10),
        .D(1'b1),
        .G(\RAND_reg[4]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[4]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[4]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [4]),
        .I1(s_sys_reset),
        .O(\RAND_reg[4]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[4]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[4]_i_1_n_0 ),
        .PRE(\RAND_reg[4]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[4]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \RAND_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[5]_i_1_n_0 ),
        .Q(\RAND_reg[15]__0_P_0 [5]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[5]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_9),
        .D(\RAND[5]_i_1_n_0 ),
        .Q(\RAND_reg[5]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    \RAND_reg[5]__0_LDC 
       (.CLR(sys_reset_reg_9),
        .D(1'b1),
        .G(\RAND_reg[5]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[5]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[5]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [5]),
        .I1(s_sys_reset),
        .O(\RAND_reg[5]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[5]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[5]_i_1_n_0 ),
        .PRE(\RAND_reg[5]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[5]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RAND_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[6]_i_1_n_0 ),
        .Q(\RAND_reg[15]__0_P_0 [6]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[6]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_8),
        .D(\RAND[6]_i_1_n_0 ),
        .Q(\RAND_reg[6]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RAND_reg[6]__0_LDC 
       (.CLR(sys_reset_reg_8),
        .D(1'b1),
        .G(\RAND_reg[6]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[6]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[6]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [6]),
        .I1(s_sys_reset),
        .O(\RAND_reg[6]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[6]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\RAND[6]_i_1_n_0 ),
        .PRE(\RAND_reg[6]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[6]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \RAND_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[7]),
        .Q(\RAND_reg[15]__0_P_0 [7]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[7]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_7),
        .D(p_2_in[7]),
        .Q(\RAND_reg[7]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    \RAND_reg[7]__0_LDC 
       (.CLR(sys_reset_reg_7),
        .D(1'b1),
        .G(\RAND_reg[7]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[7]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[7]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [7]),
        .I1(s_sys_reset),
        .O(\RAND_reg[7]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[7]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[7]),
        .PRE(\RAND_reg[7]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[7]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RAND_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[8]),
        .Q(\RAND_reg[15]__0_P_0 [8]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[8]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_6),
        .D(p_2_in[8]),
        .Q(\RAND_reg[8]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RAND_reg[8]__0_LDC 
       (.CLR(sys_reset_reg_6),
        .D(1'b1),
        .G(\RAND_reg[8]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[8]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[8]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [8]),
        .I1(s_sys_reset),
        .O(\RAND_reg[8]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[8]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[8]),
        .PRE(\RAND_reg[8]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[8]__0_P_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \RAND_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[9]),
        .Q(\RAND_reg[15]__0_P_0 [9]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \RAND_reg[9]__0_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_5),
        .D(p_2_in[9]),
        .Q(\RAND_reg[9]__0_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    \RAND_reg[9]__0_LDC 
       (.CLR(sys_reset_reg_5),
        .D(1'b1),
        .G(\RAND_reg[9]__0_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\RAND_reg[9]__0_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RAND_reg[9]__0_LDC_i_1 
       (.I0(\RAND_reg[15]__0_P_0 [9]),
        .I1(s_sys_reset),
        .O(\RAND_reg[9]__0_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \RAND_reg[9]__0_P 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_in[9]),
        .PRE(\RAND_reg[9]__0_LDC_i_1_n_0 ),
        .Q(\RAND_reg[9]__0_P_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \SP[1]_i_1 
       (.I0(Q[1]),
        .I1(\SP_reg_n_0_[1] ),
        .I2(\SP_reg_n_0_[0] ),
        .O(\SP[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \SP[2]_i_1 
       (.I0(\SP_reg_n_0_[0] ),
        .I1(\SP_reg_n_0_[1] ),
        .I2(\SP_reg_n_0_[2] ),
        .I3(Q[1]),
        .O(\SP[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \SP[3]_i_1 
       (.I0(\SP_reg_n_0_[2] ),
        .I1(\SP_reg_n_0_[1] ),
        .I2(\SP_reg_n_0_[0] ),
        .I3(\SP_reg_n_0_[3] ),
        .I4(Q[1]),
        .O(\SP[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \SP[4]_i_1 
       (.I0(\SP_reg_n_0_[4] ),
        .I1(\SP_reg_n_0_[3] ),
        .I2(\SP_reg_n_0_[1] ),
        .I3(\SP_reg_n_0_[0] ),
        .I4(\SP_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\SP[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0FE1F0E1)) 
    \SP[5]_i_1 
       (.I0(\SP_reg_n_0_[4] ),
        .I1(\SP[5]_i_2_n_0 ),
        .I2(\SP_reg_n_0_[5] ),
        .I3(Q[1]),
        .I4(\SP[5]_i_3_n_0 ),
        .O(\SP[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SP[5]_i_2 
       (.I0(\SP_reg_n_0_[3] ),
        .I1(\SP_reg_n_0_[0] ),
        .I2(\SP_reg_n_0_[1] ),
        .I3(\SP_reg_n_0_[2] ),
        .O(\SP[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \SP[5]_i_3 
       (.I0(\SP_reg_n_0_[4] ),
        .I1(\SP_reg_n_0_[3] ),
        .I2(\SP_reg_n_0_[1] ),
        .I3(\SP_reg_n_0_[0] ),
        .I4(\SP_reg_n_0_[2] ),
        .O(\SP[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h3C99)) 
    \SP[6]_i_1 
       (.I0(\SP[7]_i_7_n_0 ),
        .I1(\SP_reg_n_0_[6] ),
        .I2(\SP[7]_i_8_n_0 ),
        .I3(Q[1]),
        .O(\SP[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \SP[7]_i_1 
       (.I0(SP0),
        .I1(Q[0]),
        .O(\SP[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F2000000)) 
    \SP[7]_i_2 
       (.I0(\SP[7]_i_4_n_0 ),
        .I1(\SP[7]_i_5_n_0 ),
        .I2(\SP[7]_i_6_n_0 ),
        .I3(\PC[11]_i_4_n_0 ),
        .I4(s_sys_reset),
        .I5(\current_state_reg_n_0_[5] ),
        .O(SP0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h5AE1F0E1)) 
    \SP[7]_i_3 
       (.I0(\SP_reg_n_0_[6] ),
        .I1(\SP[7]_i_7_n_0 ),
        .I2(\SP_reg_n_0_[7] ),
        .I3(Q[1]),
        .I4(\SP[7]_i_8_n_0 ),
        .O(\SP[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \SP[7]_i_4 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .O(\SP[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000001)) 
    \SP[7]_i_5 
       (.I0(\SP_reg_n_0_[6] ),
        .I1(\SP_reg_n_0_[7] ),
        .I2(\SP_reg_n_0_[4] ),
        .I3(\SP[5]_i_2_n_0 ),
        .I4(\SP_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(\SP[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \SP[7]_i_6 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[1]),
        .O(\SP[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \SP[7]_i_7 
       (.I0(\SP_reg_n_0_[5] ),
        .I1(\SP_reg_n_0_[3] ),
        .I2(\SP_reg_n_0_[0] ),
        .I3(\SP_reg_n_0_[1] ),
        .I4(\SP_reg_n_0_[2] ),
        .I5(\SP_reg_n_0_[4] ),
        .O(\SP[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \SP[7]_i_8 
       (.I0(\SP_reg_n_0_[2] ),
        .I1(\SP_reg_n_0_[0] ),
        .I2(\SP_reg_n_0_[1] ),
        .I3(\SP_reg_n_0_[3] ),
        .I4(\SP_reg_n_0_[4] ),
        .I5(\SP_reg_n_0_[5] ),
        .O(\SP[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SP_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(SP0),
        .D(cpu_STACK_reg_0_15_0_5_i_5_n_0),
        .Q(\SP_reg_n_0_[0] ),
        .R(\SP[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SP_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(SP0),
        .D(\SP[1]_i_1_n_0 ),
        .Q(\SP_reg_n_0_[1] ),
        .R(\SP[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SP_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(SP0),
        .D(\SP[2]_i_1_n_0 ),
        .Q(\SP_reg_n_0_[2] ),
        .R(\SP[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SP_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(SP0),
        .D(\SP[3]_i_1_n_0 ),
        .Q(\SP_reg_n_0_[3] ),
        .R(\SP[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SP_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(SP0),
        .D(\SP[4]_i_1_n_0 ),
        .Q(\SP_reg_n_0_[4] ),
        .R(\SP[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SP_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(SP0),
        .D(\SP[5]_i_1_n_0 ),
        .Q(\SP_reg_n_0_[5] ),
        .R(\SP[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SP_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(SP0),
        .D(\SP[6]_i_1_n_0 ),
        .Q(\SP_reg_n_0_[6] ),
        .R(\SP[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SP_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(SP0),
        .D(\SP[7]_i_3_n_0 ),
        .Q(\SP_reg_n_0_[7] ),
        .R(\SP[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000009C00000000)) 
    \addr[11]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\addr[11]_i_2_n_0 ),
        .I4(p_0_in[2]),
        .I5(s_sys_reset),
        .O(addr0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \addr[11]_i_2 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\addr[11]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\mem_ret_data_reg_n_0_[0] ),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\instruction_high_reg_n_0_[2] ),
        .Q(addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\instruction_high_reg_n_0_[3] ),
        .Q(addr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\mem_ret_data_reg_n_0_[1] ),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\mem_ret_data_reg_n_0_[2] ),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\mem_ret_data_reg_n_0_[3] ),
        .Q(addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\mem_ret_data_reg_n_0_[4] ),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\mem_ret_data_reg_n_0_[5] ),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\mem_ret_data_reg_n_0_[6] ),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\mem_ret_data_reg_n_0_[7] ),
        .Q(addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\instruction_high_reg_n_0_[0] ),
        .Q(addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(addr0),
        .D(\instruction_high_reg_n_0_[1] ),
        .Q(addr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA888A888A888AAAA)) 
    \cpu_REG[0][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[4][7]_i_2_n_0 ),
        .I2(\cpu_REG[0][7]_i_2_n_0 ),
        .I3(\cpu_REG[0][7]_i_3_n_0 ),
        .I4(\cpu_REG[13][7]_i_5_n_0 ),
        .I5(\mem_ret_state[5]_i_8_n_0 ),
        .O(\cpu_REG_reg[0]0 ));
  LUT6 #(
    .INIT(64'h000100010000FFFF)) 
    \cpu_REG[0][7]_i_2 
       (.I0(\reg_copy_num_reg_n_0_[2] ),
        .I1(\reg_copy_num_reg_n_0_[3] ),
        .I2(\reg_copy_num_reg_n_0_[0] ),
        .I3(\reg_copy_num_reg_n_0_[1] ),
        .I4(\mem_ret_state[5]_i_8_n_0 ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\cpu_REG[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \cpu_REG[0][7]_i_3 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(Q[1]),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(\current_state_reg_n_0_[5] ),
        .O(\cpu_REG[0][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A8A888A8)) 
    \cpu_REG[10][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[10][7]_i_2_n_0 ),
        .I2(\cpu_REG[10][7]_i_3_n_0 ),
        .I3(\cpu_REG[13][7]_i_5_n_0 ),
        .I4(\cpu_REG[13][7]_i_4_n_0 ),
        .I5(\cpu_REG[10][7]_i_4_n_0 ),
        .O(\cpu_REG_reg[10]0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \cpu_REG[10][7]_i_2 
       (.I0(\cpu_REG[4][7]_i_2_n_0 ),
        .I1(\reg_copy_num_reg_n_0_[2] ),
        .I2(\reg_copy_num_reg_n_0_[3] ),
        .I3(\reg_copy_num_reg_n_0_[0] ),
        .I4(\reg_copy_num_reg_n_0_[1] ),
        .I5(\cpu_REG[7][7]_i_3_n_0 ),
        .O(\cpu_REG[10][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_REG[10][7]_i_3 
       (.I0(x[1]),
        .I1(x[0]),
        .O(\cpu_REG[10][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cpu_REG[10][7]_i_4 
       (.I0(x[2]),
        .I1(x[3]),
        .O(\cpu_REG[10][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h08AA0808)) 
    \cpu_REG[11][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[11][7]_i_2_n_0 ),
        .I2(\cpu_REG[11][7]_i_3_n_0 ),
        .I3(\cpu_REG[11][7]_i_4_n_0 ),
        .I4(\reg_copy_num_reg_n_0_[1] ),
        .O(\cpu_REG_reg[11]0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000EAAA)) 
    \cpu_REG[11][7]_i_2 
       (.I0(\cpu_REG[11][7]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\cpu_REG[13][0]_i_3_n_0 ),
        .I3(\cpu_REG[13][0]_i_18_n_0 ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(\cpu_REG[11][7]_i_6_n_0 ),
        .O(\cpu_REG[11][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000F7FF)) 
    \cpu_REG[11][7]_i_3 
       (.I0(x[0]),
        .I1(x[1]),
        .I2(x[2]),
        .I3(x[3]),
        .I4(\cpu_REG[4][7]_i_2_n_0 ),
        .O(\cpu_REG[11][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \cpu_REG[11][7]_i_4 
       (.I0(\cpu_REG[0][7]_i_3_n_0 ),
        .I1(\reg_copy_num_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\reg_copy_num_reg_n_0_[3] ),
        .I4(\reg_copy_num_reg_n_0_[0] ),
        .O(\cpu_REG[11][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \cpu_REG[11][7]_i_5 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(\current_state_reg[5]_i_12_n_2 ),
        .O(\cpu_REG[11][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h04040C4C00040C0D)) 
    \cpu_REG[11][7]_i_6 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(Q[0]),
        .O(\cpu_REG[11][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A888A88888888)) 
    \cpu_REG[12][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[12][7]_i_2_n_0 ),
        .I2(\cpu_REG[13][7]_i_6_n_0 ),
        .I3(\cpu_REG[13][7]_i_5_n_0 ),
        .I4(\cpu_REG[13][7]_i_4_n_0 ),
        .I5(\mem_ret_state[3]_i_3_n_0 ),
        .O(\cpu_REG_reg[12]0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \cpu_REG[12][7]_i_2 
       (.I0(\cpu_REG[4][7]_i_2_n_0 ),
        .I1(\reg_copy_num_reg_n_0_[1] ),
        .I2(\cpu_REG[7][7]_i_3_n_0 ),
        .I3(\reg_copy_num_reg_n_0_[2] ),
        .I4(\reg_copy_num_reg_n_0_[3] ),
        .I5(\reg_copy_num_reg_n_0_[0] ),
        .O(\cpu_REG[12][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD500)) 
    \cpu_REG[13][0]_i_1 
       (.I0(\cpu_REG[13][0]_i_2_n_0 ),
        .I1(\cpu_REG[13][0]_i_3_n_0 ),
        .I2(\cpu_REG_reg[13][0]_i_4_n_7 ),
        .I3(\cpu_REG[13][3]_i_3_n_0 ),
        .I4(\cpu_REG[13][0]_i_5_n_0 ),
        .I5(\cpu_REG[13][0]_i_6_n_0 ),
        .O(\cpu_REG[0]_0 [0]));
  LUT3 #(
    .INIT(8'h53)) 
    \cpu_REG[13][0]_i_10 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\graphic_addressA[3]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[13][0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][0]_i_11 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .O(\cpu_REG[13][0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cpu_REG[13][0]_i_12 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .O(\cpu_REG[13][0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cpu_REG[13][0]_i_13 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .O(\cpu_REG[13][0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cpu_REG[13][0]_i_14 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\graphic_addressA[3]_i_2_n_0 ),
        .O(\cpu_REG[13][0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000D0000000000)) 
    \cpu_REG[13][0]_i_15 
       (.I0(Q[1]),
        .I1(\BCD_left[0]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\cpu_REG[13][0]_i_18_n_0 ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\graphic_addressA[3]_i_2_n_0 ),
        .O(\cpu_REG[13][0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \cpu_REG[13][0]_i_16 
       (.I0(\mem_ret_data_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .O(\cpu_REG[13][0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \cpu_REG[13][0]_i_17 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\cpu_REG[13][0]_i_19_n_0 ),
        .O(\cpu_REG[13][0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_REG[13][0]_i_18 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[5] ),
        .O(\cpu_REG[13][0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h707F5050707F5F5F)) 
    \cpu_REG[13][0]_i_19 
       (.I0(kk[0]),
        .I1(\cpu_REG[13][0]_i_20_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\mem_ret_data_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(key_counter[0]),
        .O(\cpu_REG[13][0]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hEB02EB57)) 
    \cpu_REG[13][0]_i_2 
       (.I0(Q[1]),
        .I1(\BCD_left[0]_i_2_n_0 ),
        .I2(\graphic_addressA[3]_i_2_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\cpu_REG_reg[13][3]_i_6_n_7 ),
        .O(\cpu_REG[13][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_REG[13][0]_i_20 
       (.I0(\RAND_reg[0]__0_P_n_0 ),
        .I1(\RAND_reg[0]__0_LDC_n_0 ),
        .I2(\RAND_reg[0]__0_C_n_0 ),
        .O(\cpu_REG[13][0]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_REG[13][0]_i_3 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\cpu_REG[13][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEFEEEEE)) 
    \cpu_REG[13][0]_i_5 
       (.I0(\cpu_REG[13][0]_i_15_n_0 ),
        .I1(\cpu_REG[13][0]_i_16_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(Q[0]),
        .I4(\cpu_REG_reg[13][0]_i_4_n_7 ),
        .I5(\cpu_REG[13][0]_i_17_n_0 ),
        .O(\cpu_REG[13][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4440000000400000)) 
    \cpu_REG[13][0]_i_6 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(\cpu_REG[13][0]_i_18_n_0 ),
        .I2(p_5_in[0]),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .O(\cpu_REG[13][0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \cpu_REG[13][0]_i_7 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .O(\cpu_REG[13][0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \cpu_REG[13][0]_i_8 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[13][0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \cpu_REG[13][0]_i_9 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[13][0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \cpu_REG[13][1]_i_1 
       (.I0(\cpu_REG[13][1]_i_2_n_0 ),
        .I1(\cpu_REG[13][7]_i_10_n_0 ),
        .I2(\cpu_REG[13][1]_i_3_n_0 ),
        .I3(\cpu_REG[13][1]_i_4_n_0 ),
        .I4(\cpu_REG[13][3]_i_3_n_0 ),
        .I5(\cpu_REG[13][1]_i_5_n_0 ),
        .O(\cpu_REG[0]_0 [1]));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C5F5C5F)) 
    \cpu_REG[13][1]_i_2 
       (.I0(\graphic_addressA[3]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I4(\cpu_REG[15][1]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800000000000000)) 
    \cpu_REG[13][1]_i_3 
       (.I0(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(p_5_in[1]),
        .I3(Q[0]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state[2]_i_4_n_0 ),
        .O(\cpu_REG[13][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDCCCCFCCC)) 
    \cpu_REG[13][1]_i_4 
       (.I0(\cpu_REG[13][1]_i_6_n_0 ),
        .I1(\cpu_REG[13][1]_i_7_n_0 ),
        .I2(\mem_ret_data_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\PC[11]_i_4_n_0 ),
        .I5(\cpu_REG[13][1]_i_8_n_0 ),
        .O(\cpu_REG[13][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7073404340437C7F)) 
    \cpu_REG[13][1]_i_5 
       (.I0(\cpu_REG_reg[13][0]_i_4_n_6 ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\cpu_REG_reg[13][3]_i_6_n_6 ),
        .I4(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I5(\cpu_REG[15][1]_i_3_n_0 ),
        .O(\cpu_REG[13][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h5D555DDD)) 
    \cpu_REG[13][1]_i_6 
       (.I0(kk[1]),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\RAND_reg[1]__0_P_n_0 ),
        .I3(\RAND_reg[1]__0_LDC_n_0 ),
        .I4(\RAND_reg[1]__0_C_n_0 ),
        .O(\cpu_REG[13][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF20202020202020)) 
    \cpu_REG[13][1]_i_7 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(\cpu_REG_reg[13][0]_i_4_n_6 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(key_counter[1]),
        .I5(\PC[11]_i_4_n_0 ),
        .O(\cpu_REG[13][1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_REG[13][1]_i_8 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\cpu_REG[13][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4FFF4F4)) 
    \cpu_REG[13][2]_i_1 
       (.I0(\cpu_REG[13][2]_i_2_n_0 ),
        .I1(\cpu_REG[13][3]_i_3_n_0 ),
        .I2(\cpu_REG[13][2]_i_3_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\cpu_REG[13][2]_i_4_n_0 ),
        .O(\cpu_REG[0]_0 [2]));
  LUT6 #(
    .INIT(64'h0003D11DCCCFD11D)) 
    \cpu_REG[13][2]_i_2 
       (.I0(\cpu_REG_reg[13][3]_i_6_n_5 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I3(\BCD_left[2]_i_2_n_0 ),
        .I4(Q[1]),
        .I5(\cpu_REG_reg[13][0]_i_4_n_5 ),
        .O(\cpu_REG[13][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEEEEEEEFEE)) 
    \cpu_REG[13][2]_i_3 
       (.I0(\cpu_REG[13][2]_i_5_n_0 ),
        .I1(\cpu_REG[13][2]_i_6_n_0 ),
        .I2(\cpu_REG[13][3]_i_7_n_0 ),
        .I3(p_5_in[2]),
        .I4(Q[1]),
        .I5(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .O(\cpu_REG[13][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C5F5C5F)) 
    \cpu_REG[13][2]_i_4 
       (.I0(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I4(\BCD_left[2]_i_2_n_0 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB000B000B000)) 
    \cpu_REG[13][2]_i_5 
       (.I0(\RAND[1]_i_1_n_0 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(kk[2]),
        .I3(\cpu_REG[13][1]_i_8_n_0 ),
        .I4(\sprite_buffer[7]_i_2_n_0 ),
        .I5(\cpu_REG_reg[13][0]_i_4_n_5 ),
        .O(\cpu_REG[13][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0A08AAA802000200)) 
    \cpu_REG[13][2]_i_6 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(key_counter[2]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\mem_ret_data_reg_n_0_[2] ),
        .O(\cpu_REG[13][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4FFF4F4)) 
    \cpu_REG[13][3]_i_1 
       (.I0(\cpu_REG[13][3]_i_2_n_0 ),
        .I1(\cpu_REG[13][3]_i_3_n_0 ),
        .I2(\cpu_REG[13][3]_i_4_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\cpu_REG[13][3]_i_5_n_0 ),
        .O(\cpu_REG[0]_0 [3]));
  LUT6 #(
    .INIT(64'h0A08AAA802000200)) 
    \cpu_REG[13][3]_i_10 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(key_counter[3]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\mem_ret_data_reg_n_0_[3] ),
        .O(\cpu_REG[13][3]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cpu_REG[13][3]_i_11 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\cpu_REG[13][3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cpu_REG[13][3]_i_12 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(kk[3]),
        .O(\cpu_REG[13][3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][3]_i_13 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(kk[2]),
        .O(\cpu_REG[13][3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][3]_i_14 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(kk[1]),
        .O(\cpu_REG[13][3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][3]_i_15 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(kk[0]),
        .O(\cpu_REG[13][3]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cpu_REG[13][3]_i_16 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\cpu_REG[13][3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cpu_REG[13][3]_i_17 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .O(\cpu_REG[13][3]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][3]_i_18 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .O(\cpu_REG[13][3]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][3]_i_19 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .O(\cpu_REG[13][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h03001DD1CFCC1DD1)) 
    \cpu_REG[13][3]_i_2 
       (.I0(\cpu_REG_reg[13][3]_i_6_n_4 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .I3(\cpu_REG[15][3]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\cpu_REG_reg[13][0]_i_4_n_4 ),
        .O(\cpu_REG[13][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][3]_i_20 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\graphic_addressA[3]_i_2_n_0 ),
        .O(\cpu_REG[13][3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00DC)) 
    \cpu_REG[13][3]_i_3 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(Q[0]),
        .O(\cpu_REG[13][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4540)) 
    \cpu_REG[13][3]_i_4 
       (.I0(\cpu_REG[13][3]_i_7_n_0 ),
        .I1(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(p_5_in[3]),
        .I4(\cpu_REG[13][3]_i_9_n_0 ),
        .I5(\cpu_REG[13][3]_i_10_n_0 ),
        .O(\cpu_REG[13][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5C5F5C5F5C5F)) 
    \cpu_REG[13][3]_i_5 
       (.I0(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .I4(\cpu_REG[15][3]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cpu_REG[13][3]_i_7 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[5] ),
        .O(\cpu_REG[13][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF888888888888)) 
    \cpu_REG[13][3]_i_9 
       (.I0(\sprite_buffer[7]_i_2_n_0 ),
        .I1(\cpu_REG_reg[13][0]_i_4_n_4 ),
        .I2(\RAND[2]_i_1_n_0 ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(kk[3]),
        .I5(\cpu_REG[13][1]_i_8_n_0 ),
        .O(\cpu_REG[13][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFFFEFE)) 
    \cpu_REG[13][4]_i_1 
       (.I0(\cpu_REG[13][4]_i_2_n_0 ),
        .I1(\cpu_REG[13][4]_i_3_n_0 ),
        .I2(\cpu_REG[13][4]_i_4_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\cpu_REG[13][4]_i_5_n_0 ),
        .O(\cpu_REG[0]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \cpu_REG[13][4]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\cpu_REG[13][4]_i_6_n_0 ),
        .I4(\mem_ret_data_reg_n_0_[4] ),
        .I5(\cpu_REG[13][4]_i_7_n_0 ),
        .O(\cpu_REG[13][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \cpu_REG[13][4]_i_3 
       (.I0(\cpu_REG_reg[13][6]_i_6_n_7 ),
        .I1(Q[0]),
        .I2(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\current_state_reg[3]_rep_n_0 ),
        .O(\cpu_REG[13][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8080F080)) 
    \cpu_REG[13][4]_i_4 
       (.I0(Q[1]),
        .I1(kk[4]),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\cpu_REG_reg[13][6]_i_6_n_7 ),
        .I4(Q[0]),
        .I5(\cpu_REG[13][4]_i_8_n_0 ),
        .O(\cpu_REG[13][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C5F5C5F)) 
    \cpu_REG[13][4]_i_5 
       (.I0(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I4(\cpu_REG[15][4]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000EFE0)) 
    \cpu_REG[13][4]_i_6 
       (.I0(\cpu_REG[15][4]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\cpu_REG_reg[15][7]_i_19_n_7 ),
        .I4(Q[0]),
        .O(\cpu_REG[13][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_REG[13][4]_i_7 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(Q[1]),
        .O(\cpu_REG[13][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8888888A888)) 
    \cpu_REG[13][4]_i_8 
       (.I0(\cpu_REG[15][7]_i_10_n_0 ),
        .I1(\cpu_REG[13][4]_i_9_n_0 ),
        .I2(\current_state[2]_i_4_n_0 ),
        .I3(\cpu_REG[15][4]_i_5_n_0 ),
        .I4(Q[0]),
        .I5(p_5_in[4]),
        .O(\cpu_REG[13][4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \cpu_REG[13][4]_i_9 
       (.I0(\RAND_reg[4]__0_C_n_0 ),
        .I1(\RAND_reg[4]__0_LDC_n_0 ),
        .I2(\RAND_reg[4]__0_P_n_0 ),
        .I3(kk[4]),
        .I4(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[13][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF04)) 
    \cpu_REG[13][5]_i_1 
       (.I0(\cpu_REG[13][5]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\cpu_REG[13][5]_i_3_n_0 ),
        .I4(\cpu_REG[13][5]_i_4_n_0 ),
        .I5(\cpu_REG[13][5]_i_5_n_0 ),
        .O(\cpu_REG[0]_0 [5]));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C5F5C5F)) 
    \cpu_REG[13][5]_i_2 
       (.I0(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I4(\cpu_REG[15][5]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \cpu_REG[13][5]_i_3 
       (.I0(\cpu_REG_reg[13][6]_i_6_n_6 ),
        .I1(Q[0]),
        .I2(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\current_state_reg[3]_rep_n_0 ),
        .O(\cpu_REG[13][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8080F080)) 
    \cpu_REG[13][5]_i_4 
       (.I0(Q[1]),
        .I1(kk[5]),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\cpu_REG_reg[13][6]_i_6_n_6 ),
        .I4(Q[0]),
        .I5(\cpu_REG[13][5]_i_6_n_0 ),
        .O(\cpu_REG[13][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F008F8F8F8F)) 
    \cpu_REG[13][5]_i_5 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\mem_ret_data_reg_n_0_[5] ),
        .I2(\cpu_REG[13][5]_i_7_n_0 ),
        .I3(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I4(\cpu_REG[15][5]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88800080AAAAAAAA)) 
    \cpu_REG[13][5]_i_6 
       (.I0(\cpu_REG[15][7]_i_10_n_0 ),
        .I1(\current_state[2]_i_4_n_0 ),
        .I2(\cpu_REG[15][5]_i_5_n_0 ),
        .I3(Q[0]),
        .I4(p_5_in[5]),
        .I5(\cpu_REG[13][5]_i_8_n_0 ),
        .O(\cpu_REG[13][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFDFFFF)) 
    \cpu_REG[13][5]_i_7 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(\cpu_REG_reg[15][7]_i_19_n_6 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h777FFF7F)) 
    \cpu_REG[13][5]_i_8 
       (.I0(kk[5]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\RAND_reg[5]__0_C_n_0 ),
        .I3(\RAND_reg[5]__0_LDC_n_0 ),
        .I4(\RAND_reg[5]__0_P_n_0 ),
        .O(\cpu_REG[13][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF04)) 
    \cpu_REG[13][6]_i_1 
       (.I0(\cpu_REG[13][6]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\cpu_REG[13][6]_i_3_n_0 ),
        .I4(\cpu_REG[13][6]_i_4_n_0 ),
        .I5(\cpu_REG[13][6]_i_5_n_0 ),
        .O(\cpu_REG[0]_0 [6]));
  LUT3 #(
    .INIT(8'h47)) 
    \cpu_REG[13][6]_i_10 
       (.I0(\cpu_REG[15][5]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .O(\cpu_REG[13][6]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \cpu_REG[13][6]_i_11 
       (.I0(\cpu_REG[15][4]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .O(\cpu_REG[13][6]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cpu_REG[13][6]_i_12 
       (.I0(\PC[11]_i_44_n_0 ),
        .O(\cpu_REG[13][6]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cpu_REG[13][6]_i_13 
       (.I0(\cpu_REG[15][6]_i_3_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .O(\cpu_REG[13][6]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cpu_REG[13][6]_i_14 
       (.I0(\cpu_REG[15][5]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .O(\cpu_REG[13][6]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cpu_REG[13][6]_i_15 
       (.I0(\cpu_REG[15][4]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .O(\cpu_REG[13][6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h777FFF7F)) 
    \cpu_REG[13][6]_i_16 
       (.I0(kk[6]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\RAND_reg[6]__0_C_n_0 ),
        .I3(\RAND_reg[6]__0_LDC_n_0 ),
        .I4(\RAND_reg[6]__0_P_n_0 ),
        .O(\cpu_REG[13][6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C5F5C5F)) 
    \cpu_REG[13][6]_i_2 
       (.I0(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I4(\cpu_REG[15][6]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \cpu_REG[13][6]_i_3 
       (.I0(\cpu_REG_reg[13][6]_i_6_n_5 ),
        .I1(Q[0]),
        .I2(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\current_state_reg[3]_rep_n_0 ),
        .O(\cpu_REG[13][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAAAFFAAEAAA)) 
    \cpu_REG[13][6]_i_4 
       (.I0(\cpu_REG[13][6]_i_7_n_0 ),
        .I1(Q[1]),
        .I2(kk[6]),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(\cpu_REG_reg[13][6]_i_6_n_5 ),
        .I5(Q[0]),
        .O(\cpu_REG[13][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F008F8F8F8F)) 
    \cpu_REG[13][6]_i_5 
       (.I0(\mem_ret_data_reg_n_0_[6] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\cpu_REG[13][6]_i_8_n_0 ),
        .I3(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I4(\cpu_REG[15][6]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88800080AAAAAAAA)) 
    \cpu_REG[13][6]_i_7 
       (.I0(\cpu_REG[15][7]_i_10_n_0 ),
        .I1(\current_state[2]_i_4_n_0 ),
        .I2(\cpu_REG[15][6]_i_5_n_0 ),
        .I3(Q[0]),
        .I4(p_5_in[6]),
        .I5(\cpu_REG[13][6]_i_16_n_0 ),
        .O(\cpu_REG[13][6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFDFFFF)) 
    \cpu_REG[13][6]_i_8 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(\cpu_REG_reg[15][7]_i_19_n_5 ),
        .I5(Q[1]),
        .O(\cpu_REG[13][6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \cpu_REG[13][6]_i_9 
       (.I0(\cpu_REG[15][6]_i_3_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[13][6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8888A8AA88888888)) 
    \cpu_REG[13][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[13][7]_i_3_n_0 ),
        .I2(\cpu_REG[13][7]_i_4_n_0 ),
        .I3(\cpu_REG[13][7]_i_5_n_0 ),
        .I4(\cpu_REG[13][7]_i_6_n_0 ),
        .I5(\cpu_REG[13][7]_i_7_n_0 ),
        .O(\cpu_REG_reg[13]0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_REG[13][7]_i_10 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\cpu_REG[13][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAEA)) 
    \cpu_REG[13][7]_i_11 
       (.I0(\cpu_REG[15][7]_i_12_n_0 ),
        .I1(\mem_ret_data_reg_n_0_[7] ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(Q[1]),
        .I4(\cpu_REG[13][7]_i_16_n_0 ),
        .I5(\cpu_REG[13][7]_i_17_n_0 ),
        .O(\cpu_REG[13][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555555510000000)) 
    \cpu_REG[13][7]_i_12 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(Q[0]),
        .I3(\cpu_REG[13][0]_i_3_n_0 ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\cpu_REG[11][7]_i_5_n_0 ),
        .O(\cpu_REG[13][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hC000FF88C000C000)) 
    \cpu_REG[13][7]_i_16 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(kk[7]),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[0]),
        .I5(\cpu_REG_reg[13][6]_i_6_n_4 ),
        .O(\cpu_REG[13][7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE40000000000)) 
    \cpu_REG[13][7]_i_17 
       (.I0(Q[0]),
        .I1(\cpu_REG[15]0 ),
        .I2(p_5_in[7]),
        .I3(\current_state[2]_i_4_n_0 ),
        .I4(\cpu_REG[13][7]_i_25_n_0 ),
        .I5(\cpu_REG[15][7]_i_10_n_0 ),
        .O(\cpu_REG[13][7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[13][7]_i_18 
       (.I0(\cpu_REG_reg[3]_11 [6]),
        .I1(\cpu_REG_reg[2]_12 [6]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[1]_13 [6]),
        .I4(y[0]),
        .I5(R[6]),
        .O(\cpu_REG[13][7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[13][7]_i_19 
       (.I0(\cpu_REG_reg[7]_7 [6]),
        .I1(\cpu_REG_reg[6]_8 [6]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[5]_9 [6]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[4]_10 [6]),
        .O(\cpu_REG[13][7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA3A00000)) 
    \cpu_REG[13][7]_i_2 
       (.I0(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\cpu_REG[13][7]_i_9_n_0 ),
        .I4(\cpu_REG[13][7]_i_10_n_0 ),
        .I5(\cpu_REG[13][7]_i_11_n_0 ),
        .O(\cpu_REG[0]_0 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[13][7]_i_20 
       (.I0(\cpu_REG_reg[11]_3 [6]),
        .I1(\cpu_REG_reg[10]_4 [6]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[9]_5 [6]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[8]_6 [6]),
        .O(\cpu_REG[13][7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[13][7]_i_21 
       (.I0(\cpu_REG_reg[15]_15 [6]),
        .I1(\cpu_REG_reg[14]_14 [6]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[13]_1 [6]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[12]_2 [6]),
        .O(\cpu_REG[13][7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \cpu_REG[13][7]_i_25 
       (.I0(\RAND_reg[7]__0_C_n_0 ),
        .I1(\RAND_reg[7]__0_LDC_n_0 ),
        .I2(\RAND_reg[7]__0_P_n_0 ),
        .I3(kk[7]),
        .I4(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[13][7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[13][7]_i_26 
       (.I0(\cpu_REG_reg[3]_11 [7]),
        .I1(\cpu_REG_reg[2]_12 [7]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[1]_13 [7]),
        .I4(y[0]),
        .I5(R[7]),
        .O(\cpu_REG[13][7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[13][7]_i_27 
       (.I0(\cpu_REG_reg[7]_7 [7]),
        .I1(\cpu_REG_reg[6]_8 [7]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[5]_9 [7]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[4]_10 [7]),
        .O(\cpu_REG[13][7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[13][7]_i_28 
       (.I0(\cpu_REG_reg[11]_3 [7]),
        .I1(\cpu_REG_reg[10]_4 [7]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[9]_5 [7]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[8]_6 [7]),
        .O(\cpu_REG[13][7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[13][7]_i_29 
       (.I0(\cpu_REG_reg[15]_15 [7]),
        .I1(\cpu_REG_reg[14]_14 [7]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[13]_1 [7]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[12]_2 [7]),
        .O(\cpu_REG[13][7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \cpu_REG[13][7]_i_3 
       (.I0(\cpu_REG[4][7]_i_2_n_0 ),
        .I1(\reg_copy_num_reg_n_0_[0] ),
        .I2(\reg_copy_num_reg_n_0_[3] ),
        .I3(\reg_copy_num_reg_n_0_[2] ),
        .I4(\reg_copy_num_reg_n_0_[1] ),
        .I5(\cpu_REG[7][7]_i_3_n_0 ),
        .O(\cpu_REG[13][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][7]_i_30 
       (.I0(\BCD_left[7]_i_5_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .O(\cpu_REG[13][7]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][7]_i_31 
       (.I0(\cpu_REG[15][6]_i_3_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .O(\cpu_REG[13][7]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][7]_i_32 
       (.I0(\cpu_REG[15][5]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .O(\cpu_REG[13][7]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[13][7]_i_33 
       (.I0(\cpu_REG[15][4]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .O(\cpu_REG[13][7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \cpu_REG[13][7]_i_4 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\cpu_REG[13][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555545554555455)) 
    \cpu_REG[13][7]_i_5 
       (.I0(\cpu_REG[13][7]_i_12_n_0 ),
        .I1(\PC[11]_i_13_n_0 ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(Q[1]),
        .O(\cpu_REG[13][7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cpu_REG[13][7]_i_6 
       (.I0(x[3]),
        .I1(x[2]),
        .O(\cpu_REG[13][7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_REG[13][7]_i_7 
       (.I0(x[0]),
        .I1(x[1]),
        .O(\cpu_REG[13][7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cpu_REG[13][7]_i_9 
       (.I0(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I1(\BCD_left[7]_i_5_n_0 ),
        .I2(Q[1]),
        .O(\cpu_REG[13][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A8888888A88)) 
    \cpu_REG[14][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[14][7]_i_2_n_0 ),
        .I2(\cpu_REG[13][7]_i_6_n_0 ),
        .I3(\cpu_REG[10][7]_i_3_n_0 ),
        .I4(\cpu_REG[13][7]_i_5_n_0 ),
        .I5(\cpu_REG[13][7]_i_4_n_0 ),
        .O(\cpu_REG_reg[14]0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \cpu_REG[14][7]_i_2 
       (.I0(\cpu_REG[4][7]_i_2_n_0 ),
        .I1(\reg_copy_num_reg_n_0_[1] ),
        .I2(\cpu_REG[7][7]_i_3_n_0 ),
        .I3(\reg_copy_num_reg_n_0_[2] ),
        .I4(\reg_copy_num_reg_n_0_[3] ),
        .I5(\reg_copy_num_reg_n_0_[0] ),
        .O(\cpu_REG[14][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4FF0000F400)) 
    \cpu_REG[15][0]_i_1 
       (.I0(\cpu_REG[15][0]_i_2_n_0 ),
        .I1(\cpu_REG[13][3]_i_3_n_0 ),
        .I2(\cpu_REG[15][0]_i_3_n_0 ),
        .I3(\cpu_REG[15][7]_i_3_n_0 ),
        .I4(\cpu_REG[15][0]_i_4_n_0 ),
        .I5(\cpu_REG_reg[15]_15 [0]),
        .O(\cpu_REG[15][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_REG[15][0]_i_10 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[15][0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0002000202022202)) 
    \cpu_REG[15][0]_i_11 
       (.I0(\cpu_REG[15][7]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\cpu_REG[15][0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cpu_REG[15][0]_i_12 
       (.I0(\BCD_left[7]_i_5_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I2(\cpu_REG[15][6]_i_3_n_0 ),
        .I3(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .O(\cpu_REG[15][0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h40F4)) 
    \cpu_REG[15][0]_i_13 
       (.I0(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I1(\cpu_REG[15][4]_i_3_n_0 ),
        .I2(\cpu_REG[15][5]_i_3_n_0 ),
        .I3(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .O(\cpu_REG[15][0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h044F)) 
    \cpu_REG[15][0]_i_14 
       (.I0(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I1(\BCD_left[2]_i_2_n_0 ),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .I3(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .O(\cpu_REG[15][0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \cpu_REG[15][0]_i_15 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I2(\BCD_left[0]_i_2_n_0 ),
        .I3(\graphic_addressA[3]_i_2_n_0 ),
        .O(\cpu_REG[15][0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cpu_REG[15][0]_i_16 
       (.I0(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I1(\cpu_REG[15][6]_i_3_n_0 ),
        .I2(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I3(\BCD_left[7]_i_5_n_0 ),
        .O(\cpu_REG[15][0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cpu_REG[15][0]_i_17 
       (.I0(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I1(\cpu_REG[15][4]_i_3_n_0 ),
        .I2(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I3(\cpu_REG[15][5]_i_3_n_0 ),
        .O(\cpu_REG[15][0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \cpu_REG[15][0]_i_18 
       (.I0(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I1(\BCD_left[2]_i_2_n_0 ),
        .I2(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .I3(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\cpu_REG[15][0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cpu_REG[15][0]_i_19 
       (.I0(\graphic_addressA[3]_i_2_n_0 ),
        .I1(\BCD_left[0]_i_2_n_0 ),
        .I2(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I3(\cpu_REG[15][1]_i_3_n_0 ),
        .O(\cpu_REG[15][0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00C30355FFC30355)) 
    \cpu_REG[15][0]_i_2 
       (.I0(\cpu_REG_reg[13][3]_i_6_n_7 ),
        .I1(\graphic_addressA[3]_i_2_n_0 ),
        .I2(\BCD_left[0]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(geqOp1_in),
        .O(\cpu_REG[15][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CAA0C00FF000C00)) 
    \cpu_REG[15][0]_i_20 
       (.I0(\mem_ret_data_reg_n_0_[0] ),
        .I1(geqOp),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\cpu_REG[15][0]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \cpu_REG[15][0]_i_22 
       (.I0(\cpu_REG_reg[14]_14 [0]),
        .I1(y[1]),
        .I2(\cpu_REG_reg[13]_1 [0]),
        .I3(y[0]),
        .I4(\cpu_REG_reg[12]_2 [0]),
        .O(\cpu_REG[15][0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \cpu_REG[15][0]_i_24 
       (.I0(\BCD_left[7]_i_5_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I2(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I3(\cpu_REG[15][6]_i_3_n_0 ),
        .O(\cpu_REG[15][0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \cpu_REG[15][0]_i_25 
       (.I0(\cpu_REG[15][5]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I2(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I3(\cpu_REG[15][4]_i_3_n_0 ),
        .O(\cpu_REG[15][0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF440)) 
    \cpu_REG[15][0]_i_26 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .I3(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .O(\cpu_REG[15][0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \cpu_REG[15][0]_i_27 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I2(\graphic_addressA[3]_i_2_n_0 ),
        .I3(\BCD_left[0]_i_2_n_0 ),
        .O(\cpu_REG[15][0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cpu_REG[15][0]_i_28 
       (.I0(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I1(\cpu_REG[15][6]_i_3_n_0 ),
        .I2(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I3(\BCD_left[7]_i_5_n_0 ),
        .O(\cpu_REG[15][0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cpu_REG[15][0]_i_29 
       (.I0(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I1(\cpu_REG[15][4]_i_3_n_0 ),
        .I2(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I3(\cpu_REG[15][5]_i_3_n_0 ),
        .O(\cpu_REG[15][0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFEEE)) 
    \cpu_REG[15][0]_i_3 
       (.I0(\cpu_REG[13][0]_i_15_n_0 ),
        .I1(\cpu_REG[15][0]_i_6_n_0 ),
        .I2(\cpu_REG[15][0]_i_7_n_0 ),
        .I3(Q[1]),
        .I4(p_5_in[8]),
        .I5(\cpu_REG[13][3]_i_7_n_0 ),
        .O(\cpu_REG[15][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \cpu_REG[15][0]_i_30 
       (.I0(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I1(\BCD_left[2]_i_2_n_0 ),
        .I2(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .I3(\cpu_REG[15][3]_i_3_n_0 ),
        .O(\cpu_REG[15][0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \cpu_REG[15][0]_i_31 
       (.I0(\graphic_addressA[3]_i_2_n_0 ),
        .I1(\BCD_left[0]_i_2_n_0 ),
        .I2(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I3(\cpu_REG[15][1]_i_3_n_0 ),
        .O(\cpu_REG[15][0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004FCF)) 
    \cpu_REG[15][0]_i_4 
       (.I0(\cpu_REG[15][0]_i_9_n_0 ),
        .I1(\cpu_REG[15][7]_i_16_n_0 ),
        .I2(\cpu_REG[15][0]_i_10_n_0 ),
        .I3(\PC[11]_i_6_n_0 ),
        .I4(\cpu_REG[15][0]_i_11_n_0 ),
        .I5(\cpu_REG[15][7]_i_6_n_0 ),
        .O(\cpu_REG[15][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8FFF0F0F8F0)) 
    \cpu_REG[15][0]_i_6 
       (.I0(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I1(Q[0]),
        .I2(\cpu_REG[15][0]_i_20_n_0 ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\cpu_REG[13][0]_i_17_n_0 ),
        .O(\cpu_REG[15][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEE2EFFFFE222FFFF)) 
    \cpu_REG[15][0]_i_7 
       (.I0(\cpu_REG_reg[15][0]_i_21_n_0 ),
        .I1(y[3]),
        .I2(y[2]),
        .I3(\cpu_REG[15][0]_i_22_n_0 ),
        .I4(Q[1]),
        .I5(\graphic_addressA[3]_i_4_n_0 ),
        .O(\cpu_REG[15][0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cpu_REG[15][0]_i_9 
       (.I0(y[2]),
        .I1(y[3]),
        .I2(Q[0]),
        .I3(y[0]),
        .I4(y[1]),
        .O(\cpu_REG[15][0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hDDCDCCCCFFFFFFCF)) 
    \cpu_REG[15][1]_i_1 
       (.I0(\cpu_REG[15][7]_i_8_n_0 ),
        .I1(\cpu_REG[15][1]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\cpu_REG[15][1]_i_3_n_0 ),
        .I4(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .I5(\cpu_REG[15][1]_i_5_n_0 ),
        .O(\cpu_REG[15][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][1]_i_10 
       (.I0(\cpu_REG_reg[3]_11 [1]),
        .I1(\cpu_REG_reg[2]_12 [1]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[1]_13 [1]),
        .I4(x[0]),
        .I5(R[1]),
        .O(\cpu_REG[15][1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][1]_i_13 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .O(\cpu_REG[15][1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h1DFFFFFF)) 
    \cpu_REG[15][1]_i_14 
       (.I0(\RAND_reg[1]__0_C_n_0 ),
        .I1(\RAND_reg[1]__0_LDC_n_0 ),
        .I2(\RAND_reg[1]__0_P_n_0 ),
        .I3(kk[1]),
        .I4(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[15][1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][1]_i_15 
       (.I0(\cpu_REG_reg[3]_11 [1]),
        .I1(\cpu_REG_reg[2]_12 [1]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[1]_13 [1]),
        .I4(y[0]),
        .I5(R[1]),
        .O(\cpu_REG[15][1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][1]_i_16 
       (.I0(\cpu_REG_reg[7]_7 [1]),
        .I1(\cpu_REG_reg[6]_8 [1]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[5]_9 [1]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[4]_10 [1]),
        .O(\cpu_REG[15][1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][1]_i_17 
       (.I0(\cpu_REG_reg[11]_3 [1]),
        .I1(\cpu_REG_reg[10]_4 [1]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[9]_5 [1]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[8]_6 [1]),
        .O(\cpu_REG[15][1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][1]_i_18 
       (.I0(\cpu_REG_reg[15]_15 [1]),
        .I1(\cpu_REG_reg[14]_14 [1]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[13]_1 [1]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[12]_2 [1]),
        .O(\cpu_REG[15][1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00003808)) 
    \cpu_REG[15][1]_i_2 
       (.I0(kk[1]),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(key_counter[1]),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(\cpu_REG[15][1]_i_6_n_0 ),
        .O(\cpu_REG[15][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \cpu_REG[15][1]_i_3 
       (.I0(\cpu_REG[15][1]_i_7_n_0 ),
        .I1(\cpu_REG[15][1]_i_8_n_0 ),
        .I2(\cpu_REG[15][1]_i_9_n_0 ),
        .I3(x[2]),
        .I4(x[3]),
        .I5(\cpu_REG[15][1]_i_10_n_0 ),
        .O(\cpu_REG[15][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFDFFFF)) 
    \cpu_REG[15][1]_i_5 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(\cpu_REG_reg[13][3]_i_6_n_6 ),
        .I5(Q[1]),
        .O(\cpu_REG[15][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF40F040F040F0)) 
    \cpu_REG[15][1]_i_6 
       (.I0(Q[0]),
        .I1(\cpu_REG[15][1]_i_13_n_0 ),
        .I2(\cpu_REG[15][7]_i_10_n_0 ),
        .I3(\cpu_REG[15][1]_i_14_n_0 ),
        .I4(\tmp_err_code[1]_i_5_n_0 ),
        .I5(\mem_ret_data_reg_n_0_[1] ),
        .O(\cpu_REG[15][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][1]_i_7 
       (.I0(\cpu_REG_reg[15]_15 [1]),
        .I1(\cpu_REG_reg[14]_14 [1]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[13]_1 [1]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[12]_2 [1]),
        .O(\cpu_REG[15][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][1]_i_8 
       (.I0(\cpu_REG_reg[11]_3 [1]),
        .I1(\cpu_REG_reg[10]_4 [1]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[9]_5 [1]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[8]_6 [1]),
        .O(\cpu_REG[15][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][1]_i_9 
       (.I0(\cpu_REG_reg[7]_7 [1]),
        .I1(\cpu_REG_reg[6]_8 [1]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[5]_9 [1]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[4]_10 [1]),
        .O(\cpu_REG[15][1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFCFDFCFCFFFFFCFF)) 
    \cpu_REG[15][2]_i_1 
       (.I0(\cpu_REG[15][7]_i_8_n_0 ),
        .I1(\cpu_REG[15][2]_i_2_n_0 ),
        .I2(\cpu_REG[15][2]_i_3_n_0 ),
        .I3(\cpu_REG[15][2]_i_4_n_0 ),
        .I4(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .I5(\cpu_REG[15][2]_i_6_n_0 ),
        .O(\cpu_REG[15][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][2]_i_10 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .O(\cpu_REG[15][2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][2]_i_11 
       (.I0(\cpu_REG_reg[3]_11 [2]),
        .I1(\cpu_REG_reg[2]_12 [2]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[1]_13 [2]),
        .I4(y[0]),
        .I5(R[2]),
        .O(\cpu_REG[15][2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][2]_i_12 
       (.I0(\cpu_REG_reg[7]_7 [2]),
        .I1(\cpu_REG_reg[6]_8 [2]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[5]_9 [2]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[4]_10 [2]),
        .O(\cpu_REG[15][2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][2]_i_13 
       (.I0(\cpu_REG_reg[11]_3 [2]),
        .I1(\cpu_REG_reg[10]_4 [2]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[9]_5 [2]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[8]_6 [2]),
        .O(\cpu_REG[15][2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][2]_i_14 
       (.I0(\cpu_REG_reg[15]_15 [2]),
        .I1(\cpu_REG_reg[14]_14 [2]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[13]_1 [2]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[12]_2 [2]),
        .O(\cpu_REG[15][2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h14041000)) 
    \cpu_REG[15][2]_i_2 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(kk[2]),
        .I4(key_counter[2]),
        .O(\cpu_REG[15][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \cpu_REG[15][2]_i_3 
       (.I0(\RAND[1]_i_1_n_0 ),
        .I1(kk[2]),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\cpu_REG[15][2]_i_7_n_0 ),
        .O(\cpu_REG[15][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_REG[15][2]_i_4 
       (.I0(Q[1]),
        .I1(\BCD_left[2]_i_2_n_0 ),
        .O(\cpu_REG[15][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFDFFFF)) 
    \cpu_REG[15][2]_i_6 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(\cpu_REG_reg[13][3]_i_6_n_5 ),
        .I5(Q[1]),
        .O(\cpu_REG[15][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8080FF8080808080)) 
    \cpu_REG[15][2]_i_7 
       (.I0(\mem_ret_data_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\cpu_REG[15][7]_i_10_n_0 ),
        .I4(Q[0]),
        .I5(\cpu_REG[15][2]_i_10_n_0 ),
        .O(\cpu_REG[15][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55157F15)) 
    \cpu_REG[15][3]_i_1 
       (.I0(\cpu_REG[15][3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .I3(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .I4(\cpu_REG[15][7]_i_8_n_0 ),
        .I5(\cpu_REG[15][3]_i_5_n_0 ),
        .O(\cpu_REG[15][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF20F020F020F0)) 
    \cpu_REG[15][3]_i_12 
       (.I0(\cpu_REG[15][3]_i_17_n_0 ),
        .I1(Q[0]),
        .I2(\cpu_REG[15][7]_i_10_n_0 ),
        .I3(\cpu_REG[15][3]_i_18_n_0 ),
        .I4(\tmp_err_code[1]_i_5_n_0 ),
        .I5(\mem_ret_data_reg_n_0_[3] ),
        .O(\cpu_REG[15][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][3]_i_13 
       (.I0(\cpu_REG_reg[3]_11 [3]),
        .I1(\cpu_REG_reg[2]_12 [3]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[1]_13 [3]),
        .I4(y[0]),
        .I5(R[3]),
        .O(\cpu_REG[15][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][3]_i_14 
       (.I0(\cpu_REG_reg[7]_7 [3]),
        .I1(\cpu_REG_reg[6]_8 [3]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[5]_9 [3]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[4]_10 [3]),
        .O(\cpu_REG[15][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][3]_i_15 
       (.I0(\cpu_REG_reg[11]_3 [3]),
        .I1(\cpu_REG_reg[10]_4 [3]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[9]_5 [3]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[8]_6 [3]),
        .O(\cpu_REG[15][3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][3]_i_16 
       (.I0(\cpu_REG_reg[15]_15 [3]),
        .I1(\cpu_REG_reg[14]_14 [3]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[13]_1 [3]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[12]_2 [3]),
        .O(\cpu_REG[15][3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cpu_REG[15][3]_i_17 
       (.I0(\cpu_REG[15][3]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .O(\cpu_REG[15][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h1DFFFFFF)) 
    \cpu_REG[15][3]_i_18 
       (.I0(\RAND_reg[3]__0_C_n_0 ),
        .I1(\RAND_reg[3]__0_LDC_n_0 ),
        .I2(\RAND_reg[3]__0_P_n_0 ),
        .I3(kk[3]),
        .I4(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[15][3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFDFDFF)) 
    \cpu_REG[15][3]_i_2 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\cpu_REG_reg[13][3]_i_6_n_4 ),
        .I5(Q[0]),
        .O(\cpu_REG[15][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55330F0055330FFF)) 
    \cpu_REG[15][3]_i_3 
       (.I0(\cpu_REG[15][3]_i_6_n_0 ),
        .I1(\cpu_REG[15][3]_i_7_n_0 ),
        .I2(\cpu_REG[15][3]_i_8_n_0 ),
        .I3(x[2]),
        .I4(x[3]),
        .I5(\cpu_REG[15][3]_i_9_n_0 ),
        .O(\cpu_REG[15][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000AC0)) 
    \cpu_REG[15][3]_i_5 
       (.I0(key_counter[3]),
        .I1(kk[3]),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(\cpu_REG[15][3]_i_12_n_0 ),
        .O(\cpu_REG[15][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][3]_i_6 
       (.I0(\cpu_REG_reg[15]_15 [3]),
        .I1(\cpu_REG_reg[14]_14 [3]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[13]_1 [3]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[12]_2 [3]),
        .O(\cpu_REG[15][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][3]_i_7 
       (.I0(\cpu_REG_reg[11]_3 [3]),
        .I1(\cpu_REG_reg[10]_4 [3]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[9]_5 [3]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[8]_6 [3]),
        .O(\cpu_REG[15][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][3]_i_8 
       (.I0(\cpu_REG_reg[7]_7 [3]),
        .I1(\cpu_REG_reg[6]_8 [3]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[5]_9 [3]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[4]_10 [3]),
        .O(\cpu_REG[15][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][3]_i_9 
       (.I0(\cpu_REG_reg[3]_11 [3]),
        .I1(\cpu_REG_reg[2]_12 [3]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[1]_13 [3]),
        .I4(x[0]),
        .I5(R[3]),
        .O(\cpu_REG[15][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFEFEEEE)) 
    \cpu_REG[15][4]_i_1 
       (.I0(\cpu_REG[13][4]_i_2_n_0 ),
        .I1(\cpu_REG[15][4]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\cpu_REG[15][4]_i_3_n_0 ),
        .I4(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .I5(\cpu_REG[15][7]_i_8_n_0 ),
        .O(\cpu_REG[15][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][4]_i_10 
       (.I0(\cpu_REG_reg[7]_7 [4]),
        .I1(\cpu_REG_reg[6]_8 [4]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[5]_9 [4]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[4]_10 [4]),
        .O(\cpu_REG[15][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][4]_i_13 
       (.I0(\cpu_REG_reg[3]_11 [4]),
        .I1(\cpu_REG_reg[2]_12 [4]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[1]_13 [4]),
        .I4(y[0]),
        .I5(R[4]),
        .O(\cpu_REG[15][4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][4]_i_14 
       (.I0(\cpu_REG_reg[7]_7 [4]),
        .I1(\cpu_REG_reg[6]_8 [4]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[5]_9 [4]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[4]_10 [4]),
        .O(\cpu_REG[15][4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][4]_i_15 
       (.I0(\cpu_REG_reg[11]_3 [4]),
        .I1(\cpu_REG_reg[10]_4 [4]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[9]_5 [4]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[8]_6 [4]),
        .O(\cpu_REG[15][4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][4]_i_16 
       (.I0(\cpu_REG_reg[15]_15 [4]),
        .I1(\cpu_REG_reg[14]_14 [4]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[13]_1 [4]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[12]_2 [4]),
        .O(\cpu_REG[15][4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2200FFFF2200F200)) 
    \cpu_REG[15][4]_i_2 
       (.I0(\cpu_REG[15][4]_i_5_n_0 ),
        .I1(Q[0]),
        .I2(\RAND[3]_i_1_n_0 ),
        .I3(\cpu_REG[15][7]_i_10_n_0 ),
        .I4(\cpu_REG[15][4]_i_6_n_0 ),
        .I5(\PC[11]_i_6_n_0 ),
        .O(\cpu_REG[15][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \cpu_REG[15][4]_i_3 
       (.I0(\cpu_REG[15][4]_i_7_n_0 ),
        .I1(\cpu_REG[15][4]_i_8_n_0 ),
        .I2(\cpu_REG[15][4]_i_9_n_0 ),
        .I3(x[2]),
        .I4(x[3]),
        .I5(\cpu_REG[15][4]_i_10_n_0 ),
        .O(\cpu_REG[15][4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][4]_i_5 
       (.I0(\cpu_REG[15][4]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .O(\cpu_REG[15][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cpu_REG[15][4]_i_6 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(kk[4]),
        .O(\cpu_REG[15][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][4]_i_7 
       (.I0(\cpu_REG_reg[11]_3 [4]),
        .I1(\cpu_REG_reg[10]_4 [4]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[9]_5 [4]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[8]_6 [4]),
        .O(\cpu_REG[15][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][4]_i_8 
       (.I0(\cpu_REG_reg[15]_15 [4]),
        .I1(\cpu_REG_reg[14]_14 [4]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[13]_1 [4]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[12]_2 [4]),
        .O(\cpu_REG[15][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][4]_i_9 
       (.I0(\cpu_REG_reg[3]_11 [4]),
        .I1(\cpu_REG_reg[2]_12 [4]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[1]_13 [4]),
        .I4(x[0]),
        .I5(R[4]),
        .O(\cpu_REG[15][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFEFEEEE)) 
    \cpu_REG[15][5]_i_1 
       (.I0(\cpu_REG[13][5]_i_5_n_0 ),
        .I1(\cpu_REG[15][5]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\cpu_REG[15][5]_i_3_n_0 ),
        .I4(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .I5(\cpu_REG[15][7]_i_8_n_0 ),
        .O(\cpu_REG[15][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][5]_i_10 
       (.I0(\cpu_REG_reg[7]_7 [5]),
        .I1(\cpu_REG_reg[6]_8 [5]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[5]_9 [5]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[4]_10 [5]),
        .O(\cpu_REG[15][5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][5]_i_13 
       (.I0(\cpu_REG_reg[3]_11 [5]),
        .I1(\cpu_REG_reg[2]_12 [5]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[1]_13 [5]),
        .I4(y[0]),
        .I5(R[5]),
        .O(\cpu_REG[15][5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][5]_i_14 
       (.I0(\cpu_REG_reg[7]_7 [5]),
        .I1(\cpu_REG_reg[6]_8 [5]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[5]_9 [5]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[4]_10 [5]),
        .O(\cpu_REG[15][5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][5]_i_15 
       (.I0(\cpu_REG_reg[11]_3 [5]),
        .I1(\cpu_REG_reg[10]_4 [5]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[9]_5 [5]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[8]_6 [5]),
        .O(\cpu_REG[15][5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][5]_i_16 
       (.I0(\cpu_REG_reg[15]_15 [5]),
        .I1(\cpu_REG_reg[14]_14 [5]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[13]_1 [5]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[12]_2 [5]),
        .O(\cpu_REG[15][5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h3000FFFF3000BA00)) 
    \cpu_REG[15][5]_i_2 
       (.I0(\RAND[4]_i_1_n_0 ),
        .I1(Q[0]),
        .I2(\cpu_REG[15][5]_i_5_n_0 ),
        .I3(\cpu_REG[15][7]_i_10_n_0 ),
        .I4(\cpu_REG[15][5]_i_6_n_0 ),
        .I5(\PC[11]_i_6_n_0 ),
        .O(\cpu_REG[15][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \cpu_REG[15][5]_i_3 
       (.I0(\cpu_REG[15][5]_i_7_n_0 ),
        .I1(\cpu_REG[15][5]_i_8_n_0 ),
        .I2(\cpu_REG[15][5]_i_9_n_0 ),
        .I3(x[2]),
        .I4(x[3]),
        .I5(\cpu_REG[15][5]_i_10_n_0 ),
        .O(\cpu_REG[15][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][5]_i_5 
       (.I0(\cpu_REG[15][5]_i_3_n_0 ),
        .I1(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .O(\cpu_REG[15][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cpu_REG[15][5]_i_6 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(kk[5]),
        .O(\cpu_REG[15][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][5]_i_7 
       (.I0(\cpu_REG_reg[11]_3 [5]),
        .I1(\cpu_REG_reg[10]_4 [5]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[9]_5 [5]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[8]_6 [5]),
        .O(\cpu_REG[15][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][5]_i_8 
       (.I0(\cpu_REG_reg[15]_15 [5]),
        .I1(\cpu_REG_reg[14]_14 [5]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[13]_1 [5]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[12]_2 [5]),
        .O(\cpu_REG[15][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][5]_i_9 
       (.I0(\cpu_REG_reg[3]_11 [5]),
        .I1(\cpu_REG_reg[2]_12 [5]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[1]_13 [5]),
        .I4(x[0]),
        .I5(R[5]),
        .O(\cpu_REG[15][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFEFEEEE)) 
    \cpu_REG[15][6]_i_1 
       (.I0(\cpu_REG[13][6]_i_5_n_0 ),
        .I1(\cpu_REG[15][6]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\cpu_REG[15][6]_i_3_n_0 ),
        .I4(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .I5(\cpu_REG[15][7]_i_8_n_0 ),
        .O(\cpu_REG[15][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0EFF0E0E0A0A0A0A)) 
    \cpu_REG[15][6]_i_2 
       (.I0(\PC[11]_i_6_n_0 ),
        .I1(\RAND[5]_i_1_n_0 ),
        .I2(\cpu_REG[15][6]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(\cpu_REG[15][6]_i_5_n_0 ),
        .I5(\cpu_REG[15][7]_i_10_n_0 ),
        .O(\cpu_REG[15][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \cpu_REG[15][6]_i_3 
       (.I0(\cpu_REG[15][6]_i_6_n_0 ),
        .I1(\cpu_REG[15][6]_i_7_n_0 ),
        .I2(\cpu_REG[15][6]_i_8_n_0 ),
        .I3(x[3]),
        .I4(x[2]),
        .I5(\cpu_REG[15][6]_i_9_n_0 ),
        .O(\cpu_REG[15][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cpu_REG[15][6]_i_4 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(kk[6]),
        .O(\cpu_REG[15][6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][6]_i_5 
       (.I0(\cpu_REG[15][6]_i_3_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .O(\cpu_REG[15][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][6]_i_6 
       (.I0(\cpu_REG_reg[3]_11 [6]),
        .I1(\cpu_REG_reg[2]_12 [6]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[1]_13 [6]),
        .I4(x[0]),
        .I5(R[6]),
        .O(\cpu_REG[15][6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][6]_i_7 
       (.I0(\cpu_REG_reg[7]_7 [6]),
        .I1(\cpu_REG_reg[6]_8 [6]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[5]_9 [6]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[4]_10 [6]),
        .O(\cpu_REG[15][6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][6]_i_8 
       (.I0(\cpu_REG_reg[11]_3 [6]),
        .I1(\cpu_REG_reg[10]_4 [6]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[9]_5 [6]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[8]_6 [6]),
        .O(\cpu_REG[15][6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cpu_REG[15][6]_i_9 
       (.I0(\cpu_REG_reg[15]_15 [6]),
        .I1(\cpu_REG_reg[14]_14 [6]),
        .I2(x[1]),
        .I3(\cpu_REG_reg[13]_1 [6]),
        .I4(x[0]),
        .I5(\cpu_REG_reg[12]_2 [6]),
        .O(\cpu_REG[15][6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA200)) 
    \cpu_REG[15][7]_i_1 
       (.I0(\cpu_REG[15][7]_i_3_n_0 ),
        .I1(\cpu_REG[15][7]_i_4_n_0 ),
        .I2(\current_state[2]_i_4_n_0 ),
        .I3(\cpu_REG[15][7]_i_5_n_0 ),
        .I4(\cpu_REG[15][7]_i_6_n_0 ),
        .I5(\cpu_REG[15][7]_i_7_n_0 ),
        .O(\cpu_REG[15][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_REG[15][7]_i_10 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .O(\cpu_REG[15][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00AAC000)) 
    \cpu_REG[15][7]_i_11 
       (.I0(\mem_ret_data_reg_n_0_[7] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(kk[7]),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[5] ),
        .O(\cpu_REG[15][7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0E0F0E00)) 
    \cpu_REG[15][7]_i_12 
       (.I0(\BCD_left[7]_i_5_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .I2(\cpu_REG[15][7]_i_18_n_0 ),
        .I3(Q[1]),
        .I4(\cpu_REG_reg[15][7]_i_19_n_4 ),
        .O(\cpu_REG[15][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    \cpu_REG[15][7]_i_13 
       (.I0(\cpu_REG[15][7]_i_5_n_0 ),
        .I1(\cpu_REG[11][7]_i_5_n_0 ),
        .I2(Q[0]),
        .I3(\current_state[2]_i_4_n_0 ),
        .I4(\memAddress[11]_i_5_n_0 ),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\cpu_REG[15][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF0F7FFFFFFF7FFF)) 
    \cpu_REG[15][7]_i_14 
       (.I0(graphic_collision_reg_n_0),
        .I1(\multi_address[11]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\cpu_REG[15][7]_i_5_n_0 ),
        .O(\cpu_REG[15][7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \cpu_REG[15][7]_i_15 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[3] ),
        .O(\cpu_REG[15][7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2FAFAFAFAFAFAFAF)) 
    \cpu_REG[15][7]_i_16 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\reg_copy_num_reg_n_0_[3] ),
        .I2(\mem_ret_data[7]_i_3_n_0 ),
        .I3(\reg_copy_num_reg_n_0_[1] ),
        .I4(\reg_copy_num_reg_n_0_[0] ),
        .I5(\reg_copy_num_reg_n_0_[2] ),
        .O(\cpu_REG[15][7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][7]_i_17 
       (.I0(\BCD_left[7]_i_5_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .O(\cpu_REG[15]0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \cpu_REG[15][7]_i_18 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\current_state_reg_n_0_[4] ),
        .O(\cpu_REG[15][7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \cpu_REG[15][7]_i_2 
       (.I0(\cpu_REG[15][7]_i_8_n_0 ),
        .I1(\cpu_REG[13][7]_i_9_n_0 ),
        .I2(\cpu_REG[15][7]_i_9_n_0 ),
        .I3(\cpu_REG[15][7]_i_10_n_0 ),
        .I4(\cpu_REG[15][7]_i_11_n_0 ),
        .I5(\cpu_REG[15][7]_i_12_n_0 ),
        .O(\cpu_REG[15][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][7]_i_20 
       (.I0(kk[7]),
        .I1(\BCD_left[7]_i_5_n_0 ),
        .O(\cpu_REG[15][7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][7]_i_21 
       (.I0(\cpu_REG[15][6]_i_3_n_0 ),
        .I1(kk[6]),
        .O(\cpu_REG[15][7]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][7]_i_22 
       (.I0(\cpu_REG[15][5]_i_3_n_0 ),
        .I1(kk[5]),
        .O(\cpu_REG[15][7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cpu_REG[15][7]_i_23 
       (.I0(\cpu_REG[15][4]_i_3_n_0 ),
        .I1(kk[4]),
        .O(\cpu_REG[15][7]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h8888A888)) 
    \cpu_REG[15][7]_i_3 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[15][7]_i_13_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\cpu_REG[15][7]_i_14_n_0 ),
        .O(\cpu_REG[15][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \cpu_REG[15][7]_i_4 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\cpu_REG[15][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cpu_REG[15][7]_i_5 
       (.I0(x[1]),
        .I1(x[0]),
        .I2(x[2]),
        .I3(x[3]),
        .O(\cpu_REG[15][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FFFFFF20FF)) 
    \cpu_REG[15][7]_i_6 
       (.I0(\cpu_REG[15][7]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\cpu_REG[15][7]_i_15_n_0 ),
        .I5(\current_state_reg_n_0_[5] ),
        .O(\cpu_REG[15][7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00404444)) 
    \cpu_REG[15][7]_i_7 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG[15][7]_i_16_n_0 ),
        .O(\cpu_REG[15][7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \cpu_REG[15][7]_i_8 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(Q[0]),
        .O(\cpu_REG[15][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h7F007F7F)) 
    \cpu_REG[15][7]_i_9 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(kk[7]),
        .I2(\RAND[6]_i_1_n_0 ),
        .I3(Q[0]),
        .I4(\cpu_REG[15]0 ),
        .O(\cpu_REG[15][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h080808080808AA08)) 
    \cpu_REG[1][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[11][7]_i_2_n_0 ),
        .I2(\cpu_REG[1][7]_i_2_n_0 ),
        .I3(\reg_copy_num_reg_n_0_[0] ),
        .I4(\reg_copy_num_reg_n_0_[1] ),
        .I5(\cpu_REG[3][7]_i_3_n_0 ),
        .O(\cpu_REG_reg[1]0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \cpu_REG[1][7]_i_2 
       (.I0(x[0]),
        .I1(x[1]),
        .I2(x[3]),
        .I3(x[2]),
        .I4(\cpu_REG[4][7]_i_2_n_0 ),
        .O(\cpu_REG[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080808080808AA08)) 
    \cpu_REG[2][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[11][7]_i_2_n_0 ),
        .I2(\cpu_REG[2][7]_i_2_n_0 ),
        .I3(\reg_copy_num_reg_n_0_[1] ),
        .I4(\reg_copy_num_reg_n_0_[0] ),
        .I5(\cpu_REG[3][7]_i_3_n_0 ),
        .O(\cpu_REG_reg[2]0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \cpu_REG[2][7]_i_2 
       (.I0(x[1]),
        .I1(x[0]),
        .I2(x[3]),
        .I3(x[2]),
        .I4(\cpu_REG[4][7]_i_2_n_0 ),
        .O(\cpu_REG[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08AA080808080808)) 
    \cpu_REG[3][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[11][7]_i_2_n_0 ),
        .I2(\cpu_REG[3][7]_i_2_n_0 ),
        .I3(\cpu_REG[3][7]_i_3_n_0 ),
        .I4(\reg_copy_num_reg_n_0_[1] ),
        .I5(\reg_copy_num_reg_n_0_[0] ),
        .O(\cpu_REG_reg[3]0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000FFF7)) 
    \cpu_REG[3][7]_i_2 
       (.I0(x[0]),
        .I1(x[1]),
        .I2(x[3]),
        .I3(x[2]),
        .I4(\cpu_REG[4][7]_i_2_n_0 ),
        .O(\cpu_REG[3][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cpu_REG[3][7]_i_3 
       (.I0(\cpu_REG[7][7]_i_3_n_0 ),
        .I1(\reg_copy_num_reg_n_0_[3] ),
        .I2(\reg_copy_num_reg_n_0_[2] ),
        .O(\cpu_REG[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80888080AAAAAAAA)) 
    \cpu_REG[4][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[11][7]_i_2_n_0 ),
        .I2(\cpu_REG[4][7]_i_2_n_0 ),
        .I3(\cpu_REG[4][7]_i_3_n_0 ),
        .I4(\mem_ret_state[3]_i_3_n_0 ),
        .I5(\cpu_REG[4][7]_i_4_n_0 ),
        .O(\cpu_REG_reg[4]0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cpu_REG[4][7]_i_2 
       (.I0(Q[0]),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(\cpu_REG[4][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cpu_REG[4][7]_i_3 
       (.I0(x[3]),
        .I1(x[2]),
        .O(\cpu_REG[4][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \cpu_REG[4][7]_i_4 
       (.I0(\cpu_REG[0][7]_i_3_n_0 ),
        .I1(\reg_copy_num_reg_n_0_[3] ),
        .I2(\reg_copy_num_reg_n_0_[2] ),
        .I3(\reg_copy_num_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\reg_copy_num_reg_n_0_[1] ),
        .O(\cpu_REG[4][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888A8888)) 
    \cpu_REG[5][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[5][7]_i_2_n_0 ),
        .I2(\cpu_REG[7][7]_i_3_n_0 ),
        .I3(\reg_copy_num_reg_n_0_[1] ),
        .I4(\reg_copy_num_reg_n_0_[0] ),
        .I5(\cpu_REG[6][7]_i_3_n_0 ),
        .O(\cpu_REG_reg[5]0 ));
  LUT6 #(
    .INIT(64'h888888A888888888)) 
    \cpu_REG[5][7]_i_2 
       (.I0(\cpu_REG[11][7]_i_2_n_0 ),
        .I1(\cpu_REG[4][7]_i_2_n_0 ),
        .I2(x[2]),
        .I3(x[3]),
        .I4(x[1]),
        .I5(x[0]),
        .O(\cpu_REG[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888A8888)) 
    \cpu_REG[6][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[6][7]_i_2_n_0 ),
        .I2(\cpu_REG[7][7]_i_3_n_0 ),
        .I3(\reg_copy_num_reg_n_0_[0] ),
        .I4(\reg_copy_num_reg_n_0_[1] ),
        .I5(\cpu_REG[6][7]_i_3_n_0 ),
        .O(\cpu_REG_reg[6]0 ));
  LUT6 #(
    .INIT(64'h888888A888888888)) 
    \cpu_REG[6][7]_i_2 
       (.I0(\cpu_REG[11][7]_i_2_n_0 ),
        .I1(\cpu_REG[4][7]_i_2_n_0 ),
        .I2(x[2]),
        .I3(x[3]),
        .I4(x[0]),
        .I5(x[1]),
        .O(\cpu_REG[6][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cpu_REG[6][7]_i_3 
       (.I0(\reg_copy_num_reg_n_0_[3] ),
        .I1(\reg_copy_num_reg_n_0_[2] ),
        .O(\cpu_REG[6][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888A8888888888)) 
    \cpu_REG[7][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[7][7]_i_2_n_0 ),
        .I2(\cpu_REG[7][7]_i_3_n_0 ),
        .I3(\cpu_REG[7][7]_i_4_n_0 ),
        .I4(\reg_copy_num_reg_n_0_[3] ),
        .I5(\reg_copy_num_reg_n_0_[2] ),
        .O(\cpu_REG_reg[7]0 ));
  LUT6 #(
    .INIT(64'h88A8888888888888)) 
    \cpu_REG[7][7]_i_2 
       (.I0(\cpu_REG[11][7]_i_2_n_0 ),
        .I1(\cpu_REG[4][7]_i_2_n_0 ),
        .I2(x[2]),
        .I3(x[3]),
        .I4(x[1]),
        .I5(x[0]),
        .O(\cpu_REG[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    \cpu_REG[7][7]_i_3 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(Q[1]),
        .O(\cpu_REG[7][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_REG[7][7]_i_4 
       (.I0(\reg_copy_num_reg_n_0_[0] ),
        .I1(\reg_copy_num_reg_n_0_[1] ),
        .O(\cpu_REG[7][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000A200AAAAAAAA)) 
    \cpu_REG[8][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[13][7]_i_5_n_0 ),
        .I2(\cpu_REG[13][7]_i_4_n_0 ),
        .I3(\mem_ret_state[3]_i_3_n_0 ),
        .I4(\cpu_REG[10][7]_i_4_n_0 ),
        .I5(\cpu_REG[8][7]_i_2_n_0 ),
        .O(\cpu_REG_reg[8]0 ));
  LUT6 #(
    .INIT(64'h5555555555555545)) 
    \cpu_REG[8][7]_i_2 
       (.I0(\cpu_REG[4][7]_i_2_n_0 ),
        .I1(\reg_copy_num_reg_n_0_[2] ),
        .I2(\reg_copy_num_reg_n_0_[3] ),
        .I3(\reg_copy_num_reg_n_0_[0] ),
        .I4(\reg_copy_num_reg_n_0_[1] ),
        .I5(\cpu_REG[7][7]_i_3_n_0 ),
        .O(\cpu_REG[8][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h080808AA)) 
    \cpu_REG[9][7]_i_1 
       (.I0(s_sys_reset),
        .I1(\cpu_REG[11][7]_i_2_n_0 ),
        .I2(\cpu_REG[9][7]_i_2_n_0 ),
        .I3(\reg_copy_num_reg_n_0_[1] ),
        .I4(\cpu_REG[11][7]_i_4_n_0 ),
        .O(\cpu_REG_reg[9]0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    \cpu_REG[9][7]_i_2 
       (.I0(x[0]),
        .I1(x[1]),
        .I2(x[2]),
        .I3(x[3]),
        .I4(\cpu_REG[4][7]_i_2_n_0 ),
        .O(\cpu_REG[9][7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[0]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(R[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[0]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(R[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[0]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(R[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[0]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(R[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[0]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(R[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[0]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(R[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[0]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(R[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[0]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(R[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[10][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[10]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[10]_4 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[10][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[10]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[10]_4 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[10][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[10]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[10]_4 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[10][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[10]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[10]_4 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[10][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[10]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[10]_4 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[10][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[10]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[10]_4 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[10][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[10]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[10]_4 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[10][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[10]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[10]_4 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[11][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[11]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[11]_3 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[11][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[11]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[11]_3 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[11][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[11]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[11]_3 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[11][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[11]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[11]_3 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[11][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[11]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[11]_3 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[11][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[11]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[11]_3 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[11][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[11]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[11]_3 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[11][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[11]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[11]_3 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[12][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[12]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[12]_2 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[12][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[12]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[12]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[12][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[12]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[12]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[12][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[12]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[12]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[12][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[12]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[12]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[12][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[12]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[12]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[12][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[12]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[12]_2 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[12][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[12]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[12]_2 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[13][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[13]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[13]_1 [0]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cpu_REG_reg[13][0]_i_4 
       (.CI(1'b0),
        .CO({\cpu_REG_reg[13][0]_i_4_n_0 ,\cpu_REG_reg[13][0]_i_4_n_1 ,\cpu_REG_reg[13][0]_i_4_n_2 ,\cpu_REG_reg[13][0]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({\cpu_REG[13][0]_i_7_n_0 ,\cpu_REG[13][0]_i_8_n_0 ,\cpu_REG[13][0]_i_9_n_0 ,\cpu_REG[13][0]_i_10_n_0 }),
        .O({\cpu_REG_reg[13][0]_i_4_n_4 ,\cpu_REG_reg[13][0]_i_4_n_5 ,\cpu_REG_reg[13][0]_i_4_n_6 ,\cpu_REG_reg[13][0]_i_4_n_7 }),
        .S({\cpu_REG[13][0]_i_11_n_0 ,\cpu_REG[13][0]_i_12_n_0 ,\cpu_REG[13][0]_i_13_n_0 ,\cpu_REG[13][0]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[13][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[13]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[13]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[13][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[13]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[13]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[13][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[13]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[13]_1 [3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cpu_REG_reg[13][3]_i_6 
       (.CI(1'b0),
        .CO({\cpu_REG_reg[13][3]_i_6_n_0 ,\cpu_REG_reg[13][3]_i_6_n_1 ,\cpu_REG_reg[13][3]_i_6_n_2 ,\cpu_REG_reg[13][3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\cpu_REG[13][3]_i_11_n_0 ,\BCD_left[2]_i_2_n_0 ,\cpu_REG[15][1]_i_3_n_0 ,\BCD_left[0]_i_2_n_0 }),
        .O({\cpu_REG_reg[13][3]_i_6_n_4 ,\cpu_REG_reg[13][3]_i_6_n_5 ,\cpu_REG_reg[13][3]_i_6_n_6 ,\cpu_REG_reg[13][3]_i_6_n_7 }),
        .S({\cpu_REG[13][3]_i_12_n_0 ,\cpu_REG[13][3]_i_13_n_0 ,\cpu_REG[13][3]_i_14_n_0 ,\cpu_REG[13][3]_i_15_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cpu_REG_reg[13][3]_i_8 
       (.CI(1'b0),
        .CO({\cpu_REG_reg[13][3]_i_8_n_0 ,\cpu_REG_reg[13][3]_i_8_n_1 ,\cpu_REG_reg[13][3]_i_8_n_2 ,\cpu_REG_reg[13][3]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\cpu_REG[13][3]_i_16_n_0 ,\BCD_left[2]_i_2_n_0 ,\cpu_REG[15][1]_i_3_n_0 ,\BCD_left[0]_i_2_n_0 }),
        .O(p_5_in[3:0]),
        .S({\cpu_REG[13][3]_i_17_n_0 ,\cpu_REG[13][3]_i_18_n_0 ,\cpu_REG[13][3]_i_19_n_0 ,\cpu_REG[13][3]_i_20_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[13][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[13]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[13]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[13][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[13]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[13]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[13][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[13]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[13]_1 [6]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cpu_REG_reg[13][6]_i_6 
       (.CI(\cpu_REG_reg[13][0]_i_4_n_0 ),
        .CO({\NLW_cpu_REG_reg[13][6]_i_6_CO_UNCONNECTED [3],\cpu_REG_reg[13][6]_i_6_n_1 ,\cpu_REG_reg[13][6]_i_6_n_2 ,\cpu_REG_reg[13][6]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\cpu_REG[13][6]_i_9_n_0 ,\cpu_REG[13][6]_i_10_n_0 ,\cpu_REG[13][6]_i_11_n_0 }),
        .O({\cpu_REG_reg[13][6]_i_6_n_4 ,\cpu_REG_reg[13][6]_i_6_n_5 ,\cpu_REG_reg[13][6]_i_6_n_6 ,\cpu_REG_reg[13][6]_i_6_n_7 }),
        .S({\cpu_REG[13][6]_i_12_n_0 ,\cpu_REG[13][6]_i_13_n_0 ,\cpu_REG[13][6]_i_14_n_0 ,\cpu_REG[13][6]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[13][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[13]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[13]_1 [7]),
        .R(1'b0));
  MUXF7 \cpu_REG_reg[13][7]_i_13 
       (.I0(\cpu_REG[13][7]_i_18_n_0 ),
        .I1(\cpu_REG[13][7]_i_19_n_0 ),
        .O(\cpu_REG_reg[13][7]_i_13_n_0 ),
        .S(y[2]));
  MUXF7 \cpu_REG_reg[13][7]_i_14 
       (.I0(\cpu_REG[13][7]_i_20_n_0 ),
        .I1(\cpu_REG[13][7]_i_21_n_0 ),
        .O(\cpu_REG_reg[13][7]_i_14_n_0 ),
        .S(y[2]));
  MUXF8 \cpu_REG_reg[13][7]_i_15 
       (.I0(\cpu_REG_reg[13][7]_i_22_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_23_n_0 ),
        .O(\cpu_REG_reg[13][7]_i_15_n_0 ),
        .S(y[3]));
  MUXF7 \cpu_REG_reg[13][7]_i_22 
       (.I0(\cpu_REG[13][7]_i_26_n_0 ),
        .I1(\cpu_REG[13][7]_i_27_n_0 ),
        .O(\cpu_REG_reg[13][7]_i_22_n_0 ),
        .S(y[2]));
  MUXF7 \cpu_REG_reg[13][7]_i_23 
       (.I0(\cpu_REG[13][7]_i_28_n_0 ),
        .I1(\cpu_REG[13][7]_i_29_n_0 ),
        .O(\cpu_REG_reg[13][7]_i_23_n_0 ),
        .S(y[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cpu_REG_reg[13][7]_i_24 
       (.CI(\cpu_REG_reg[13][3]_i_8_n_0 ),
        .CO({\cpu_REG_reg[13][7]_i_24_n_0 ,\cpu_REG_reg[13][7]_i_24_n_1 ,\cpu_REG_reg[13][7]_i_24_n_2 ,\cpu_REG_reg[13][7]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\BCD_left[7]_i_5_n_0 ,\cpu_REG[15][6]_i_3_n_0 ,\cpu_REG[15][5]_i_3_n_0 ,\cpu_REG[15][4]_i_3_n_0 }),
        .O(p_5_in[7:4]),
        .S({\cpu_REG[13][7]_i_30_n_0 ,\cpu_REG[13][7]_i_31_n_0 ,\cpu_REG[13][7]_i_32_n_0 ,\cpu_REG[13][7]_i_33_n_0 }));
  MUXF8 \cpu_REG_reg[13][7]_i_8 
       (.I0(\cpu_REG_reg[13][7]_i_13_n_0 ),
        .I1(\cpu_REG_reg[13][7]_i_14_n_0 ),
        .O(\cpu_REG_reg[13][7]_i_8_n_0 ),
        .S(y[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[14][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[14]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[14]_14 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[14][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[14]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[14]_14 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[14][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[14]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[14]_14 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[14][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[14]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[14]_14 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[14][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[14]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[14]_14 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[14][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[14]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[14]_14 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[14][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[14]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[14]_14 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[14][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[14]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[14]_14 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[15][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cpu_REG[15][0]_i_1_n_0 ),
        .Q(\cpu_REG_reg[15]_15 [0]),
        .R(1'b0));
  MUXF7 \cpu_REG_reg[15][0]_i_21 
       (.I0(\graphic_addressA[3]_i_6_n_0 ),
        .I1(\graphic_addressA[3]_i_5_n_0 ),
        .O(\cpu_REG_reg[15][0]_i_21_n_0 ),
        .S(y[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cpu_REG_reg[15][0]_i_23 
       (.CI(1'b0),
        .CO({geqOp,\cpu_REG_reg[15][0]_i_23_n_1 ,\cpu_REG_reg[15][0]_i_23_n_2 ,\cpu_REG_reg[15][0]_i_23_n_3 }),
        .CYINIT(1'b1),
        .DI({\cpu_REG[15][0]_i_24_n_0 ,\cpu_REG[15][0]_i_25_n_0 ,\cpu_REG[15][0]_i_26_n_0 ,\cpu_REG[15][0]_i_27_n_0 }),
        .O(\NLW_cpu_REG_reg[15][0]_i_23_O_UNCONNECTED [3:0]),
        .S({\cpu_REG[15][0]_i_28_n_0 ,\cpu_REG[15][0]_i_29_n_0 ,\cpu_REG[15][0]_i_30_n_0 ,\cpu_REG[15][0]_i_31_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cpu_REG_reg[15][0]_i_5 
       (.CI(1'b0),
        .CO({geqOp1_in,\cpu_REG_reg[15][0]_i_5_n_1 ,\cpu_REG_reg[15][0]_i_5_n_2 ,\cpu_REG_reg[15][0]_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI({\cpu_REG[15][0]_i_12_n_0 ,\cpu_REG[15][0]_i_13_n_0 ,\cpu_REG[15][0]_i_14_n_0 ,\cpu_REG[15][0]_i_15_n_0 }),
        .O(\NLW_cpu_REG_reg[15][0]_i_5_O_UNCONNECTED [3:0]),
        .S({\cpu_REG[15][0]_i_16_n_0 ,\cpu_REG[15][0]_i_17_n_0 ,\cpu_REG[15][0]_i_18_n_0 ,\cpu_REG[15][0]_i_19_n_0 }));
  CARRY4 \cpu_REG_reg[15][0]_i_8 
       (.CI(\cpu_REG_reg[13][7]_i_24_n_0 ),
        .CO({\NLW_cpu_REG_reg[15][0]_i_8_CO_UNCONNECTED [3:1],p_5_in[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cpu_REG_reg[15][0]_i_8_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[15][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG[15][7]_i_1_n_0 ),
        .D(\cpu_REG[15][1]_i_1_n_0 ),
        .Q(\cpu_REG_reg[15]_15 [1]),
        .R(1'b0));
  MUXF7 \cpu_REG_reg[15][1]_i_11 
       (.I0(\cpu_REG[15][1]_i_15_n_0 ),
        .I1(\cpu_REG[15][1]_i_16_n_0 ),
        .O(\cpu_REG_reg[15][1]_i_11_n_0 ),
        .S(y[2]));
  MUXF7 \cpu_REG_reg[15][1]_i_12 
       (.I0(\cpu_REG[15][1]_i_17_n_0 ),
        .I1(\cpu_REG[15][1]_i_18_n_0 ),
        .O(\cpu_REG_reg[15][1]_i_12_n_0 ),
        .S(y[2]));
  MUXF8 \cpu_REG_reg[15][1]_i_4 
       (.I0(\cpu_REG_reg[15][1]_i_11_n_0 ),
        .I1(\cpu_REG_reg[15][1]_i_12_n_0 ),
        .O(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .S(y[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[15][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG[15][7]_i_1_n_0 ),
        .D(\cpu_REG[15][2]_i_1_n_0 ),
        .Q(\cpu_REG_reg[15]_15 [2]),
        .R(1'b0));
  MUXF8 \cpu_REG_reg[15][2]_i_5 
       (.I0(\cpu_REG_reg[15][2]_i_8_n_0 ),
        .I1(\cpu_REG_reg[15][2]_i_9_n_0 ),
        .O(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .S(y[3]));
  MUXF7 \cpu_REG_reg[15][2]_i_8 
       (.I0(\cpu_REG[15][2]_i_11_n_0 ),
        .I1(\cpu_REG[15][2]_i_12_n_0 ),
        .O(\cpu_REG_reg[15][2]_i_8_n_0 ),
        .S(y[2]));
  MUXF7 \cpu_REG_reg[15][2]_i_9 
       (.I0(\cpu_REG[15][2]_i_13_n_0 ),
        .I1(\cpu_REG[15][2]_i_14_n_0 ),
        .O(\cpu_REG_reg[15][2]_i_9_n_0 ),
        .S(y[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[15][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG[15][7]_i_1_n_0 ),
        .D(\cpu_REG[15][3]_i_1_n_0 ),
        .Q(\cpu_REG_reg[15]_15 [3]),
        .R(1'b0));
  MUXF7 \cpu_REG_reg[15][3]_i_10 
       (.I0(\cpu_REG[15][3]_i_13_n_0 ),
        .I1(\cpu_REG[15][3]_i_14_n_0 ),
        .O(\cpu_REG_reg[15][3]_i_10_n_0 ),
        .S(y[2]));
  MUXF7 \cpu_REG_reg[15][3]_i_11 
       (.I0(\cpu_REG[15][3]_i_15_n_0 ),
        .I1(\cpu_REG[15][3]_i_16_n_0 ),
        .O(\cpu_REG_reg[15][3]_i_11_n_0 ),
        .S(y[2]));
  MUXF8 \cpu_REG_reg[15][3]_i_4 
       (.I0(\cpu_REG_reg[15][3]_i_10_n_0 ),
        .I1(\cpu_REG_reg[15][3]_i_11_n_0 ),
        .O(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .S(y[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[15][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG[15][7]_i_1_n_0 ),
        .D(\cpu_REG[15][4]_i_1_n_0 ),
        .Q(\cpu_REG_reg[15]_15 [4]),
        .R(1'b0));
  MUXF7 \cpu_REG_reg[15][4]_i_11 
       (.I0(\cpu_REG[15][4]_i_13_n_0 ),
        .I1(\cpu_REG[15][4]_i_14_n_0 ),
        .O(\cpu_REG_reg[15][4]_i_11_n_0 ),
        .S(y[2]));
  MUXF7 \cpu_REG_reg[15][4]_i_12 
       (.I0(\cpu_REG[15][4]_i_15_n_0 ),
        .I1(\cpu_REG[15][4]_i_16_n_0 ),
        .O(\cpu_REG_reg[15][4]_i_12_n_0 ),
        .S(y[2]));
  MUXF8 \cpu_REG_reg[15][4]_i_4 
       (.I0(\cpu_REG_reg[15][4]_i_11_n_0 ),
        .I1(\cpu_REG_reg[15][4]_i_12_n_0 ),
        .O(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .S(y[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[15][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG[15][7]_i_1_n_0 ),
        .D(\cpu_REG[15][5]_i_1_n_0 ),
        .Q(\cpu_REG_reg[15]_15 [5]),
        .R(1'b0));
  MUXF7 \cpu_REG_reg[15][5]_i_11 
       (.I0(\cpu_REG[15][5]_i_13_n_0 ),
        .I1(\cpu_REG[15][5]_i_14_n_0 ),
        .O(\cpu_REG_reg[15][5]_i_11_n_0 ),
        .S(y[2]));
  MUXF7 \cpu_REG_reg[15][5]_i_12 
       (.I0(\cpu_REG[15][5]_i_15_n_0 ),
        .I1(\cpu_REG[15][5]_i_16_n_0 ),
        .O(\cpu_REG_reg[15][5]_i_12_n_0 ),
        .S(y[2]));
  MUXF8 \cpu_REG_reg[15][5]_i_4 
       (.I0(\cpu_REG_reg[15][5]_i_11_n_0 ),
        .I1(\cpu_REG_reg[15][5]_i_12_n_0 ),
        .O(\cpu_REG_reg[15][5]_i_4_n_0 ),
        .S(y[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[15][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG[15][7]_i_1_n_0 ),
        .D(\cpu_REG[15][6]_i_1_n_0 ),
        .Q(\cpu_REG_reg[15]_15 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[15][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG[15][7]_i_1_n_0 ),
        .D(\cpu_REG[15][7]_i_2_n_0 ),
        .Q(\cpu_REG_reg[15]_15 [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \cpu_REG_reg[15][7]_i_19 
       (.CI(\cpu_REG_reg[13][3]_i_6_n_0 ),
        .CO({\NLW_cpu_REG_reg[15][7]_i_19_CO_UNCONNECTED [3],\cpu_REG_reg[15][7]_i_19_n_1 ,\cpu_REG_reg[15][7]_i_19_n_2 ,\cpu_REG_reg[15][7]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\cpu_REG[15][6]_i_3_n_0 ,\cpu_REG[15][5]_i_3_n_0 ,\cpu_REG[15][4]_i_3_n_0 }),
        .O({\cpu_REG_reg[15][7]_i_19_n_4 ,\cpu_REG_reg[15][7]_i_19_n_5 ,\cpu_REG_reg[15][7]_i_19_n_6 ,\cpu_REG_reg[15][7]_i_19_n_7 }),
        .S({\cpu_REG[15][7]_i_20_n_0 ,\cpu_REG[15][7]_i_21_n_0 ,\cpu_REG[15][7]_i_22_n_0 ,\cpu_REG[15][7]_i_23_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[1]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[1]_13 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[1]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[1]_13 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[1]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[1]_13 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[1]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[1]_13 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[1]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[1]_13 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[1]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[1]_13 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[1]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[1]_13 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[1]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[1]_13 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[2]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[2]_12 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[2]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[2]_12 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[2]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[2]_12 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[2]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[2]_12 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[2]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[2]_12 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[2]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[2]_12 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[2]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[2]_12 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[2]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[2]_12 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[3]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[3]_11 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[3]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[3]_11 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[3]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[3]_11 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[3]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[3]_11 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[3]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[3]_11 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[3]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[3]_11 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[3]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[3]_11 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[3]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[3]_11 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[4]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[4]_10 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[4]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[4]_10 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[4]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[4]_10 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[4]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[4]_10 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[4]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[4]_10 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[4][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[4]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[4]_10 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[4]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[4]_10 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[4][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[4]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[4]_10 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[5]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[5]_9 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[5]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[5]_9 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[5]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[5]_9 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[5]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[5]_9 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[5]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[5]_9 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[5]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[5]_9 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[5]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[5]_9 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[5]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[5]_9 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[6]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[6]_8 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[6]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[6]_8 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[6]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[6]_8 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[6]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[6]_8 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[6]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[6]_8 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[6]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[6]_8 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[6]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[6]_8 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[6]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[6]_8 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[7]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[7]_7 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[7]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[7]_7 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[7]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[7]_7 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[7]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[7]_7 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[7][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[7]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[7]_7 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[7][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[7]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[7]_7 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[7][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[7]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[7]_7 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[7][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[7]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[7]_7 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[8][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[8]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[8]_6 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[8][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[8]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[8]_6 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[8][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[8]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[8]_6 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[8][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[8]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[8]_6 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[8][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[8]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[8]_6 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[8][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[8]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[8]_6 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[8][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[8]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[8]_6 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[8][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[8]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[8]_6 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[9][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[9]0 ),
        .D(\cpu_REG[0]_0 [0]),
        .Q(\cpu_REG_reg[9]_5 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[9][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[9]0 ),
        .D(\cpu_REG[0]_0 [1]),
        .Q(\cpu_REG_reg[9]_5 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[9][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[9]0 ),
        .D(\cpu_REG[0]_0 [2]),
        .Q(\cpu_REG_reg[9]_5 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[9][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[9]0 ),
        .D(\cpu_REG[0]_0 [3]),
        .Q(\cpu_REG_reg[9]_5 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[9][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[9]0 ),
        .D(\cpu_REG[0]_0 [4]),
        .Q(\cpu_REG_reg[9]_5 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[9][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[9]0 ),
        .D(\cpu_REG[0]_0 [5]),
        .Q(\cpu_REG_reg[9]_5 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[9][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[9]0 ),
        .D(\cpu_REG[0]_0 [6]),
        .Q(\cpu_REG_reg[9]_5 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_REG_reg[9][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_REG_reg[9]0 ),
        .D(\cpu_REG[0]_0 [7]),
        .Q(\cpu_REG_reg[9]_5 [7]),
        .R(1'b0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_UNIQ_BASE_ cpu_STACK_reg_0_15_0_5
       (.ADDRA({1'b0,cpu_STACK_reg_0_15_0_5_i_2_n_0,cpu_STACK_reg_0_15_0_5_i_3_n_0,cpu_STACK_reg_0_15_0_5_i_4_n_0,cpu_STACK_reg_0_15_0_5_i_5_n_0}),
        .ADDRB({1'b0,cpu_STACK_reg_0_15_0_5_i_2_n_0,cpu_STACK_reg_0_15_0_5_i_3_n_0,cpu_STACK_reg_0_15_0_5_i_4_n_0,cpu_STACK_reg_0_15_0_5_i_5_n_0}),
        .ADDRC({1'b0,cpu_STACK_reg_0_15_0_5_i_2_n_0,cpu_STACK_reg_0_15_0_5_i_3_n_0,cpu_STACK_reg_0_15_0_5_i_4_n_0,cpu_STACK_reg_0_15_0_5_i_5_n_0}),
        .ADDRD({1'b0,\SP_reg_n_0_[3] ,\SP_reg_n_0_[2] ,\SP_reg_n_0_[1] ,\SP_reg_n_0_[0] }),
        .DIA(PC__0[1:0]),
        .DIB(PC__0[3:2]),
        .DIC(PC__0[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({cpu_STACK_reg_0_15_0_5_n_0,cpu_STACK_reg_0_15_0_5_n_1}),
        .DOB({cpu_STACK_reg_0_15_0_5_n_2,cpu_STACK_reg_0_15_0_5_n_3}),
        .DOC({cpu_STACK_reg_0_15_0_5_n_4,cpu_STACK_reg_0_15_0_5_n_5}),
        .DOD(NLW_cpu_STACK_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in2_out));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    cpu_STACK_reg_0_15_0_5_i_1
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(s_sys_reset),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(Q[0]),
        .I5(cpu_STACK_reg_0_15_0_5_i_6_n_0),
        .O(p_0_in2_out));
  LUT4 #(
    .INIT(16'hFE01)) 
    cpu_STACK_reg_0_15_0_5_i_2
       (.I0(\SP_reg_n_0_[2] ),
        .I1(\SP_reg_n_0_[1] ),
        .I2(\SP_reg_n_0_[0] ),
        .I3(\SP_reg_n_0_[3] ),
        .O(cpu_STACK_reg_0_15_0_5_i_2_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    cpu_STACK_reg_0_15_0_5_i_3
       (.I0(\SP_reg_n_0_[0] ),
        .I1(\SP_reg_n_0_[1] ),
        .I2(\SP_reg_n_0_[2] ),
        .O(cpu_STACK_reg_0_15_0_5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cpu_STACK_reg_0_15_0_5_i_4
       (.I0(\SP_reg_n_0_[1] ),
        .I1(\SP_reg_n_0_[0] ),
        .O(cpu_STACK_reg_0_15_0_5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cpu_STACK_reg_0_15_0_5_i_5
       (.I0(\SP_reg_n_0_[0] ),
        .O(cpu_STACK_reg_0_15_0_5_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    cpu_STACK_reg_0_15_0_5_i_6
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(cpu_STACK_reg_0_15_0_5_i_7_n_0),
        .O(cpu_STACK_reg_0_15_0_5_i_6_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    cpu_STACK_reg_0_15_0_5_i_7
       (.I0(\SP[5]_i_2_n_0 ),
        .I1(\SP_reg_n_0_[5] ),
        .I2(\SP_reg_n_0_[4] ),
        .I3(\SP_reg_n_0_[7] ),
        .I4(\SP_reg_n_0_[6] ),
        .O(cpu_STACK_reg_0_15_0_5_i_7_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD3 cpu_STACK_reg_0_15_6_11
       (.ADDRA({1'b0,cpu_STACK_reg_0_15_0_5_i_2_n_0,cpu_STACK_reg_0_15_0_5_i_3_n_0,cpu_STACK_reg_0_15_0_5_i_4_n_0,cpu_STACK_reg_0_15_0_5_i_5_n_0}),
        .ADDRB({1'b0,cpu_STACK_reg_0_15_0_5_i_2_n_0,cpu_STACK_reg_0_15_0_5_i_3_n_0,cpu_STACK_reg_0_15_0_5_i_4_n_0,cpu_STACK_reg_0_15_0_5_i_5_n_0}),
        .ADDRC({1'b0,cpu_STACK_reg_0_15_0_5_i_2_n_0,cpu_STACK_reg_0_15_0_5_i_3_n_0,cpu_STACK_reg_0_15_0_5_i_4_n_0,cpu_STACK_reg_0_15_0_5_i_5_n_0}),
        .ADDRD({1'b0,\SP_reg_n_0_[3] ,\SP_reg_n_0_[2] ,\SP_reg_n_0_[1] ,\SP_reg_n_0_[0] }),
        .DIA(PC__0[7:6]),
        .DIB(PC__0[9:8]),
        .DIC(PC__0[11:10]),
        .DID({1'b0,1'b0}),
        .DOA({cpu_STACK_reg_0_15_6_11_n_0,cpu_STACK_reg_0_15_6_11_n_1}),
        .DOB({cpu_STACK_reg_0_15_6_11_n_2,cpu_STACK_reg_0_15_6_11_n_3}),
        .DOC({cpu_STACK_reg_0_15_6_11_n_4,cpu_STACK_reg_0_15_6_11_n_5}),
        .DOD(NLW_cpu_STACK_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in2_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD500)) 
    \current_state[0]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\current_state[0]_i_3_n_0 ),
        .I2(mem_ret_state[0]),
        .I3(\current_state[0]_i_4_n_0 ),
        .I4(\current_state[0]_i_5_n_0 ),
        .I5(\current_state[0]_i_6_n_0 ),
        .O(\current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000080440)) 
    \current_state[0]_i_10 
       (.I0(\mem_ret_data_reg_n_0_[5] ),
        .I1(\mem_ret_data_reg_n_0_[3] ),
        .I2(\mem_ret_data_reg_n_0_[4] ),
        .I3(\mem_ret_data_reg_n_0_[1] ),
        .I4(\mem_ret_data_reg_n_0_[0] ),
        .I5(\mem_ret_data_reg_n_0_[6] ),
        .O(\current_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h38FFF0FF38FFF3FF)) 
    \current_state[0]_i_11 
       (.I0(\tmp_err_code[1]_i_9_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[3]),
        .I4(p_0_in[1]),
        .I5(\current_state[0]_i_12_n_0 ),
        .O(\current_state[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_state[0]_i_12 
       (.I0(\mem_ret_data_reg_n_0_[3] ),
        .I1(\mem_ret_data_reg_n_0_[0] ),
        .O(\current_state[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFDFFFDFD)) 
    \current_state[0]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\current_state[0]_i_7_n_0 ),
        .I4(\current_state[0]_i_8_n_0 ),
        .O(\current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \current_state[0]_i_3 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .O(\current_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_state[0]_i_4 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[4] ),
        .O(\current_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2000A0020000)) 
    \current_state[0]_i_5 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\current_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \current_state[0]_i_6 
       (.I0(\SP[7]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(Q[0]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\current_state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000DFFFF)) 
    \current_state[0]_i_7 
       (.I0(\current_state[0]_i_9_n_0 ),
        .I1(\current_state[3]_i_15_n_0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[3]),
        .I4(Q[1]),
        .O(\current_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04400000)) 
    \current_state[0]_i_8 
       (.I0(\mem_ret_data_reg_n_0_[7] ),
        .I1(p_0_in[0]),
        .I2(\mem_ret_data_reg_n_0_[3] ),
        .I3(\mem_ret_data_reg_n_0_[2] ),
        .I4(\current_state[0]_i_10_n_0 ),
        .I5(\current_state[0]_i_11_n_0 ),
        .O(\current_state[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \current_state[0]_i_9 
       (.I0(\mem_ret_data_reg_n_0_[2] ),
        .I1(\mem_ret_data_reg_n_0_[1] ),
        .I2(\mem_ret_data_reg_n_0_[3] ),
        .I3(\mem_ret_data_reg_n_0_[4] ),
        .O(\current_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55550051)) 
    \current_state[1]_i_1 
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(\current_state[1]_i_3__1_n_0 ),
        .I2(\current_state[1]_i_4_n_0 ),
        .I3(\current_state[1]_i_5_n_0 ),
        .I4(\current_state[1]_i_6_n_0 ),
        .I5(\current_state[1]_i_7_n_0 ),
        .O(\current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[1]_i_10 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(\current_state[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAAAAAFFEB)) 
    \current_state[1]_i_11 
       (.I0(p_0_in[2]),
        .I1(\mem_ret_data_reg_n_0_[0] ),
        .I2(\mem_ret_data_reg_n_0_[1] ),
        .I3(\mem_ret_data_reg_n_0_[3] ),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\current_state[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7E)) 
    \current_state[1]_i_12 
       (.I0(\mem_ret_data_reg_n_0_[2] ),
        .I1(\mem_ret_data_reg_n_0_[1] ),
        .I2(\mem_ret_data_reg_n_0_[3] ),
        .I3(\mem_ret_data_reg_n_0_[4] ),
        .I4(\current_state[3]_i_15_n_0 ),
        .O(\current_state[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[1]_i_13 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[5] ),
        .O(\current_state[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFFCFAFCFA)) 
    \current_state[1]_i_14 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(Q[0]),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\current_state[1]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \current_state[1]_i_15 
       (.I0(\SP_reg_n_0_[6] ),
        .I1(\SP_reg_n_0_[7] ),
        .I2(\SP[7]_i_7_n_0 ),
        .O(\current_state[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0F5E0A0A0F0A0F5A)) 
    \current_state[1]_i_16 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(mem_ret_state[1]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\current_state[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000012000100000)) 
    \current_state[1]_i_17 
       (.I0(\mem_ret_data_reg_n_0_[1] ),
        .I1(\mem_ret_data_reg_n_0_[6] ),
        .I2(\mem_ret_data_reg_n_0_[5] ),
        .I3(\mem_ret_data_reg_n_0_[2] ),
        .I4(\mem_ret_data_reg_n_0_[3] ),
        .I5(\mem_ret_data_reg_n_0_[4] ),
        .O(\current_state[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_state[1]_i_18 
       (.I0(\mem_ret_data_reg_n_0_[2] ),
        .I1(\mem_ret_data_reg_n_0_[1] ),
        .O(\current_state[1]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \current_state[1]_i_19 
       (.I0(\mem_ret_data_reg_n_0_[5] ),
        .I1(\mem_ret_data_reg_n_0_[6] ),
        .I2(\mem_ret_data_reg_n_0_[0] ),
        .I3(\mem_ret_data_reg_n_0_[3] ),
        .I4(\mem_ret_data_reg_n_0_[4] ),
        .O(\current_state[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFBBFFBBFFBFFFBBF)) 
    \current_state[1]_i_2 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(cpu_STACK_reg_0_15_0_5_i_7_n_0),
        .I5(\current_state_reg_n_0_[5] ),
        .O(\current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1FFF0000FFFFFFFF)) 
    \current_state[1]_i_3__1 
       (.I0(\current_state[1]_i_8_n_0 ),
        .I1(\current_state[1]_i_9_n_0 ),
        .I2(\current_state[1]_i_10_n_0 ),
        .I3(p_0_in[2]),
        .I4(\current_state[1]_i_11_n_0 ),
        .I5(p_0_in[3]),
        .O(\current_state[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0FFF0FFF0F4F)) 
    \current_state[1]_i_4 
       (.I0(p_0_in[2]),
        .I1(\current_state[1]_i_12_n_0 ),
        .I2(\current_state[1]_i_13_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\current_state[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[1]_i_5 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFA03)) 
    \current_state[1]_i_6 
       (.I0(\multi_address[11]_i_5_n_0 ),
        .I1(\mem_ret_state[5]_i_4_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[0]),
        .O(\current_state[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1011)) 
    \current_state[1]_i_7 
       (.I0(\mem_ret_state[5]_i_10_n_0 ),
        .I1(\current_state[1]_i_14_n_0 ),
        .I2(\current_state[1]_i_15_n_0 ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state[1]_i_16_n_0 ),
        .O(\current_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h80808080808080AA)) 
    \current_state[1]_i_8 
       (.I0(\current_state[3]_i_10_n_0 ),
        .I1(\current_state[1]_i_17_n_0 ),
        .I2(\mem_ret_data_reg_n_0_[0] ),
        .I3(\current_state[1]_i_18_n_0 ),
        .I4(\mem_ret_data_reg_n_0_[4] ),
        .I5(\current_state[4]_i_5_n_0 ),
        .O(\current_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00004000FFFFFFFF)) 
    \current_state[1]_i_9 
       (.I0(p_0_in[0]),
        .I1(\mem_ret_data_reg_n_0_[1] ),
        .I2(\mem_ret_data_reg_n_0_[2] ),
        .I3(\mem_ret_data_reg_n_0_[7] ),
        .I4(\current_state[1]_i_19_n_0 ),
        .I5(p_0_in[1]),
        .O(\current_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBFB)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2__0_n_0 ),
        .I1(\current_state[2]_i_3_n_0 ),
        .I2(\current_state[2]_i_4_n_0 ),
        .I3(\current_state[2]_i_5_n_0 ),
        .I4(\current_state[2]_i_6_n_0 ),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[2]_i_10 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\current_state[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hAAAAA222)) 
    \current_state[2]_i_11 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(\current_state[4]_i_3_n_0 ),
        .O(\current_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F0F0FFF0F0F0)) 
    \current_state[2]_i_12 
       (.I0(\current_state[2]_i_14_n_0 ),
        .I1(\mem_ret_data_reg_n_0_[7] ),
        .I2(\current_state[2]_i_15_n_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\current_state[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h64)) 
    \current_state[2]_i_13 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(mem_ret_state[2]),
        .O(\current_state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBFFB0000BFFBBFFB)) 
    \current_state[2]_i_14 
       (.I0(\current_state[4]_i_5_n_0 ),
        .I1(\mem_ret_data_reg_n_0_[4] ),
        .I2(\mem_ret_data_reg_n_0_[1] ),
        .I3(\mem_ret_data_reg_n_0_[2] ),
        .I4(\current_state[2]_i_16_n_0 ),
        .I5(\mem_ret_data_reg_n_0_[0] ),
        .O(\current_state[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000708)) 
    \current_state[2]_i_15 
       (.I0(\mem_ret_data_reg_n_0_[1] ),
        .I1(\mem_ret_data_reg_n_0_[0] ),
        .I2(\mem_ret_data_reg_n_0_[3] ),
        .I3(\mem_ret_data_reg_n_0_[2] ),
        .I4(p_0_in[2]),
        .I5(\current_state[1]_i_10_n_0 ),
        .O(\current_state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFBFFFF)) 
    \current_state[2]_i_16 
       (.I0(\mem_ret_data_reg_n_0_[6] ),
        .I1(\mem_ret_data_reg_n_0_[5] ),
        .I2(\mem_ret_data_reg_n_0_[2] ),
        .I3(\mem_ret_data_reg_n_0_[4] ),
        .I4(\mem_ret_data_reg_n_0_[3] ),
        .I5(\mem_ret_data_reg_n_0_[1] ),
        .O(\current_state[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h02A00AA002800280)) 
    \current_state[2]_i_2__0 
       (.I0(\BCD_total[7]_i_6_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state[2]_i_7_n_0 ),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\current_state[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F7777777F7777)) 
    \current_state[2]_i_3 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\mem_ret_state[5]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(\current_state[2]_i_8_n_0 ),
        .I5(\multi_address[11]_i_5_n_0 ),
        .O(\current_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_state[2]_i_4 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[3] ),
        .O(\current_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F4FFF4F)) 
    \current_state[2]_i_5 
       (.I0(\current_state[2]_i_9_n_0 ),
        .I1(\current_state[3]_i_8_n_0 ),
        .I2(\current_state[2]_i_10_n_0 ),
        .I3(\current_state[2]_i_11_n_0 ),
        .I4(\current_state[2]_i_12_n_0 ),
        .I5(\current_state[2]_i_13_n_0 ),
        .O(\current_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \current_state[2]_i_6 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[2] ),
        .O(\current_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00009009)) 
    \current_state[2]_i_7 
       (.I0(\reg_copy_num_reg_n_0_[3] ),
        .I1(x[3]),
        .I2(\reg_copy_num_reg_n_0_[2] ),
        .I3(x[2]),
        .I4(\mem_ret_state[5]_i_14_n_0 ),
        .O(\current_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[2]_i_8 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBFEA)) 
    \current_state[2]_i_9 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(\current_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BBB8B8B8B8)) 
    \current_state[3]_i_1 
       (.I0(\current_state[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\current_state[3]_i_3_n_0 ),
        .I3(\current_state[3]_i_4_n_0 ),
        .I4(\current_state[3]_i_5_n_0 ),
        .I5(\current_state[3]_i_6_n_0 ),
        .O(\current_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[3]_i_10 
       (.I0(p_0_in[0]),
        .I1(\mem_ret_data_reg_n_0_[7] ),
        .O(\current_state[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_state[3]_i_11 
       (.I0(\mem_ret_data_reg_n_0_[5] ),
        .I1(\mem_ret_data_reg_n_0_[4] ),
        .O(\current_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \current_state[3]_i_12 
       (.I0(\mem_ret_data_reg_n_0_[0] ),
        .I1(\mem_ret_data_reg_n_0_[3] ),
        .I2(\mem_ret_data_reg_n_0_[2] ),
        .I3(\mem_ret_data_reg_n_0_[1] ),
        .I4(\mem_ret_data_reg_n_0_[6] ),
        .O(\current_state[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1111011101111111)) 
    \current_state[3]_i_13 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\mem_ret_data_reg_n_0_[1] ),
        .I3(\mem_ret_data_reg_n_0_[2] ),
        .I4(\mem_ret_data_reg_n_0_[0] ),
        .I5(\mem_ret_data_reg_n_0_[3] ),
        .O(\current_state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \current_state[3]_i_14 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(\current_state[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \current_state[3]_i_15 
       (.I0(\instruction_high_reg_n_0_[0] ),
        .I1(\mem_ret_data_reg_n_0_[5] ),
        .I2(\mem_ret_data_reg_n_0_[0] ),
        .I3(\mem_ret_data_reg_n_0_[7] ),
        .I4(\current_state[3]_i_16_n_0 ),
        .O(\current_state[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \current_state[3]_i_16 
       (.I0(\current_state[1]_i_10_n_0 ),
        .I1(\current_state[3]_i_17_n_0 ),
        .I2(\instruction_high_reg_n_0_[2] ),
        .I3(\instruction_high_reg_n_0_[1] ),
        .I4(\instruction_high_reg_n_0_[3] ),
        .I5(\mem_ret_data_reg_n_0_[6] ),
        .O(\current_state[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[3]_i_17 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .O(\current_state[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \current_state[3]_i_2 
       (.I0(mem_ret_state[3]),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(Q[1]),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .O(\current_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00010200)) 
    \current_state[3]_i_3 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .O(\current_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[3]_i_4 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(\current_state_reg_n_0_[4] ),
        .O(\current_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA888800000000)) 
    \current_state[3]_i_5 
       (.I0(\current_state[3]_i_7_n_0 ),
        .I1(p_0_in[3]),
        .I2(\current_state[4]_i_4_n_0 ),
        .I3(p_0_in[2]),
        .I4(\current_state[3]_i_8_n_0 ),
        .I5(\current_state[3]_i_9_n_0 ),
        .O(\current_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \current_state[3]_i_6 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[5] ),
        .O(\current_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555D5555F5FDF5F)) 
    \current_state[3]_i_7 
       (.I0(\current_state[2]_i_11_n_0 ),
        .I1(\current_state[3]_i_10_n_0 ),
        .I2(p_0_in[2]),
        .I3(\current_state[3]_i_11_n_0 ),
        .I4(\current_state[3]_i_12_n_0 ),
        .I5(\current_state[3]_i_13_n_0 ),
        .O(\current_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAB)) 
    \current_state[3]_i_8 
       (.I0(\current_state[3]_i_14_n_0 ),
        .I1(\current_state[3]_i_15_n_0 ),
        .I2(\mem_ret_data_reg_n_0_[4] ),
        .I3(\mem_ret_data_reg_n_0_[3] ),
        .I4(\mem_ret_data_reg_n_0_[1] ),
        .I5(\mem_ret_data_reg_n_0_[2] ),
        .O(\current_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_state[3]_i_9 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(\current_state_reg_n_0_[4] ),
        .O(\current_state[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB8BBB8B8B8B8)) 
    \current_state[3]_rep_i_1 
       (.I0(\current_state[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\current_state[3]_i_3_n_0 ),
        .I3(\current_state[3]_i_4_n_0 ),
        .I4(\current_state[3]_i_5_n_0 ),
        .I5(\current_state[3]_i_6_n_0 ),
        .O(\current_state[3]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE2222E200000000)) 
    \current_state[4]_i_1 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(mem_ret_state[4]),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(\mem_ret_data[7]_i_2_n_0 ),
        .O(\current_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C000D0C00000)) 
    \current_state[4]_i_2 
       (.I0(\current_state[4]_i_3_n_0 ),
        .I1(\tmp_err_code[1]_i_3_n_0 ),
        .I2(\PC[11]_i_6_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(\current_state[4]_i_4_n_0 ),
        .O(\current_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \current_state[4]_i_3 
       (.I0(p_0_in[1]),
        .I1(\current_state[4]_i_5_n_0 ),
        .I2(\mem_ret_data_reg_n_0_[4] ),
        .I3(\mem_ret_data_reg_n_0_[7] ),
        .I4(\mem_ret_data_reg_n_0_[2] ),
        .I5(\mem_ret_data_reg_n_0_[1] ),
        .O(\current_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_state[4]_i_4 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(\current_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \current_state[4]_i_5 
       (.I0(\mem_ret_data_reg_n_0_[3] ),
        .I1(\mem_ret_data_reg_n_0_[0] ),
        .I2(\mem_ret_data_reg_n_0_[6] ),
        .I3(\mem_ret_data_reg_n_0_[5] ),
        .O(\current_state[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF70)) 
    \current_state[5]_i_1 
       (.I0(\current_state[5]_i_4_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state[5]_i_5_n_0 ),
        .I3(\current_state[5]_i_6_n_0 ),
        .I4(\current_state[5]_i_7_n_0 ),
        .I5(\current_state[5]_i_8_n_0 ),
        .O(current_state));
  LUT6 #(
    .INIT(64'h0404000000000400)) 
    \current_state[5]_i_10 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(mem_ret_state[5]),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(\current_state[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \current_state[5]_i_11 
       (.I0(\BCD_left_reg_n_0_[4] ),
        .I1(\BCD_left_reg_n_0_[2] ),
        .I2(\BCD_left_reg_n_0_[3] ),
        .O(\current_state[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8000C00080000000)) 
    \current_state[5]_i_13 
       (.I0(\tmp_err_code[1]_i_8_n_0 ),
        .I1(p_0_in[2]),
        .I2(\current_state[3]_i_9_n_0 ),
        .I3(\current_state[5]_i_17_n_0 ),
        .I4(p_0_in[0]),
        .I5(\tmp_err_code[1]_i_9_n_0 ),
        .O(\current_state[5]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \current_state[5]_i_15 
       (.I0(key_counter[2]),
        .I1(key_counter[3]),
        .I2(key_counter[0]),
        .I3(key_counter[1]),
        .I4(keyPad_IBUF[15]),
        .O(\current_state[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFAFEFFAEFAAE)) 
    \current_state[5]_i_16 
       (.I0(\current_state[5]_i_22_n_0 ),
        .I1(keyPad_IBUF[12]),
        .I2(key_counter[1]),
        .I3(key_counter[0]),
        .I4(keyPad_IBUF[13]),
        .I5(keyPad_IBUF[14]),
        .O(\current_state[5]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_state[5]_i_17 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .O(\current_state[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF5FDFF5DF55DF)) 
    \current_state[5]_i_18 
       (.I0(\current_state[5]_i_23_n_0 ),
        .I1(keyPad_IBUF[9]),
        .I2(key_counter[0]),
        .I3(key_counter[1]),
        .I4(keyPad_IBUF[11]),
        .I5(keyPad_IBUF[10]),
        .O(\current_state[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
    \current_state[5]_i_19 
       (.I0(\current_state[5]_i_24_n_0 ),
        .I1(keyPad_IBUF[8]),
        .I2(key_counter[0]),
        .I3(key_counter[1]),
        .I4(key_counter[3]),
        .I5(key_counter[2]),
        .O(\current_state[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \current_state[5]_i_20 
       (.I0(\current_state[5]_i_25_n_0 ),
        .I1(keyPad_IBUF[3]),
        .I2(key_counter[2]),
        .I3(key_counter[3]),
        .I4(key_counter[1]),
        .I5(key_counter[0]),
        .O(\current_state[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFAFEFFAEFAAE)) 
    \current_state[5]_i_21 
       (.I0(\current_state[5]_i_26_n_0 ),
        .I1(keyPad_IBUF[0]),
        .I2(key_counter[1]),
        .I3(key_counter[0]),
        .I4(keyPad_IBUF[1]),
        .I5(keyPad_IBUF[2]),
        .O(\current_state[5]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_state[5]_i_22 
       (.I0(key_counter[3]),
        .I1(key_counter[2]),
        .O(\current_state[5]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[5]_i_23 
       (.I0(key_counter[3]),
        .I1(key_counter[2]),
        .O(\current_state[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFDFFDDFF)) 
    \current_state[5]_i_24 
       (.I0(key_counter[2]),
        .I1(key_counter[3]),
        .I2(key_counter[0]),
        .I3(key_counter[1]),
        .I4(keyPad_IBUF[7]),
        .I5(keyPad_IBUF[6]),
        .O(\current_state[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFDDFD)) 
    \current_state[5]_i_25 
       (.I0(key_counter[2]),
        .I1(key_counter[3]),
        .I2(keyPad_IBUF[4]),
        .I3(key_counter[0]),
        .I4(key_counter[1]),
        .I5(keyPad_IBUF[5]),
        .O(\current_state[5]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[5]_i_26 
       (.I0(key_counter[3]),
        .I1(key_counter[2]),
        .O(\current_state[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \current_state[5]_i_4 
       (.I0(\current_state[5]_i_11_n_0 ),
        .I1(\BCD_left_reg_n_0_[1] ),
        .I2(\BCD_left_reg_n_0_[0] ),
        .I3(\BCD_left_reg_n_0_[5] ),
        .I4(\BCD_left_reg_n_0_[6] ),
        .I5(\BCD_left_reg_n_0_[7] ),
        .O(\current_state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_state[5]_i_5 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(Q[1]),
        .O(\current_state[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFCFEFCCFEFCFEFC)) 
    \current_state[5]_i_6 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg[5]_i_12_n_2 ),
        .I5(\current_state_reg_n_0_[5] ),
        .O(\current_state[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0005111100055151)) 
    \current_state[5]_i_7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(mem_done),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\mem_ret_state[5]_i_13_n_0 ),
        .O(\current_state[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A8AAA80808)) 
    \current_state[5]_i_8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(mem_done),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\mem_ret_state[5]_i_11_n_0 ),
        .O(\current_state[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000022F8000044)) 
    \current_state[5]_i_9 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state[5]_i_13_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[5] ),
        .O(\current_state[5]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(sys_reset_reg_17),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(sys_reset_reg_17),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(sys_reset_reg_17),
        .D(\current_state[2]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[2] ));
  (* ORIG_CELL_NAME = "current_state_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(sys_reset_reg_17),
        .D(\current_state[3]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[3] ));
  (* ORIG_CELL_NAME = "current_state_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[3]_rep 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(sys_reset_reg_17),
        .D(\current_state[3]_rep_i_1_n_0 ),
        .Q(\current_state_reg[3]_rep_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(sys_reset_reg_17),
        .D(\current_state[4]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(sys_reset_reg_17),
        .D(\current_state_reg[5]_i_2_n_0 ),
        .Q(\current_state_reg_n_0_[5] ));
  CARRY4 \current_state_reg[5]_i_12 
       (.CI(\current_state_reg[5]_i_14_n_0 ),
        .CO({\NLW_current_state_reg[5]_i_12_CO_UNCONNECTED [3:2],\current_state_reg[5]_i_12_n_2 ,\current_state_reg[5]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[5]_i_12_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\current_state[5]_i_15_n_0 ,\current_state[5]_i_16_n_0 }));
  CARRY4 \current_state_reg[5]_i_14 
       (.CI(1'b0),
        .CO({\current_state_reg[5]_i_14_n_0 ,\current_state_reg[5]_i_14_n_1 ,\current_state_reg[5]_i_14_n_2 ,\current_state_reg[5]_i_14_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_current_state_reg[5]_i_14_O_UNCONNECTED [3:0]),
        .S({\current_state[5]_i_18_n_0 ,\current_state[5]_i_19_n_0 ,\current_state[5]_i_20_n_0 ,\current_state[5]_i_21_n_0 }));
  MUXF7 \current_state_reg[5]_i_2 
       (.I0(\current_state[5]_i_9_n_0 ),
        .I1(\current_state[5]_i_10_n_0 ),
        .O(\current_state_reg[5]_i_2_n_0 ),
        .S(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \graphic_addressA[0]_i_1 
       (.I0(\graphic_addressA_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .O(graphic_addressA[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressA[10]_i_1 
       (.I0(\graphic_addressA_reg[11]_i_3_n_7 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[11]_i_4_n_7 ),
        .O(\graphic_addressA[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \graphic_addressA[11]_i_1 
       (.I0(\graphic_addressA[7]_i_3_n_0 ),
        .I1(sys_reset_reg_15),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\graphic_addressA[7]_i_4_n_0 ),
        .O(\graphic_addressA[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressA[11]_i_2 
       (.I0(\graphic_addressA_reg[11]_i_3_n_6 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[11]_i_4_n_6 ),
        .O(\graphic_addressA[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressA[11]_i_6 
       (.I0(\graphic_addressA_reg_n_0_[10] ),
        .O(\graphic_addressA[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressA[1]_i_1 
       (.I0(\graphic_addressA_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\cpu_REG[15][4]_i_3_n_0 ),
        .O(graphic_addressA[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressA[2]_i_1 
       (.I0(\graphic_addressA_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[5]_i_2_n_7 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG[15][5]_i_3_n_0 ),
        .O(graphic_addressA[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressA[3]_i_1 
       (.I0(\graphic_addressA_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[5]_i_2_n_6 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\graphic_addressA[3]_i_2_n_0 ),
        .O(graphic_addressA[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \graphic_addressA[3]_i_2 
       (.I0(\graphic_addressA[3]_i_3_n_0 ),
        .I1(\graphic_addressA[3]_i_4_n_0 ),
        .I2(y[3]),
        .I3(\graphic_addressA[3]_i_5_n_0 ),
        .I4(y[2]),
        .I5(\graphic_addressA[3]_i_6_n_0 ),
        .O(\graphic_addressA[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \graphic_addressA[3]_i_3 
       (.I0(\cpu_REG_reg[15]_15 [0]),
        .I1(\cpu_REG_reg[14]_14 [0]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[13]_1 [0]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[12]_2 [0]),
        .O(\graphic_addressA[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \graphic_addressA[3]_i_4 
       (.I0(\cpu_REG_reg[11]_3 [0]),
        .I1(\cpu_REG_reg[10]_4 [0]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[9]_5 [0]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[8]_6 [0]),
        .O(\graphic_addressA[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \graphic_addressA[3]_i_5 
       (.I0(\cpu_REG_reg[7]_7 [0]),
        .I1(\cpu_REG_reg[6]_8 [0]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[5]_9 [0]),
        .I4(y[0]),
        .I5(\cpu_REG_reg[4]_10 [0]),
        .O(\graphic_addressA[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \graphic_addressA[3]_i_6 
       (.I0(\cpu_REG_reg[3]_11 [0]),
        .I1(\cpu_REG_reg[2]_12 [0]),
        .I2(y[1]),
        .I3(\cpu_REG_reg[1]_13 [0]),
        .I4(y[0]),
        .I5(R[0]),
        .O(\graphic_addressA[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressA[4]_i_1 
       (.I0(\graphic_addressA_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[5]_i_2_n_5 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .O(graphic_addressA[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressA[5]_i_1 
       (.I0(\graphic_addressA_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[5]_i_2_n_4 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .O(graphic_addressA[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressA[5]_i_5 
       (.I0(\graphic_addressA_reg_n_0_[3] ),
        .O(\graphic_addressA[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressA[6]_i_1 
       (.I0(\graphic_addressA_reg[7]_i_5_n_7 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[7]_i_6_n_7 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .O(graphic_addressA[6]));
  LUT6 #(
    .INIT(64'h0000000088C08800)) 
    \graphic_addressA[7]_i_1 
       (.I0(\graphic_addressA[7]_i_3_n_0 ),
        .I1(sys_reset_reg_15),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\graphic_addressA[7]_i_4_n_0 ),
        .O(\graphic_addressA[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressA[7]_i_2 
       (.I0(\graphic_addressA_reg[7]_i_5_n_6 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[7]_i_6_n_6 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .O(graphic_addressA[7]));
  LUT6 #(
    .INIT(64'h5555000055550002)) 
    \graphic_addressA[7]_i_3 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\graphic_addressA_reg_n_0_[10] ),
        .I2(\graphic_addressA_reg_n_0_[8] ),
        .I3(\graphic_addressA_reg_n_0_[11] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\graphic_addressA_reg_n_0_[9] ),
        .O(\graphic_addressA[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    \graphic_addressA[7]_i_4 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[2] ),
        .O(\graphic_addressA[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressA[7]_i_7 
       (.I0(\graphic_addressA_reg_n_0_[9] ),
        .O(\graphic_addressA[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressA[7]_i_8 
       (.I0(\graphic_addressA_reg_n_0_[8] ),
        .O(\graphic_addressA[7]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressA[7]_i_9 
       (.I0(\graphic_addressA_reg_n_0_[7] ),
        .O(\graphic_addressA[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressA[8]_i_1 
       (.I0(\graphic_addressA_reg[7]_i_5_n_5 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[7]_i_6_n_5 ),
        .O(\graphic_addressA[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressA[9]_i_1 
       (.I0(\graphic_addressA_reg[7]_i_5_n_4 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressA_reg[7]_i_6_n_4 ),
        .O(\graphic_addressA[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(graphic_addressA[0]),
        .Q(\graphic_addressA_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \graphic_addressA_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(\graphic_addressA[10]_i_1_n_0 ),
        .Q(\graphic_addressA_reg_n_0_[10] ),
        .S(\graphic_addressA[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \graphic_addressA_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(\graphic_addressA[11]_i_2_n_0 ),
        .Q(\graphic_addressA_reg_n_0_[11] ),
        .S(\graphic_addressA[11]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressA_reg[11]_i_3 
       (.CI(\graphic_addressA_reg[7]_i_5_n_0 ),
        .CO({\NLW_graphic_addressA_reg[11]_i_3_CO_UNCONNECTED [3:1],\graphic_addressA_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\graphic_addressA_reg_n_0_[10] }),
        .O({\NLW_graphic_addressA_reg[11]_i_3_O_UNCONNECTED [3:2],\graphic_addressA_reg[11]_i_3_n_6 ,\graphic_addressA_reg[11]_i_3_n_7 }),
        .S({1'b0,1'b0,\graphic_addressA_reg_n_0_[11] ,\graphic_addressA[11]_i_6_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressA_reg[11]_i_4 
       (.CI(\graphic_addressA_reg[7]_i_6_n_0 ),
        .CO({\NLW_graphic_addressA_reg[11]_i_4_CO_UNCONNECTED [3:1],\graphic_addressA_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_graphic_addressA_reg[11]_i_4_O_UNCONNECTED [3:2],\graphic_addressA_reg[11]_i_4_n_6 ,\graphic_addressA_reg[11]_i_4_n_7 }),
        .S({1'b0,1'b0,\graphic_addressA_reg_n_0_[11] ,\graphic_addressA_reg_n_0_[10] }));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressA_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(graphic_addressA[1]),
        .Q(\graphic_addressA_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressA_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(graphic_addressA[2]),
        .Q(\graphic_addressA_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressA_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(graphic_addressA[3]),
        .Q(\graphic_addressA_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressA_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(graphic_addressA[4]),
        .Q(\graphic_addressA_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressA_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(graphic_addressA[5]),
        .Q(\graphic_addressA_reg_n_0_[5] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressA_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\graphic_addressA_reg[5]_i_2_n_0 ,\graphic_addressA_reg[5]_i_2_n_1 ,\graphic_addressA_reg[5]_i_2_n_2 ,\graphic_addressA_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\graphic_addressA_reg_n_0_[3] ,1'b0}),
        .O({\graphic_addressA_reg[5]_i_2_n_4 ,\graphic_addressA_reg[5]_i_2_n_5 ,\graphic_addressA_reg[5]_i_2_n_6 ,\graphic_addressA_reg[5]_i_2_n_7 }),
        .S({\graphic_addressA_reg_n_0_[5] ,\graphic_addressA_reg_n_0_[4] ,\graphic_addressA[5]_i_5_n_0 ,\graphic_addressA_reg_n_0_[2] }));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressA_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(graphic_addressA[6]),
        .Q(\graphic_addressA_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressA_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(graphic_addressA[7]),
        .Q(\graphic_addressA_reg_n_0_[7] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressA_reg[7]_i_5 
       (.CI(1'b0),
        .CO({\graphic_addressA_reg[7]_i_5_n_0 ,\graphic_addressA_reg[7]_i_5_n_1 ,\graphic_addressA_reg[7]_i_5_n_2 ,\graphic_addressA_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\graphic_addressA_reg_n_0_[9] ,\graphic_addressA_reg_n_0_[8] ,\graphic_addressA_reg_n_0_[7] ,1'b0}),
        .O({\graphic_addressA_reg[7]_i_5_n_4 ,\graphic_addressA_reg[7]_i_5_n_5 ,\graphic_addressA_reg[7]_i_5_n_6 ,\graphic_addressA_reg[7]_i_5_n_7 }),
        .S({\graphic_addressA[7]_i_7_n_0 ,\graphic_addressA[7]_i_8_n_0 ,\graphic_addressA[7]_i_9_n_0 ,\graphic_addressA_reg_n_0_[6] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressA_reg[7]_i_6 
       (.CI(\graphic_addressA_reg[5]_i_2_n_0 ),
        .CO({\graphic_addressA_reg[7]_i_6_n_0 ,\graphic_addressA_reg[7]_i_6_n_1 ,\graphic_addressA_reg[7]_i_6_n_2 ,\graphic_addressA_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\graphic_addressA_reg[7]_i_6_n_4 ,\graphic_addressA_reg[7]_i_6_n_5 ,\graphic_addressA_reg[7]_i_6_n_6 ,\graphic_addressA_reg[7]_i_6_n_7 }),
        .S({\graphic_addressA_reg_n_0_[9] ,\graphic_addressA_reg_n_0_[8] ,\graphic_addressA_reg_n_0_[7] ,\graphic_addressA_reg_n_0_[6] }));
  FDSE #(
    .INIT(1'b1)) 
    \graphic_addressA_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(\graphic_addressA[8]_i_1_n_0 ),
        .Q(\graphic_addressA_reg_n_0_[8] ),
        .S(\graphic_addressA[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \graphic_addressA_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressA[7]_i_1_n_0 ),
        .D(\graphic_addressA[9]_i_1_n_0 ),
        .Q(\graphic_addressA_reg_n_0_[9] ),
        .S(\graphic_addressA[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressB[0]_i_1 
       (.I0(\graphic_addressB_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\cpu_REG[15][3]_i_3_n_0 ),
        .O(graphic_addressB[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressB[10]_i_1 
       (.I0(\graphic_addressB_reg[11]_i_3_n_7 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[11]_i_4_n_7 ),
        .O(\graphic_addressB[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008880)) 
    \graphic_addressB[11]_i_1 
       (.I0(\graphic_addressB[7]_i_3_n_0 ),
        .I1(s_sys_reset),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[5] ),
        .O(\graphic_addressB[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressB[11]_i_2 
       (.I0(\graphic_addressB_reg[11]_i_3_n_6 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[11]_i_4_n_6 ),
        .O(\graphic_addressB[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressB[11]_i_6 
       (.I0(\graphic_addressB_reg_n_0_[10] ),
        .O(\graphic_addressB[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \graphic_addressB[1]_i_1 
       (.I0(\graphic_addressB_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\cpu_REG[15][4]_i_3_n_0 ),
        .I3(\cpu_REG[15][3]_i_3_n_0 ),
        .O(graphic_addressB[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressB[2]_i_1 
       (.I0(\graphic_addressB_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[5]_i_2_n_7 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\graphic_addressB[2]_i_2_n_0 ),
        .O(graphic_addressB[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \graphic_addressB[2]_i_2 
       (.I0(\cpu_REG[15][5]_i_3_n_0 ),
        .I1(\cpu_REG[15][3]_i_3_n_0 ),
        .I2(\cpu_REG[15][4]_i_3_n_0 ),
        .O(\graphic_addressB[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressB[3]_i_1 
       (.I0(\graphic_addressB_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[5]_i_2_n_6 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\graphic_addressA[3]_i_2_n_0 ),
        .O(graphic_addressB[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressB[4]_i_1 
       (.I0(\graphic_addressB_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[5]_i_2_n_5 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG_reg[15][1]_i_4_n_0 ),
        .O(graphic_addressB[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressB[5]_i_1 
       (.I0(\graphic_addressB_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[5]_i_2_n_4 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG_reg[15][2]_i_5_n_0 ),
        .O(graphic_addressB[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressB[5]_i_5 
       (.I0(\graphic_addressB_reg_n_0_[3] ),
        .O(\graphic_addressB[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressB[6]_i_1 
       (.I0(\graphic_addressB_reg[7]_i_4_n_7 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[7]_i_5_n_7 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG_reg[15][3]_i_4_n_0 ),
        .O(graphic_addressB[6]));
  LUT4 #(
    .INIT(16'h8880)) 
    \graphic_addressB[7]_i_1 
       (.I0(\graphic_addressB[7]_i_3_n_0 ),
        .I1(s_sys_reset),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[4] ),
        .O(\graphic_addressB[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_addressB[7]_i_2 
       (.I0(\graphic_addressB_reg[7]_i_4_n_6 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[7]_i_5_n_6 ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\cpu_REG_reg[15][4]_i_4_n_0 ),
        .O(graphic_addressB[7]));
  LUT6 #(
    .INIT(64'hB0000003A0000000)) 
    \graphic_addressB[7]_i_3 
       (.I0(tmp_mem_write_i_4_n_0),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\graphic_addressA[7]_i_3_n_0 ),
        .O(\graphic_addressB[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressB[7]_i_6 
       (.I0(\graphic_addressB_reg_n_0_[9] ),
        .O(\graphic_addressB[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressB[7]_i_7 
       (.I0(\graphic_addressB_reg_n_0_[8] ),
        .O(\graphic_addressB[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \graphic_addressB[7]_i_8 
       (.I0(\graphic_addressB_reg_n_0_[7] ),
        .O(\graphic_addressB[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressB[8]_i_1 
       (.I0(\graphic_addressB_reg[7]_i_4_n_5 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[7]_i_5_n_5 ),
        .O(\graphic_addressB[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_addressB[9]_i_1 
       (.I0(\graphic_addressB_reg[7]_i_4_n_4 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\graphic_addressB_reg[7]_i_5_n_4 ),
        .O(\graphic_addressB[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressB_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(graphic_addressB[0]),
        .Q(\graphic_addressB_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \graphic_addressB_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(\graphic_addressB[10]_i_1_n_0 ),
        .Q(\graphic_addressB_reg_n_0_[10] ),
        .S(\graphic_addressB[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \graphic_addressB_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(\graphic_addressB[11]_i_2_n_0 ),
        .Q(\graphic_addressB_reg_n_0_[11] ),
        .S(\graphic_addressB[11]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressB_reg[11]_i_3 
       (.CI(\graphic_addressB_reg[7]_i_4_n_0 ),
        .CO({\NLW_graphic_addressB_reg[11]_i_3_CO_UNCONNECTED [3:1],\graphic_addressB_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\graphic_addressB_reg_n_0_[10] }),
        .O({\NLW_graphic_addressB_reg[11]_i_3_O_UNCONNECTED [3:2],\graphic_addressB_reg[11]_i_3_n_6 ,\graphic_addressB_reg[11]_i_3_n_7 }),
        .S({1'b0,1'b0,\graphic_addressB_reg_n_0_[11] ,\graphic_addressB[11]_i_6_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressB_reg[11]_i_4 
       (.CI(\graphic_addressB_reg[7]_i_5_n_0 ),
        .CO({\NLW_graphic_addressB_reg[11]_i_4_CO_UNCONNECTED [3:1],\graphic_addressB_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_graphic_addressB_reg[11]_i_4_O_UNCONNECTED [3:2],\graphic_addressB_reg[11]_i_4_n_6 ,\graphic_addressB_reg[11]_i_4_n_7 }),
        .S({1'b0,1'b0,\graphic_addressB_reg_n_0_[11] ,\graphic_addressB_reg_n_0_[10] }));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressB_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(graphic_addressB[1]),
        .Q(\graphic_addressB_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressB_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(graphic_addressB[2]),
        .Q(\graphic_addressB_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressB_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(graphic_addressB[3]),
        .Q(\graphic_addressB_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressB_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(graphic_addressB[4]),
        .Q(\graphic_addressB_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressB_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(graphic_addressB[5]),
        .Q(\graphic_addressB_reg_n_0_[5] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressB_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\graphic_addressB_reg[5]_i_2_n_0 ,\graphic_addressB_reg[5]_i_2_n_1 ,\graphic_addressB_reg[5]_i_2_n_2 ,\graphic_addressB_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\graphic_addressB_reg_n_0_[3] ,1'b0}),
        .O({\graphic_addressB_reg[5]_i_2_n_4 ,\graphic_addressB_reg[5]_i_2_n_5 ,\graphic_addressB_reg[5]_i_2_n_6 ,\graphic_addressB_reg[5]_i_2_n_7 }),
        .S({\graphic_addressB_reg_n_0_[5] ,\graphic_addressB_reg_n_0_[4] ,\graphic_addressB[5]_i_5_n_0 ,\graphic_addressB_reg_n_0_[2] }));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressB_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(graphic_addressB[6]),
        .Q(\graphic_addressB_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_addressB_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(graphic_addressB[7]),
        .Q(\graphic_addressB_reg_n_0_[7] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressB_reg[7]_i_4 
       (.CI(1'b0),
        .CO({\graphic_addressB_reg[7]_i_4_n_0 ,\graphic_addressB_reg[7]_i_4_n_1 ,\graphic_addressB_reg[7]_i_4_n_2 ,\graphic_addressB_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\graphic_addressB_reg_n_0_[9] ,\graphic_addressB_reg_n_0_[8] ,\graphic_addressB_reg_n_0_[7] ,1'b0}),
        .O({\graphic_addressB_reg[7]_i_4_n_4 ,\graphic_addressB_reg[7]_i_4_n_5 ,\graphic_addressB_reg[7]_i_4_n_6 ,\graphic_addressB_reg[7]_i_4_n_7 }),
        .S({\graphic_addressB[7]_i_6_n_0 ,\graphic_addressB[7]_i_7_n_0 ,\graphic_addressB[7]_i_8_n_0 ,\graphic_addressB_reg_n_0_[6] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \graphic_addressB_reg[7]_i_5 
       (.CI(\graphic_addressB_reg[5]_i_2_n_0 ),
        .CO({\graphic_addressB_reg[7]_i_5_n_0 ,\graphic_addressB_reg[7]_i_5_n_1 ,\graphic_addressB_reg[7]_i_5_n_2 ,\graphic_addressB_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\graphic_addressB_reg[7]_i_5_n_4 ,\graphic_addressB_reg[7]_i_5_n_5 ,\graphic_addressB_reg[7]_i_5_n_6 ,\graphic_addressB_reg[7]_i_5_n_7 }),
        .S({\graphic_addressB_reg_n_0_[9] ,\graphic_addressB_reg_n_0_[8] ,\graphic_addressB_reg_n_0_[7] ,\graphic_addressB_reg_n_0_[6] }));
  FDSE #(
    .INIT(1'b1)) 
    \graphic_addressB_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(\graphic_addressB[8]_i_1_n_0 ),
        .Q(\graphic_addressB_reg_n_0_[8] ),
        .S(\graphic_addressB[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \graphic_addressB_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_addressB[7]_i_1_n_0 ),
        .D(\graphic_addressB[9]_i_1_n_0 ),
        .Q(\graphic_addressB_reg_n_0_[9] ),
        .S(\graphic_addressB[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \graphic_bufferA[7]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(s_sys_reset),
        .I4(Q[1]),
        .I5(\graphic_bufferA[7]_i_2_n_0 ),
        .O(\graphic_bufferA[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \graphic_bufferA[7]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[0]),
        .O(\graphic_bufferA[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferA[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[0] ),
        .Q(graphic_bufferA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferA_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferA[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[1] ),
        .Q(graphic_bufferA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferA_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferA[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[2] ),
        .Q(graphic_bufferA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferA_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferA[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[3] ),
        .Q(graphic_bufferA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferA_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferA[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[4] ),
        .Q(graphic_bufferA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferA_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferA[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[5] ),
        .Q(graphic_bufferA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferA_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferA[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[6] ),
        .Q(graphic_bufferA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferA_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferA[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[7] ),
        .Q(graphic_bufferA[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h505F3F3FAFA0C0C0)) 
    \graphic_bufferB[0]_i_2 
       (.I0(sprite_buffer[5]),
        .I1(sprite_buffer[6]),
        .I2(graphic_offset[1]),
        .I3(sprite_buffer[7]),
        .I4(graphic_offset[0]),
        .I5(\mem_ret_data_reg_n_0_[0] ),
        .O(\graphic_bufferB[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h47B8FFFF47B80000)) 
    \graphic_bufferB[0]_i_3 
       (.I0(sprite_buffer[1]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[2]),
        .I3(\mem_ret_data_reg_n_0_[0] ),
        .I4(graphic_offset[1]),
        .I5(\graphic_bufferB[0]_i_4_n_0 ),
        .O(\graphic_bufferB[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \graphic_bufferB[0]_i_4 
       (.I0(sprite_buffer[3]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[4]),
        .I3(\mem_ret_data_reg_n_0_[0] ),
        .O(\graphic_bufferB[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h47FFB800)) 
    \graphic_bufferB[1]_i_2 
       (.I0(sprite_buffer[6]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[7]),
        .I3(graphic_offset[1]),
        .I4(\mem_ret_data_reg_n_0_[1] ),
        .O(\graphic_bufferB[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h47B8FFFF47B80000)) 
    \graphic_bufferB[1]_i_3 
       (.I0(sprite_buffer[2]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[3]),
        .I3(\mem_ret_data_reg_n_0_[1] ),
        .I4(graphic_offset[1]),
        .I5(\graphic_bufferB[1]_i_4_n_0 ),
        .O(\graphic_bufferB[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h47B8)) 
    \graphic_bufferB[1]_i_4 
       (.I0(sprite_buffer[4]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[5]),
        .I3(\mem_ret_data_reg_n_0_[1] ),
        .O(\graphic_bufferB[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \graphic_bufferB[2]_i_1 
       (.I0(\graphic_bufferB[2]_i_2_n_0 ),
        .I1(graphic_offset[2]),
        .I2(sprite_buffer[7]),
        .I3(graphic_offset[0]),
        .I4(graphic_offset[1]),
        .I5(\mem_ret_data_reg_n_0_[2] ),
        .O(\graphic_bufferB[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h47B8FFFF47B80000)) 
    \graphic_bufferB[2]_i_2 
       (.I0(sprite_buffer[3]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[4]),
        .I3(\mem_ret_data_reg_n_0_[2] ),
        .I4(graphic_offset[1]),
        .I5(\graphic_bufferB[2]_i_3_n_0 ),
        .O(\graphic_bufferB[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h47B8)) 
    \graphic_bufferB[2]_i_3 
       (.I0(sprite_buffer[5]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[6]),
        .I3(\mem_ret_data_reg_n_0_[2] ),
        .O(\graphic_bufferB[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \graphic_bufferB[3]_i_1 
       (.I0(\graphic_bufferB[3]_i_2_n_0 ),
        .I1(graphic_offset[1]),
        .I2(\graphic_bufferB[3]_i_3_n_0 ),
        .I3(graphic_offset[2]),
        .I4(\mem_ret_data_reg_n_0_[3] ),
        .O(\graphic_bufferB[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h47B8)) 
    \graphic_bufferB[3]_i_2 
       (.I0(sprite_buffer[4]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[5]),
        .I3(\mem_ret_data_reg_n_0_[3] ),
        .O(\graphic_bufferB[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \graphic_bufferB[3]_i_3 
       (.I0(sprite_buffer[6]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[7]),
        .I3(\mem_ret_data_reg_n_0_[3] ),
        .O(\graphic_bufferB[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \graphic_bufferB[4]_i_1 
       (.I0(\graphic_bufferB[4]_i_2_n_0 ),
        .I1(graphic_offset[2]),
        .I2(\mem_ret_data_reg_n_0_[4] ),
        .O(\graphic_bufferB[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3F3FAFA0C0C0)) 
    \graphic_bufferB[4]_i_2 
       (.I0(sprite_buffer[5]),
        .I1(sprite_buffer[6]),
        .I2(graphic_offset[1]),
        .I3(sprite_buffer[7]),
        .I4(graphic_offset[0]),
        .I5(\mem_ret_data_reg_n_0_[4] ),
        .O(\graphic_bufferB[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6AAAAAAAAA)) 
    \graphic_bufferB[5]_i_1 
       (.I0(\mem_ret_data_reg_n_0_[5] ),
        .I1(graphic_offset[2]),
        .I2(sprite_buffer[7]),
        .I3(graphic_offset[0]),
        .I4(sprite_buffer[6]),
        .I5(graphic_offset[1]),
        .O(\graphic_bufferB[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \graphic_bufferB[6]_i_1 
       (.I0(\mem_ret_data_reg_n_0_[6] ),
        .I1(graphic_offset[2]),
        .I2(sprite_buffer[7]),
        .I3(graphic_offset[0]),
        .I4(graphic_offset[1]),
        .O(\graphic_bufferB[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \graphic_bufferB[7]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(s_sys_reset),
        .I3(Q[0]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\cpu_REG[13][0]_i_3_n_0 ),
        .O(\graphic_bufferB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferB_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferB[7]_i_1_n_0 ),
        .D(\graphic_bufferB_reg[0]_i_1_n_0 ),
        .Q(graphic_bufferB[0]),
        .R(1'b0));
  MUXF7 \graphic_bufferB_reg[0]_i_1 
       (.I0(\graphic_bufferB[0]_i_2_n_0 ),
        .I1(\graphic_bufferB[0]_i_3_n_0 ),
        .O(\graphic_bufferB_reg[0]_i_1_n_0 ),
        .S(graphic_offset[2]));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferB_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferB[7]_i_1_n_0 ),
        .D(\graphic_bufferB_reg[1]_i_1_n_0 ),
        .Q(graphic_bufferB[1]),
        .R(1'b0));
  MUXF7 \graphic_bufferB_reg[1]_i_1 
       (.I0(\graphic_bufferB[1]_i_2_n_0 ),
        .I1(\graphic_bufferB[1]_i_3_n_0 ),
        .O(\graphic_bufferB_reg[1]_i_1_n_0 ),
        .S(graphic_offset[2]));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferB_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferB[7]_i_1_n_0 ),
        .D(\graphic_bufferB[2]_i_1_n_0 ),
        .Q(graphic_bufferB[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferB_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferB[7]_i_1_n_0 ),
        .D(\graphic_bufferB[3]_i_1_n_0 ),
        .Q(graphic_bufferB[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferB_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferB[7]_i_1_n_0 ),
        .D(\graphic_bufferB[4]_i_1_n_0 ),
        .Q(graphic_bufferB[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferB_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferB[7]_i_1_n_0 ),
        .D(\graphic_bufferB[5]_i_1_n_0 ),
        .Q(graphic_bufferB[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferB_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferB[7]_i_1_n_0 ),
        .D(\graphic_bufferB[6]_i_1_n_0 ),
        .Q(graphic_bufferB[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_bufferB_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\graphic_bufferB[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[7] ),
        .Q(graphic_bufferB[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFCF0004)) 
    graphic_collision_i_1
       (.I0(graphic_collision_i_2_n_0),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\graphic_offset[2]_i_2_n_0 ),
        .I4(graphic_collision_reg_n_0),
        .O(graphic_collision_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    graphic_collision_i_10
       (.I0(graphic_bufferA[1]),
        .I1(\memWrite[1]_i_2_n_0 ),
        .I2(graphic_collision_i_12_n_0),
        .I3(\mem_ret_data_reg_n_0_[6] ),
        .I4(\memWrite[0]_i_2_n_0 ),
        .I5(graphic_bufferA[0]),
        .O(graphic_collision_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFF404040)) 
    graphic_collision_i_11
       (.I0(\graphic_bufferB[4]_i_2_n_0 ),
        .I1(graphic_offset[2]),
        .I2(\mem_ret_data_reg_n_0_[4] ),
        .I3(graphic_bufferA[2]),
        .I4(\memWrite[2]_i_2_n_0 ),
        .O(graphic_collision_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    graphic_collision_i_12
       (.I0(graphic_offset[1]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[7]),
        .I3(graphic_offset[2]),
        .O(graphic_collision_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    graphic_collision_i_2
       (.I0(graphic_collision_i_3_n_0),
        .I1(graphic_collision_i_4_n_0),
        .I2(\mem_ret_data_reg_n_0_[2] ),
        .I3(\graphic_bufferB[2]_i_1_n_0 ),
        .I4(graphic_collision_i_5_n_0),
        .I5(graphic_collision_i_6_n_0),
        .O(graphic_collision_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000D0D000D)) 
    graphic_collision_i_3
       (.I0(\mem_ret_data_reg_n_0_[1] ),
        .I1(\graphic_bufferB_reg[1]_i_1_n_0 ),
        .I2(graphic_collision_i_7_n_0),
        .I3(\mem_ret_data_reg_n_0_[0] ),
        .I4(\graphic_bufferB_reg[0]_i_1_n_0 ),
        .I5(graphic_collision_i_8_n_0),
        .O(graphic_collision_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    graphic_collision_i_4
       (.I0(\memWrite[7]_i_6_n_0 ),
        .I1(graphic_bufferA[7]),
        .I2(\mem_ret_data_reg_n_0_[5] ),
        .I3(graphic_collision_i_9_n_0),
        .I4(graphic_collision_i_10_n_0),
        .O(graphic_collision_i_4_n_0));
  LUT6 #(
    .INIT(64'h22222E2200000000)) 
    graphic_collision_i_5
       (.I0(\memWrite[4]_i_4_n_0 ),
        .I1(graphic_offset[2]),
        .I2(graphic_offset[1]),
        .I3(sprite_buffer[0]),
        .I4(graphic_offset[0]),
        .I5(graphic_bufferA[4]),
        .O(graphic_collision_i_5_n_0));
  LUT6 #(
    .INIT(64'hAEFFAEAEAEAEAEAE)) 
    graphic_collision_i_6
       (.I0(graphic_collision_i_11_n_0),
        .I1(\mem_ret_data_reg_n_0_[3] ),
        .I2(\graphic_bufferB[3]_i_1_n_0 ),
        .I3(graphic_offset[2]),
        .I4(\memWrite[7]_i_8_n_0 ),
        .I5(graphic_bufferA[3]),
        .O(graphic_collision_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    graphic_collision_i_7
       (.I0(\memWrite[5]_i_2_n_0 ),
        .I1(graphic_bufferA[5]),
        .O(graphic_collision_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    graphic_collision_i_8
       (.I0(\memWrite[6]_i_2_n_0 ),
        .I1(graphic_bufferA[6]),
        .O(graphic_collision_i_8_n_0));
  LUT5 #(
    .INIT(32'h8A800000)) 
    graphic_collision_i_9
       (.I0(graphic_offset[1]),
        .I1(sprite_buffer[6]),
        .I2(graphic_offset[0]),
        .I3(sprite_buffer[7]),
        .I4(graphic_offset[2]),
        .O(graphic_collision_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    graphic_collision_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(graphic_collision_i_1_n_0),
        .Q(graphic_collision_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \graphic_offset[0]_i_1 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\graphic_offset[2]_i_2_n_0 ),
        .I4(graphic_offset[0]),
        .O(\graphic_offset[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \graphic_offset[1]_i_1 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\graphic_offset[2]_i_2_n_0 ),
        .I4(graphic_offset[1]),
        .O(\graphic_offset[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \graphic_offset[2]_i_1 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\graphic_offset[2]_i_2_n_0 ),
        .I4(graphic_offset[2]),
        .O(\graphic_offset[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \graphic_offset[2]_i_2 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(Q[0]),
        .I4(s_sys_reset),
        .O(\graphic_offset[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_offset_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\graphic_offset[0]_i_1_n_0 ),
        .Q(graphic_offset[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_offset_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\graphic_offset[1]_i_1_n_0 ),
        .Q(graphic_offset[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graphic_offset_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\graphic_offset[2]_i_1_n_0 ),
        .Q(graphic_offset[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \instruction_high[7]_i_1 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(Q[1]),
        .I3(s_sys_reset),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(\instruction_high[7]_i_2_n_0 ),
        .O(instruction_high0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \instruction_high[7]_i_2 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\instruction_high[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_high_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(instruction_high0),
        .D(\mem_ret_data_reg_n_0_[0] ),
        .Q(\instruction_high_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_high_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(instruction_high0),
        .D(\mem_ret_data_reg_n_0_[1] ),
        .Q(\instruction_high_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_high_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(instruction_high0),
        .D(\mem_ret_data_reg_n_0_[2] ),
        .Q(\instruction_high_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_high_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(instruction_high0),
        .D(\mem_ret_data_reg_n_0_[3] ),
        .Q(\instruction_high_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_high_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(instruction_high0),
        .D(\mem_ret_data_reg_n_0_[4] ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_high_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(instruction_high0),
        .D(\mem_ret_data_reg_n_0_[5] ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_high_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(instruction_high0),
        .D(\mem_ret_data_reg_n_0_[6] ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instruction_high_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(instruction_high0),
        .D(\mem_ret_data_reg_n_0_[7] ),
        .Q(p_0_in[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \key_counter[0]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(key_counter[0]),
        .O(\key_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \key_counter[1]_i_1 
       (.I0(key_counter[0]),
        .I1(key_counter[1]),
        .I2(\current_state_reg_n_0_[5] ),
        .O(\key_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \key_counter[2]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(key_counter[1]),
        .I2(key_counter[0]),
        .I3(key_counter[2]),
        .O(\key_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000090000)) 
    \key_counter[3]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(sys_reset_reg_15),
        .I5(\current_state_reg_n_0_[4] ),
        .O(key_counter0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \key_counter[3]_i_2 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(key_counter[0]),
        .I2(key_counter[1]),
        .I3(key_counter[2]),
        .I4(key_counter[3]),
        .O(\key_counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(key_counter0),
        .D(\key_counter[0]_i_1_n_0 ),
        .Q(key_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(key_counter0),
        .D(\key_counter[1]_i_1_n_0 ),
        .Q(key_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(key_counter0),
        .D(\key_counter[2]_i_1_n_0 ),
        .Q(key_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(key_counter0),
        .D(\key_counter[3]_i_2_n_0 ),
        .Q(key_counter[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000007000000)) 
    \kk[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(sys_reset_reg_15),
        .I5(\kk[7]_i_2_n_0 ),
        .O(kk0));
  LUT6 #(
    .INIT(64'hFBFBFBFFFFFFFBFF)) 
    \kk[7]_i_2 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\kk[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \kk_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(kk0),
        .D(\mem_ret_data_reg_n_0_[0] ),
        .Q(kk[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \kk_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(kk0),
        .D(\mem_ret_data_reg_n_0_[1] ),
        .Q(kk[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \kk_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(kk0),
        .D(\mem_ret_data_reg_n_0_[2] ),
        .Q(kk[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \kk_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(kk0),
        .D(\mem_ret_data_reg_n_0_[3] ),
        .Q(kk[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \kk_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(kk0),
        .D(\mem_ret_data_reg_n_0_[4] ),
        .Q(kk[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \kk_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(kk0),
        .D(\mem_ret_data_reg_n_0_[5] ),
        .Q(kk[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \kk_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(kk0),
        .D(\mem_ret_data_reg_n_0_[6] ),
        .Q(kk[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \kk_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(kk0),
        .D(\mem_ret_data_reg_n_0_[7] ),
        .Q(kk[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hDFDCDFDF)) 
    \memAddress[0]_i_1 
       (.I0(\memAddress[0]_i_2_n_0 ),
        .I1(\memAddress[0]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\memAddress[0]_i_4_n_0 ),
        .I4(\memAddress[0]_i_5_n_0 ),
        .O(\memAddress[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \memAddress[0]_i_10 
       (.I0(I[1]),
        .I1(x[1]),
        .O(\memAddress[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \memAddress[0]_i_11 
       (.I0(I[0]),
        .I1(x[0]),
        .O(\memAddress[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \memAddress[0]_i_14 
       (.I0(I[1]),
        .O(\memAddress[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000503F5F3F503F)) 
    \memAddress[0]_i_2 
       (.I0(multi_address[0]),
        .I1(\graphic_addressB_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(I[0]),
        .I5(\cpu_REG[15][7]_i_15_n_0 ),
        .O(\memAddress[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8080FF80)) 
    \memAddress[0]_i_3 
       (.I0(\current_state[2]_i_8_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(multi_address[0]),
        .I3(PC__0[0]),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(\mem_ret_data[7]_i_2_n_0 ),
        .O(\memAddress[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hF0440044)) 
    \memAddress[0]_i_4 
       (.I0(Q[1]),
        .I1(\memAddress_reg[0]_i_6_n_7 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\graphic_addressA_reg_n_0_[0] ),
        .O(\memAddress[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h57F7)) 
    \memAddress[0]_i_5 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(plusOp0_in[0]),
        .I2(Q[1]),
        .I3(I[0]),
        .O(\memAddress[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \memAddress[0]_i_8 
       (.I0(I[3]),
        .I1(x[3]),
        .O(\memAddress[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \memAddress[0]_i_9 
       (.I0(I[2]),
        .I1(x[2]),
        .O(\memAddress[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[10]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(I[10]),
        .I3(\memAddress[10]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[10]_i_3_n_0 ),
        .O(\memAddress[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \memAddress[10]_i_2 
       (.I0(multi_address[10]),
        .I1(\graphic_addressB_reg_n_0_[10] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(plusOp1_in[10]),
        .O(\memAddress[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[10]_i_3 
       (.I0(\memAddress[10]_i_4_n_0 ),
        .I1(PC__0[10]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[10]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[10]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[10]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[10]),
        .I4(Q[1]),
        .I5(I[10]),
        .O(\memAddress[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[10]_i_5 
       (.I0(\graphic_addressA_reg_n_0_[10] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[11]_i_13_n_5 ),
        .O(\memAddress[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7444444)) 
    \memAddress[11]_i_1 
       (.I0(\memAddress[11]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(Q[0]),
        .I3(\PC[11]_i_4_n_0 ),
        .I4(\memWrite[7]_i_3_n_0 ),
        .I5(\memAddress[11]_i_4_n_0 ),
        .O(\memAddress[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[11]_i_10 
       (.I0(Q[0]),
        .I1(\memAddress[11]_i_11_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[11]),
        .I4(Q[1]),
        .I5(I[11]),
        .O(\memAddress[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[11]_i_11 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\graphic_addressA_reg_n_0_[11] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[11]_i_13_n_4 ),
        .O(\memAddress[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[11]_i_2 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(I[11]),
        .I3(\memAddress[11]_i_6_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[11]_i_7_n_0 ),
        .O(\memAddress[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7C7C7F7F7F7F7F7)) 
    \memAddress[11]_i_3 
       (.I0(\memAddress[11]_i_8_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\memAddress[11]_i_9_n_0 ),
        .O(\memAddress[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000804080408)) 
    \memAddress[11]_i_4 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\multi_address[11]_i_5_n_0 ),
        .I5(Q[1]),
        .O(\memAddress[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \memAddress[11]_i_5 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\memAddress[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[11]_i_6 
       (.I0(multi_address[11]),
        .I1(\graphic_addressB_reg_n_0_[11] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[11]),
        .O(\memAddress[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[11]_i_7 
       (.I0(\memAddress[11]_i_10_n_0 ),
        .I1(PC__0[11]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[11]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFF2F)) 
    \memAddress[11]_i_8 
       (.I0(\mem_ret_state[5]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .O(\memAddress[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hEAFAEFFA)) 
    \memAddress[11]_i_9 
       (.I0(\BCD_total[7]_i_4_n_0 ),
        .I1(\mem_ret_state[5]_i_11_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_ret_state[5]_i_13_n_0 ),
        .O(\memAddress[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[1]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(I[1]),
        .I3(\memAddress[1]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[1]_i_3_n_0 ),
        .O(\memAddress[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[1]_i_2 
       (.I0(multi_address[1]),
        .I1(\graphic_addressB_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[1]),
        .O(\memAddress[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[1]_i_3 
       (.I0(\memAddress[1]_i_4_n_0 ),
        .I1(PC__0[1]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[1]),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[1]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[1]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[1]),
        .I4(Q[1]),
        .I5(I[1]),
        .O(\memAddress[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[1]_i_5 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(\graphic_addressA_reg_n_0_[1] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[0]_i_6_n_6 ),
        .O(\memAddress[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[2]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(I[2]),
        .I3(\memAddress[2]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[2]_i_3_n_0 ),
        .O(\memAddress[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[2]_i_2 
       (.I0(multi_address[2]),
        .I1(\graphic_addressB_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[2]),
        .O(\memAddress[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[2]_i_3 
       (.I0(\memAddress[2]_i_4_n_0 ),
        .I1(PC__0[2]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[2]),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[2]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[2]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[2]),
        .I4(Q[1]),
        .I5(I[2]),
        .O(\memAddress[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF0440044)) 
    \memAddress[2]_i_5 
       (.I0(Q[1]),
        .I1(\memAddress_reg[0]_i_6_n_5 ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\graphic_addressA_reg_n_0_[2] ),
        .O(\memAddress[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[3]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(I[3]),
        .I3(\memAddress[3]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[3]_i_3_n_0 ),
        .O(\memAddress[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[3]_i_2 
       (.I0(multi_address[3]),
        .I1(\graphic_addressB_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[3]),
        .O(\memAddress[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[3]_i_3 
       (.I0(\memAddress[3]_i_4_n_0 ),
        .I1(PC__0[3]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[3]),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[3]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[3]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[3]),
        .I4(Q[1]),
        .I5(I[3]),
        .O(\memAddress[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[3]_i_5 
       (.I0(\graphic_addressA_reg_n_0_[3] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[0]_i_6_n_4 ),
        .O(\memAddress[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[4]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(I[4]),
        .I3(\memAddress[4]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[4]_i_3_n_0 ),
        .O(\memAddress[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[4]_i_2 
       (.I0(multi_address[4]),
        .I1(\graphic_addressB_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[4]),
        .O(\memAddress[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[4]_i_3 
       (.I0(\memAddress[4]_i_4_n_0 ),
        .I1(PC__0[4]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[4]),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[4]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[4]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[4]),
        .I4(Q[1]),
        .I5(I[4]),
        .O(\memAddress[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[4]_i_5 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(\graphic_addressA_reg_n_0_[4] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[7]_i_7_n_7 ),
        .O(\memAddress[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[5]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(I[5]),
        .I3(\memAddress[5]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[5]_i_3_n_0 ),
        .O(\memAddress[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[5]_i_2 
       (.I0(multi_address[5]),
        .I1(\graphic_addressB_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[5]),
        .O(\memAddress[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[5]_i_3 
       (.I0(\memAddress[5]_i_4_n_0 ),
        .I1(PC__0[5]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[5]),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[5]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[5]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[5]),
        .I4(Q[1]),
        .I5(I[5]),
        .O(\memAddress[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[5]_i_5 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(\graphic_addressA_reg_n_0_[5] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[7]_i_7_n_6 ),
        .O(\memAddress[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[6]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(I[6]),
        .I3(\memAddress[6]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[6]_i_3_n_0 ),
        .O(\memAddress[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[6]_i_2 
       (.I0(multi_address[6]),
        .I1(\graphic_addressB_reg_n_0_[6] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[6]),
        .O(\memAddress[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[6]_i_3 
       (.I0(\memAddress[6]_i_4_n_0 ),
        .I1(PC__0[6]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[6]),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[6]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[6]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[6]),
        .I4(Q[1]),
        .I5(I[6]),
        .O(\memAddress[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[6]_i_5 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(\graphic_addressA_reg_n_0_[6] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[7]_i_7_n_5 ),
        .O(\memAddress[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[7]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(I[7]),
        .I3(\memAddress[7]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[7]_i_3_n_0 ),
        .O(\memAddress[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[7]_i_2 
       (.I0(multi_address[7]),
        .I1(\graphic_addressB_reg_n_0_[7] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[7]),
        .O(\memAddress[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[7]_i_3 
       (.I0(\memAddress[7]_i_4_n_0 ),
        .I1(PC__0[7]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[7]),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[7]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[7]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[7]),
        .I4(Q[1]),
        .I5(I[7]),
        .O(\memAddress[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[7]_i_5 
       (.I0(\graphic_addressA_reg_n_0_[7] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[7]_i_7_n_4 ),
        .O(\memAddress[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[8]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(I[8]),
        .I3(\memAddress[8]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[8]_i_3_n_0 ),
        .O(\memAddress[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[8]_i_2 
       (.I0(multi_address[8]),
        .I1(\graphic_addressB_reg_n_0_[8] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[8]),
        .O(\memAddress[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[8]_i_3 
       (.I0(\memAddress[8]_i_4_n_0 ),
        .I1(PC__0[8]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[8]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[8]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[8]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[8]),
        .I4(Q[1]),
        .I5(I[8]),
        .O(\memAddress[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[8]_i_5 
       (.I0(\graphic_addressA_reg_n_0_[8] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[11]_i_13_n_7 ),
        .O(\memAddress[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \memAddress[9]_i_1 
       (.I0(\memAddress[11]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(I[9]),
        .I3(\memAddress[9]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\memAddress[9]_i_3_n_0 ),
        .O(\memAddress[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \memAddress[9]_i_2 
       (.I0(multi_address[9]),
        .I1(\graphic_addressB_reg_n_0_[9] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(plusOp1_in[9]),
        .O(\memAddress[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAAAAAAAA)) 
    \memAddress[9]_i_3 
       (.I0(\memAddress[9]_i_4_n_0 ),
        .I1(PC__0[9]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(multi_address[9]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state[2]_i_8_n_0 ),
        .O(\memAddress[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5454544444445444)) 
    \memAddress[9]_i_4 
       (.I0(Q[0]),
        .I1(\memAddress[9]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(plusOp0_in[9]),
        .I4(Q[1]),
        .I5(I[9]),
        .O(\memAddress[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h880F8800)) 
    \memAddress[9]_i_5 
       (.I0(\graphic_addressA_reg_n_0_[9] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\memAddress_reg[11]_i_13_n_6 ),
        .O(\memAddress[9]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[0]_i_1_n_0 ),
        .Q(\s_address_reg[11] [0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \memAddress_reg[0]_i_6 
       (.CI(1'b0),
        .CO({\memAddress_reg[0]_i_6_n_0 ,\memAddress_reg[0]_i_6_n_1 ,\memAddress_reg[0]_i_6_n_2 ,\memAddress_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(I[3:0]),
        .O({\memAddress_reg[0]_i_6_n_4 ,\memAddress_reg[0]_i_6_n_5 ,\memAddress_reg[0]_i_6_n_6 ,\memAddress_reg[0]_i_6_n_7 }),
        .S({\memAddress[0]_i_8_n_0 ,\memAddress[0]_i_9_n_0 ,\memAddress[0]_i_10_n_0 ,\memAddress[0]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \memAddress_reg[0]_i_7 
       (.CI(1'b0),
        .CO({\memAddress_reg[0]_i_7_n_0 ,\memAddress_reg[0]_i_7_n_1 ,\memAddress_reg[0]_i_7_n_2 ,\memAddress_reg[0]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,I[1],1'b0}),
        .O(plusOp0_in[3:0]),
        .S({I[3:2],\memAddress[0]_i_14_n_0 ,I[0]}));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[10]_i_1_n_0 ),
        .Q(\s_address_reg[11] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[11]_i_2_n_0 ),
        .Q(\s_address_reg[11] [11]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \memAddress_reg[11]_i_12 
       (.CI(\memAddress_reg[7]_i_6_n_0 ),
        .CO({\NLW_memAddress_reg[11]_i_12_CO_UNCONNECTED [3],\memAddress_reg[11]_i_12_n_1 ,\memAddress_reg[11]_i_12_n_2 ,\memAddress_reg[11]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[11:8]),
        .S(I[11:8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \memAddress_reg[11]_i_13 
       (.CI(\memAddress_reg[7]_i_7_n_0 ),
        .CO({\NLW_memAddress_reg[11]_i_13_CO_UNCONNECTED [3],\memAddress_reg[11]_i_13_n_1 ,\memAddress_reg[11]_i_13_n_2 ,\memAddress_reg[11]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memAddress_reg[11]_i_13_n_4 ,\memAddress_reg[11]_i_13_n_5 ,\memAddress_reg[11]_i_13_n_6 ,\memAddress_reg[11]_i_13_n_7 }),
        .S(I[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[1]_i_1_n_0 ),
        .Q(\s_address_reg[11] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[2]_i_1_n_0 ),
        .Q(\s_address_reg[11] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[3]_i_1_n_0 ),
        .Q(\s_address_reg[11] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[4]_i_1_n_0 ),
        .Q(\s_address_reg[11] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[5]_i_1_n_0 ),
        .Q(\s_address_reg[11] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[6]_i_1_n_0 ),
        .Q(\s_address_reg[11] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[7]_i_1_n_0 ),
        .Q(\s_address_reg[11] [7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \memAddress_reg[7]_i_6 
       (.CI(\memAddress_reg[0]_i_7_n_0 ),
        .CO({\memAddress_reg[7]_i_6_n_0 ,\memAddress_reg[7]_i_6_n_1 ,\memAddress_reg[7]_i_6_n_2 ,\memAddress_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[7:4]),
        .S(I[7:4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \memAddress_reg[7]_i_7 
       (.CI(\memAddress_reg[0]_i_6_n_0 ),
        .CO({\memAddress_reg[7]_i_7_n_0 ,\memAddress_reg[7]_i_7_n_1 ,\memAddress_reg[7]_i_7_n_2 ,\memAddress_reg[7]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\memAddress_reg[7]_i_7_n_4 ,\memAddress_reg[7]_i_7_n_5 ,\memAddress_reg[7]_i_7_n_6 ,\memAddress_reg[7]_i_7_n_7 }),
        .S(I[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[8]_i_1_n_0 ),
        .Q(\s_address_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\memAddress[11]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memAddress[9]_i_1_n_0 ),
        .Q(\s_address_reg[11] [9]));
  LUT6 #(
    .INIT(64'h00000000D5DFDFD5)) 
    \memWrite[0]_i_1 
       (.I0(\cpu_REG[13][0]_i_3_n_0 ),
        .I1(graphic_bufferB[0]),
        .I2(Q[0]),
        .I3(\memWrite[0]_i_2_n_0 ),
        .I4(graphic_bufferA[0]),
        .I5(\memWrite[0]_i_3_n_0 ),
        .O(\memWrite[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \memWrite[0]_i_2 
       (.I0(graphic_offset[1]),
        .I1(sprite_buffer[0]),
        .I2(graphic_offset[0]),
        .I3(graphic_offset[2]),
        .O(\memWrite[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000005F50DFD05F5)) 
    \memWrite[0]_i_3 
       (.I0(\BCD_left[0]_i_2_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\BCD_total_reg_n_0_[0] ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\memWrite[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5DFDFD5)) 
    \memWrite[1]_i_1 
       (.I0(\cpu_REG[13][0]_i_3_n_0 ),
        .I1(graphic_bufferB[1]),
        .I2(Q[0]),
        .I3(\memWrite[1]_i_2_n_0 ),
        .I4(graphic_bufferA[1]),
        .I5(\memWrite[1]_i_3_n_0 ),
        .O(\memWrite[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \memWrite[1]_i_2 
       (.I0(graphic_offset[1]),
        .I1(sprite_buffer[0]),
        .I2(graphic_offset[0]),
        .I3(sprite_buffer[1]),
        .I4(graphic_offset[2]),
        .O(\memWrite[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000005F50DFD05F5)) 
    \memWrite[1]_i_3 
       (.I0(\cpu_REG[15][1]_i_3_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\BCD_total_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\memWrite[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5DFDFD5)) 
    \memWrite[2]_i_1 
       (.I0(\cpu_REG[13][0]_i_3_n_0 ),
        .I1(graphic_bufferB[2]),
        .I2(Q[0]),
        .I3(\memWrite[2]_i_2_n_0 ),
        .I4(graphic_bufferA[2]),
        .I5(\memWrite[2]_i_3_n_0 ),
        .O(\memWrite[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \memWrite[2]_i_2 
       (.I0(sprite_buffer[2]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[1]),
        .I3(graphic_offset[1]),
        .I4(sprite_buffer[0]),
        .I5(graphic_offset[2]),
        .O(\memWrite[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000005F50DFD05F5)) 
    \memWrite[2]_i_3 
       (.I0(\BCD_left[2]_i_2_n_0 ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\BCD_total_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\memWrite[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA888A888A888AAAA)) 
    \memWrite[3]_i_1 
       (.I0(\memWrite[3]_i_2_n_0 ),
        .I1(\cpu_REG[13][0]_i_3_n_0 ),
        .I2(\BCD_total_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\cpu_REG[15][3]_i_3_n_0 ),
        .I5(\memWrite[3]_i_3_n_0 ),
        .O(\memWrite[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9A009AFFFFFFFF)) 
    \memWrite[3]_i_2 
       (.I0(graphic_bufferA[3]),
        .I1(graphic_offset[2]),
        .I2(\memWrite[7]_i_8_n_0 ),
        .I3(Q[0]),
        .I4(graphic_bufferB[3]),
        .I5(\cpu_REG[13][0]_i_3_n_0 ),
        .O(\memWrite[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \memWrite[3]_i_3 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg[3]_rep_n_0 ),
        .I2(Q[1]),
        .O(\memWrite[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF066FFFFF0660000)) 
    \memWrite[4]_i_1 
       (.I0(\memWrite[4]_i_2_n_0 ),
        .I1(graphic_bufferA[4]),
        .I2(graphic_bufferB[4]),
        .I3(Q[0]),
        .I4(\cpu_REG[13][0]_i_3_n_0 ),
        .I5(\memWrite[4]_i_3_n_0 ),
        .O(\memWrite[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \memWrite[4]_i_2 
       (.I0(graphic_offset[0]),
        .I1(sprite_buffer[0]),
        .I2(graphic_offset[1]),
        .I3(graphic_offset[2]),
        .I4(\memWrite[4]_i_4_n_0 ),
        .O(\memWrite[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \memWrite[4]_i_3 
       (.I0(\BCD_total_reg_n_0_[4] ),
        .I1(\cpu_REG[15][4]_i_3_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .O(\memWrite[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \memWrite[4]_i_4 
       (.I0(sprite_buffer[1]),
        .I1(sprite_buffer[2]),
        .I2(graphic_offset[1]),
        .I3(sprite_buffer[3]),
        .I4(graphic_offset[0]),
        .I5(sprite_buffer[4]),
        .O(\memWrite[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF066FFFFF0660000)) 
    \memWrite[5]_i_1 
       (.I0(\memWrite[5]_i_2_n_0 ),
        .I1(graphic_bufferA[5]),
        .I2(graphic_bufferB[5]),
        .I3(Q[0]),
        .I4(\cpu_REG[13][0]_i_3_n_0 ),
        .I5(\memWrite[5]_i_3_n_0 ),
        .O(\memWrite[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \memWrite[5]_i_2 
       (.I0(sprite_buffer[1]),
        .I1(graphic_offset[0]),
        .I2(sprite_buffer[0]),
        .I3(graphic_offset[1]),
        .I4(graphic_offset[2]),
        .I5(\memWrite[5]_i_4_n_0 ),
        .O(\memWrite[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \memWrite[5]_i_3 
       (.I0(\BCD_total_reg_n_0_[5] ),
        .I1(\cpu_REG[15][5]_i_3_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .O(\memWrite[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \memWrite[5]_i_4 
       (.I0(sprite_buffer[2]),
        .I1(sprite_buffer[3]),
        .I2(graphic_offset[1]),
        .I3(sprite_buffer[4]),
        .I4(graphic_offset[0]),
        .I5(sprite_buffer[5]),
        .O(\memWrite[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF066FFFFF0660000)) 
    \memWrite[6]_i_1 
       (.I0(\memWrite[6]_i_2_n_0 ),
        .I1(graphic_bufferA[6]),
        .I2(graphic_bufferB[6]),
        .I3(Q[0]),
        .I4(\cpu_REG[13][0]_i_3_n_0 ),
        .I5(\memWrite[6]_i_3_n_0 ),
        .O(\memWrite[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \memWrite[6]_i_2 
       (.I0(\memWrite[6]_i_4_n_0 ),
        .I1(graphic_offset[2]),
        .I2(\memWrite[6]_i_5_n_0 ),
        .O(\memWrite[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \memWrite[6]_i_3 
       (.I0(\BCD_total_reg_n_0_[6] ),
        .I1(\cpu_REG[15][6]_i_3_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .O(\memWrite[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \memWrite[6]_i_4 
       (.I0(sprite_buffer[0]),
        .I1(graphic_offset[1]),
        .I2(sprite_buffer[1]),
        .I3(graphic_offset[0]),
        .I4(sprite_buffer[2]),
        .O(\memWrite[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \memWrite[6]_i_5 
       (.I0(sprite_buffer[3]),
        .I1(sprite_buffer[4]),
        .I2(graphic_offset[1]),
        .I3(sprite_buffer[5]),
        .I4(graphic_offset[0]),
        .I5(sprite_buffer[6]),
        .O(\memWrite[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000800AAAA08AA)) 
    \memWrite[7]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\memWrite[7]_i_3_n_0 ),
        .I2(\memWrite[7]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(\cpu_REG[13][0]_i_3_n_0 ),
        .I5(\memWrite[7]_i_5_n_0 ),
        .O(\memWrite[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF066FFFFF0660000)) 
    \memWrite[7]_i_2 
       (.I0(\memWrite[7]_i_6_n_0 ),
        .I1(graphic_bufferA[7]),
        .I2(graphic_bufferB[7]),
        .I3(Q[0]),
        .I4(\cpu_REG[13][0]_i_3_n_0 ),
        .I5(\memWrite[7]_i_7_n_0 ),
        .O(\memWrite[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \memWrite[7]_i_3 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[3] ),
        .O(\memWrite[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \memWrite[7]_i_4 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\BCD_left_reg_n_0_[7] ),
        .I2(\BCD_left_reg_n_0_[5] ),
        .I3(\BCD_left_reg_n_0_[4] ),
        .I4(\BCD_left[6]_i_4_n_0 ),
        .I5(\BCD_left_reg_n_0_[6] ),
        .O(\memWrite[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF34FF34FFFF0000)) 
    \memWrite[7]_i_5 
       (.I0(\mem_ret_state[5]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\mem_ret_state[5]_i_6_n_0 ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\memWrite[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \memWrite[7]_i_6 
       (.I0(\memWrite[7]_i_8_n_0 ),
        .I1(graphic_offset[2]),
        .I2(\memWrite[7]_i_9_n_0 ),
        .O(\memWrite[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0ACACAC)) 
    \memWrite[7]_i_7 
       (.I0(\BCD_total_reg_n_0_[7] ),
        .I1(\BCD_left[7]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(Q[1]),
        .O(\memWrite[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \memWrite[7]_i_8 
       (.I0(sprite_buffer[0]),
        .I1(sprite_buffer[1]),
        .I2(graphic_offset[1]),
        .I3(sprite_buffer[2]),
        .I4(graphic_offset[0]),
        .I5(sprite_buffer[3]),
        .O(\memWrite[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \memWrite[7]_i_9 
       (.I0(sprite_buffer[4]),
        .I1(sprite_buffer[5]),
        .I2(graphic_offset[1]),
        .I3(sprite_buffer[6]),
        .I4(graphic_offset[0]),
        .I5(sprite_buffer[7]),
        .O(\memWrite[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memWrite[0]_i_1_n_0 ),
        .Q(\s_dataIn_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memWrite[1]_i_1_n_0 ),
        .Q(\s_dataIn_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memWrite[2]_i_1_n_0 ),
        .Q(\s_dataIn_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memWrite[3]_i_1_n_0 ),
        .Q(\s_dataIn_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memWrite[4]_i_1_n_0 ),
        .Q(\s_dataIn_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memWrite[5]_i_1_n_0 ),
        .Q(\s_dataIn_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memWrite[6]_i_1_n_0 ),
        .Q(\s_dataIn_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\memWrite[7]_i_2_n_0 ),
        .Q(\s_dataIn_reg[7] [7]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \mem_ret_data[7]_i_1 
       (.I0(\mem_ret_data[7]_i_2_n_0 ),
        .I1(mem_done),
        .I2(mem_write),
        .I3(s_sys_reset),
        .I4(\mem_ret_data[7]_i_3_n_0 ),
        .I5(\current_state_reg_n_0_[5] ),
        .O(mem_ret_data0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \mem_ret_data[7]_i_2 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[4] ),
        .O(\mem_ret_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_ret_data[7]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\mem_ret_data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_data0),
        .D(D[0]),
        .Q(\mem_ret_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_data0),
        .D(D[1]),
        .Q(\mem_ret_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_data0),
        .D(D[2]),
        .Q(\mem_ret_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_data0),
        .D(D[3]),
        .Q(\mem_ret_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_data0),
        .D(D[4]),
        .Q(\mem_ret_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_data0),
        .D(D[5]),
        .Q(\mem_ret_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_data0),
        .D(D[6]),
        .Q(\mem_ret_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_data0),
        .D(D[7]),
        .Q(\mem_ret_data_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h23202323EFECEFEF)) 
    \mem_ret_state[0]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(\mem_ret_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0055F000FFFF03FF)) 
    \mem_ret_state[1]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\mem_ret_state[5]_i_8_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\mem_ret_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7A707A707A207A70)) 
    \mem_ret_state[2]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\current_state_reg[3]_rep_n_0 ),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\mem_ret_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0F0F0F0F000B0)) 
    \mem_ret_state[3]_i_1 
       (.I0(\mem_ret_state[3]_i_2_n_0 ),
        .I1(\mem_ret_state[3]_i_3_n_0 ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(Q[0]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\mem_ret_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mem_ret_state[3]_i_2 
       (.I0(x[3]),
        .I1(x[2]),
        .O(\mem_ret_state[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mem_ret_state[3]_i_3 
       (.I0(x[0]),
        .I1(x[1]),
        .O(\mem_ret_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hA8CA)) 
    \mem_ret_state[4]_i_1 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .O(\mem_ret_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888A8AAAA)) 
    \mem_ret_state[5]_i_1 
       (.I0(s_sys_reset),
        .I1(\mem_ret_state[5]_i_3_n_0 ),
        .I2(\mem_ret_state[5]_i_4_n_0 ),
        .I3(\mem_ret_state[5]_i_5_n_0 ),
        .I4(\mem_ret_state[5]_i_6_n_0 ),
        .I5(\mem_ret_state[5]_i_7_n_0 ),
        .O(mem_ret_state0));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    \mem_ret_state[5]_i_10 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\mem_ret_state[5]_i_14_n_0 ),
        .I2(x[2]),
        .I3(\reg_copy_num_reg_n_0_[2] ),
        .I4(x[3]),
        .I5(\reg_copy_num_reg_n_0_[3] ),
        .O(\mem_ret_state[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \mem_ret_state[5]_i_11 
       (.I0(\BCD_left_reg_n_0_[6] ),
        .I1(\BCD_left[6]_i_4_n_0 ),
        .I2(\BCD_left_reg_n_0_[4] ),
        .I3(\BCD_left_reg_n_0_[5] ),
        .I4(\BCD_left_reg_n_0_[7] ),
        .O(\mem_ret_state[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0000083C0)) 
    \mem_ret_state[5]_i_12 
       (.I0(\mem_ret_state[5]_i_15_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\mem_ret_state[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAAAAAAAAAAA)) 
    \mem_ret_state[5]_i_13 
       (.I0(\BCD_left_reg_n_0_[7] ),
        .I1(\BCD_left_reg_n_0_[3] ),
        .I2(\BCD_left_reg_n_0_[2] ),
        .I3(\BCD_left_reg_n_0_[4] ),
        .I4(\BCD_left_reg_n_0_[5] ),
        .I5(\BCD_left_reg_n_0_[6] ),
        .O(\mem_ret_state[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \mem_ret_state[5]_i_14 
       (.I0(x[1]),
        .I1(\reg_copy_num_reg_n_0_[1] ),
        .I2(x[0]),
        .I3(\reg_copy_num_reg_n_0_[0] ),
        .O(\mem_ret_state[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \mem_ret_state[5]_i_15 
       (.I0(Q[0]),
        .I1(n[3]),
        .I2(n[1]),
        .I3(n[0]),
        .I4(n[2]),
        .O(\mem_ret_state[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFCFFECF0EC)) 
    \mem_ret_state[5]_i_2 
       (.I0(\mem_ret_state[5]_i_8_n_0 ),
        .I1(Q[0]),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\mem_ret_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55454545)) 
    \mem_ret_state[5]_i_3 
       (.I0(\mem_ret_state[5]_i_9_n_0 ),
        .I1(\mem_ret_state[5]_i_10_n_0 ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\mem_ret_state[5]_i_11_n_0 ),
        .I4(Q[1]),
        .I5(\mem_ret_state[5]_i_12_n_0 ),
        .O(\mem_ret_state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mem_ret_state[5]_i_4 
       (.I0(multi_count[8]),
        .I1(multi_count[6]),
        .I2(\multi_count[7]_i_4_n_0 ),
        .I3(multi_count[7]),
        .O(\mem_ret_state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_ret_state[5]_i_5 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[3] ),
        .O(\mem_ret_state[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFDF0FDFDFDF0CDFD)) 
    \mem_ret_state[5]_i_6 
       (.I0(\BCD_total[7]_i_4_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\mem_ret_state[5]_i_13_n_0 ),
        .O(\mem_ret_state[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_ret_state[5]_i_7 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[5] ),
        .O(\mem_ret_state[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mem_ret_state[5]_i_8 
       (.I0(x[2]),
        .I1(x[3]),
        .I2(x[1]),
        .I3(x[0]),
        .O(\mem_ret_state[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0FFFFFF)) 
    \mem_ret_state[5]_i_9 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(Q[0]),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\mem_ret_state[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_state0),
        .D(\mem_ret_state[0]_i_1_n_0 ),
        .Q(mem_ret_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_state0),
        .D(\mem_ret_state[1]_i_1_n_0 ),
        .Q(mem_ret_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_state0),
        .D(\mem_ret_state[2]_i_1_n_0 ),
        .Q(mem_ret_state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_state0),
        .D(\mem_ret_state[3]_i_1_n_0 ),
        .Q(mem_ret_state[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_state0),
        .D(\mem_ret_state[4]_i_1_n_0 ),
        .Q(mem_ret_state[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_ret_state0),
        .D(\mem_ret_state[5]_i_2_n_0 ),
        .Q(mem_ret_state[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000040)) 
    mem_valid_i_1
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\cpu_REG[15][7]_i_10_n_0 ),
        .I2(\current_state[0]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(mem_done),
        .I5(mem_valid),
        .O(mem_valid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mem_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_17),
        .D(mem_valid_i_1_n_0),
        .Q(mem_valid));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hC002FC3E)) 
    \multi_address[0]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(I[0]),
        .I4(multi_address[0]),
        .O(\multi_address[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCACACFFFCACACF0F)) 
    \multi_address[10]_i_1 
       (.I0(I[10]),
        .I1(\multi_address_reg[11]_i_6_n_6 ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(plusOp1_in[10]),
        .O(\multi_address[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A8A8A8A8A)) 
    \multi_address[11]_i_1 
       (.I0(s_sys_reset),
        .I1(\multi_address[11]_i_3_n_0 ),
        .I2(\multi_address[11]_i_4_n_0 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\multi_address[11]_i_5_n_0 ),
        .I5(Q[1]),
        .O(multi_address0));
  LUT6 #(
    .INIT(64'hCACACFFFCACACF0F)) 
    \multi_address[11]_i_2 
       (.I0(I[11]),
        .I1(\multi_address_reg[11]_i_6_n_5 ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(plusOp1_in[11]),
        .O(\multi_address[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0000000000800A)) 
    \multi_address[11]_i_3 
       (.I0(\sprite_buffer[7]_i_2_n_0 ),
        .I1(\mem_ret_state[5]_i_4_n_0 ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\multi_address[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFF7FBFFF)) 
    \multi_address[11]_i_4 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(\multi_address[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \multi_address[11]_i_5 
       (.I0(n[2]),
        .I1(n[0]),
        .I2(n[1]),
        .I3(n[3]),
        .O(\multi_address[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF80FF8F0080008)) 
    \multi_address[1]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(plusOp1_in[1]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(I[1]),
        .I5(\multi_address_reg[4]_i_3_n_7 ),
        .O(\multi_address[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F08800F0F088)) 
    \multi_address[2]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(plusOp1_in[2]),
        .I2(\multi_address_reg[4]_i_3_n_6 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(I[2]),
        .O(\multi_address[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F08800F0F088)) 
    \multi_address[3]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(plusOp1_in[3]),
        .I2(\multi_address_reg[4]_i_3_n_5 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(I[3]),
        .O(\multi_address[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F08800F0F088)) 
    \multi_address[4]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(plusOp1_in[4]),
        .I2(\multi_address_reg[4]_i_3_n_4 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(I[4]),
        .O(\multi_address[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F08800F0F088)) 
    \multi_address[5]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(plusOp1_in[5]),
        .I2(\multi_address_reg[8]_i_2_n_7 ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(I[5]),
        .O(\multi_address[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFF88F0000088)) 
    \multi_address[6]_i_1 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(plusOp1_in[6]),
        .I2(I[6]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\multi_address_reg[8]_i_2_n_6 ),
        .O(\multi_address[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCAAFCAA0CAA0CAA0)) 
    \multi_address[7]_i_1 
       (.I0(\multi_address_reg[8]_i_2_n_5 ),
        .I1(I[7]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(plusOp1_in[7]),
        .I5(\current_state_reg_n_0_[5] ),
        .O(\multi_address[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCACACFFFCACACF0F)) 
    \multi_address[8]_i_1 
       (.I0(I[8]),
        .I1(\multi_address_reg[8]_i_2_n_4 ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(plusOp1_in[8]),
        .O(\multi_address[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCACACFFFCACACF0F)) 
    \multi_address[9]_i_1 
       (.I0(I[9]),
        .I1(\multi_address_reg[11]_i_6_n_7 ),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(plusOp1_in[9]),
        .O(\multi_address[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[0]_i_1_n_0 ),
        .Q(multi_address[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[10]_i_1_n_0 ),
        .Q(multi_address[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[11]_i_2_n_0 ),
        .Q(multi_address[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \multi_address_reg[11]_i_6 
       (.CI(\multi_address_reg[8]_i_2_n_0 ),
        .CO({\NLW_multi_address_reg[11]_i_6_CO_UNCONNECTED [3:2],\multi_address_reg[11]_i_6_n_2 ,\multi_address_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_multi_address_reg[11]_i_6_O_UNCONNECTED [3],\multi_address_reg[11]_i_6_n_5 ,\multi_address_reg[11]_i_6_n_6 ,\multi_address_reg[11]_i_6_n_7 }),
        .S({1'b0,multi_address[11:9]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \multi_address_reg[11]_i_7 
       (.CI(\multi_address_reg[8]_i_3_n_0 ),
        .CO({\NLW_multi_address_reg[11]_i_7_CO_UNCONNECTED [3:2],\multi_address_reg[11]_i_7_n_2 ,\multi_address_reg[11]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_multi_address_reg[11]_i_7_O_UNCONNECTED [3],plusOp1_in[11:9]}),
        .S({1'b0,I[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[1]_i_1_n_0 ),
        .Q(multi_address[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[2]_i_1_n_0 ),
        .Q(multi_address[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[3]_i_1_n_0 ),
        .Q(multi_address[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[4]_i_1_n_0 ),
        .Q(multi_address[4]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \multi_address_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\multi_address_reg[4]_i_2_n_0 ,\multi_address_reg[4]_i_2_n_1 ,\multi_address_reg[4]_i_2_n_2 ,\multi_address_reg[4]_i_2_n_3 }),
        .CYINIT(I[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp1_in[4:1]),
        .S(I[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \multi_address_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\multi_address_reg[4]_i_3_n_0 ,\multi_address_reg[4]_i_3_n_1 ,\multi_address_reg[4]_i_3_n_2 ,\multi_address_reg[4]_i_3_n_3 }),
        .CYINIT(multi_address[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\multi_address_reg[4]_i_3_n_4 ,\multi_address_reg[4]_i_3_n_5 ,\multi_address_reg[4]_i_3_n_6 ,\multi_address_reg[4]_i_3_n_7 }),
        .S(multi_address[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[5]_i_1_n_0 ),
        .Q(multi_address[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[6]_i_1_n_0 ),
        .Q(multi_address[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[7]_i_1_n_0 ),
        .Q(multi_address[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[8]_i_1_n_0 ),
        .Q(multi_address[8]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \multi_address_reg[8]_i_2 
       (.CI(\multi_address_reg[4]_i_3_n_0 ),
        .CO({\multi_address_reg[8]_i_2_n_0 ,\multi_address_reg[8]_i_2_n_1 ,\multi_address_reg[8]_i_2_n_2 ,\multi_address_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\multi_address_reg[8]_i_2_n_4 ,\multi_address_reg[8]_i_2_n_5 ,\multi_address_reg[8]_i_2_n_6 ,\multi_address_reg[8]_i_2_n_7 }),
        .S(multi_address[8:5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \multi_address_reg[8]_i_3 
       (.CI(\multi_address_reg[4]_i_2_n_0 ),
        .CO({\multi_address_reg[8]_i_3_n_0 ,\multi_address_reg[8]_i_3_n_1 ,\multi_address_reg[8]_i_3_n_2 ,\multi_address_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp1_in[8:5]),
        .S(I[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \multi_address_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_address0),
        .D(\multi_address[9]_i_1_n_0 ),
        .Q(multi_address[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \multi_count[0]_i_1 
       (.I0(multi_count[0]),
        .O(\multi_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \multi_count[1]_i_1 
       (.I0(multi_count[0]),
        .I1(multi_count[1]),
        .O(\multi_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \multi_count[2]_i_1 
       (.I0(multi_count[2]),
        .I1(multi_count[1]),
        .I2(multi_count[0]),
        .O(\multi_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \multi_count[3]_i_1 
       (.I0(multi_count[3]),
        .I1(multi_count[0]),
        .I2(multi_count[1]),
        .I3(multi_count[2]),
        .O(\multi_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \multi_count[4]_i_1 
       (.I0(multi_count[4]),
        .I1(multi_count[2]),
        .I2(multi_count[1]),
        .I3(multi_count[0]),
        .I4(multi_count[3]),
        .O(\multi_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \multi_count[5]_i_1 
       (.I0(multi_count[5]),
        .I1(multi_count[3]),
        .I2(multi_count[0]),
        .I3(multi_count[1]),
        .I4(multi_count[2]),
        .I5(multi_count[4]),
        .O(\multi_count[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \multi_count[6]_i_1 
       (.I0(multi_count[6]),
        .I1(\multi_count[7]_i_4_n_0 ),
        .O(\multi_count[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \multi_count[7]_i_1 
       (.I0(multi_count0),
        .I1(\current_state_reg_n_0_[5] ),
        .O(\multi_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008300)) 
    \multi_count[7]_i_2 
       (.I0(\mem_ret_state[5]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\x[3]_i_4_n_0 ),
        .O(multi_count0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \multi_count[7]_i_3 
       (.I0(multi_count[7]),
        .I1(\multi_count[7]_i_4_n_0 ),
        .I2(multi_count[6]),
        .O(\multi_count[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \multi_count[7]_i_4 
       (.I0(multi_count[5]),
        .I1(multi_count[3]),
        .I2(multi_count[0]),
        .I3(multi_count[1]),
        .I4(multi_count[2]),
        .I5(multi_count[4]),
        .O(\multi_count[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAAAAAAA)) 
    \multi_count[8]_i_1 
       (.I0(multi_count[8]),
        .I1(multi_count[7]),
        .I2(\multi_count[7]_i_4_n_0 ),
        .I3(multi_count[6]),
        .I4(Q[1]),
        .I5(multi_count0),
        .O(\multi_count[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_count0),
        .D(\multi_count[0]_i_1_n_0 ),
        .Q(multi_count[0]),
        .R(\multi_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_count0),
        .D(\multi_count[1]_i_1_n_0 ),
        .Q(multi_count[1]),
        .R(\multi_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_count0),
        .D(\multi_count[2]_i_1_n_0 ),
        .Q(multi_count[2]),
        .R(\multi_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_count0),
        .D(\multi_count[3]_i_1_n_0 ),
        .Q(multi_count[3]),
        .R(\multi_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_count0),
        .D(\multi_count[4]_i_1_n_0 ),
        .Q(multi_count[4]),
        .R(\multi_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_count0),
        .D(\multi_count[5]_i_1_n_0 ),
        .Q(multi_count[5]),
        .R(\multi_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_count0),
        .D(\multi_count[6]_i_1_n_0 ),
        .Q(multi_count[6]),
        .R(\multi_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(multi_count0),
        .D(\multi_count[7]_i_3_n_0 ),
        .Q(multi_count[7]),
        .R(\multi_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \multi_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\multi_count[8]_i_1_n_0 ),
        .Q(multi_count[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \n[0]_i_1 
       (.I0(n[0]),
        .I1(Q[0]),
        .I2(\mem_ret_data_reg_n_0_[0] ),
        .O(\n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \n[1]_i_1 
       (.I0(n[0]),
        .I1(n[1]),
        .I2(Q[0]),
        .I3(\mem_ret_data_reg_n_0_[1] ),
        .O(\n[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \n[2]_i_1 
       (.I0(n[2]),
        .I1(n[1]),
        .I2(n[0]),
        .I3(Q[0]),
        .I4(\mem_ret_data_reg_n_0_[2] ),
        .O(\n[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000008000)) 
    \n[3]_i_1 
       (.I0(\n[3]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(s_sys_reset),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(Q[0]),
        .O(n0));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \n[3]_i_2 
       (.I0(n[3]),
        .I1(n[2]),
        .I2(n[0]),
        .I3(n[1]),
        .I4(Q[0]),
        .I5(\mem_ret_data_reg_n_0_[3] ),
        .O(\n[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0044000F00440000)) 
    \n[3]_i_3 
       (.I0(\multi_address[11]_i_5_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .I2(\n[3]_i_4_n_0 ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(p_0_in[2]),
        .O(\n[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \n[3]_i_4 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(\current_state_reg_n_0_[5] ),
        .O(\n[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(n0),
        .D(\n[0]_i_1_n_0 ),
        .Q(n[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(n0),
        .D(\n[1]_i_1_n_0 ),
        .Q(n[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(n0),
        .D(\n[2]_i_1_n_0 ),
        .Q(n[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(n0),
        .D(\n[3]_i_2_n_0 ),
        .Q(n[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_copy_num[0]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\reg_copy_num_reg_n_0_[0] ),
        .O(reg_copy_num[0]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \reg_copy_num[1]_i_1 
       (.I0(\reg_copy_num_reg_n_0_[1] ),
        .I1(\reg_copy_num_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[4] ),
        .O(\reg_copy_num[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \reg_copy_num[2]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\reg_copy_num_reg_n_0_[0] ),
        .I2(\reg_copy_num_reg_n_0_[1] ),
        .I3(\reg_copy_num_reg_n_0_[2] ),
        .O(reg_copy_num[2]));
  LUT6 #(
    .INIT(64'h0800000020000000)) 
    \reg_copy_num[3]_i_1 
       (.I0(sys_reset_reg_16),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg[3]_rep_n_0 ),
        .I3(Q[0]),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\reg_copy_num[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \reg_copy_num[3]_i_2 
       (.I0(\reg_copy_num_reg_n_0_[1] ),
        .I1(\reg_copy_num_reg_n_0_[0] ),
        .I2(\reg_copy_num_reg_n_0_[2] ),
        .I3(\reg_copy_num_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(\reg_copy_num[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_copy_num_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_copy_num[3]_i_1_n_0 ),
        .D(reg_copy_num[0]),
        .Q(\reg_copy_num_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_copy_num_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_copy_num[3]_i_1_n_0 ),
        .D(\reg_copy_num[1]_i_1_n_0 ),
        .Q(\reg_copy_num_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_copy_num_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_copy_num[3]_i_1_n_0 ),
        .D(reg_copy_num[2]),
        .Q(\reg_copy_num_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_copy_num_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_copy_num[3]_i_1_n_0 ),
        .D(\reg_copy_num[3]_i_2_n_0 ),
        .Q(\reg_copy_num_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \sprite_buffer[7]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\sprite_buffer[7]_i_2_n_0 ),
        .I2(s_sys_reset),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\sprite_buffer[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sprite_buffer[7]_i_2 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .O(\sprite_buffer[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sprite_buffer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\sprite_buffer[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[0] ),
        .Q(sprite_buffer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sprite_buffer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\sprite_buffer[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[1] ),
        .Q(sprite_buffer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sprite_buffer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\sprite_buffer[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[2] ),
        .Q(sprite_buffer[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sprite_buffer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\sprite_buffer[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[3] ),
        .Q(sprite_buffer[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sprite_buffer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\sprite_buffer[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[4] ),
        .Q(sprite_buffer[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sprite_buffer_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\sprite_buffer[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[5] ),
        .Q(sprite_buffer[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sprite_buffer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\sprite_buffer[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[6] ),
        .Q(sprite_buffer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sprite_buffer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\sprite_buffer[7]_i_1_n_0 ),
        .D(\mem_ret_data_reg_n_0_[7] ),
        .Q(sprite_buffer[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \tmp_err_code[0]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .O(\tmp_err_code[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF10FF10FF10)) 
    \tmp_err_code[1]_i_1 
       (.I0(\addr[11]_i_2_n_0 ),
        .I1(\tmp_err_code[1]_i_3_n_0 ),
        .I2(\tmp_err_code[1]_i_4_n_0 ),
        .I3(\current_state[0]_i_6_n_0 ),
        .I4(\tmp_err_code[1]_i_5_n_0 ),
        .I5(\tmp_err_code[1]_i_6_n_0 ),
        .O(\tmp_err_code[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FF6F9F933F6F9)) 
    \tmp_err_code[1]_i_10 
       (.I0(\mem_ret_data_reg_n_0_[4] ),
        .I1(\mem_ret_data_reg_n_0_[0] ),
        .I2(\mem_ret_data_reg_n_0_[6] ),
        .I3(\mem_ret_data_reg_n_0_[1] ),
        .I4(\mem_ret_data_reg_n_0_[2] ),
        .I5(\mem_ret_data_reg_n_0_[5] ),
        .O(\tmp_err_code[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF00FF66FF99F9F9F)) 
    \tmp_err_code[1]_i_11 
       (.I0(\mem_ret_data_reg_n_0_[4] ),
        .I1(\mem_ret_data_reg_n_0_[5] ),
        .I2(\mem_ret_data_reg_n_0_[3] ),
        .I3(\mem_ret_data_reg_n_0_[0] ),
        .I4(\mem_ret_data_reg_n_0_[2] ),
        .I5(\mem_ret_data_reg_n_0_[1] ),
        .O(\tmp_err_code[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_err_code[1]_i_12 
       (.I0(\mem_ret_data_reg_n_0_[2] ),
        .I1(\mem_ret_data_reg_n_0_[5] ),
        .I2(\mem_ret_data_reg_n_0_[6] ),
        .O(\tmp_err_code[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_err_code[1]_i_2 
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(\current_state_reg_n_0_[5] ),
        .O(\tmp_err_code[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF1FFFFFFFFF)) 
    \tmp_err_code[1]_i_3 
       (.I0(\tmp_err_code[1]_i_7_n_0 ),
        .I1(\mem_ret_data_reg_n_0_[0] ),
        .I2(\mem_ret_data_reg_n_0_[3] ),
        .I3(\current_state[1]_i_10_n_0 ),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\tmp_err_code[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F0FFF4F4F0F0F)) 
    \tmp_err_code[1]_i_4 
       (.I0(\tmp_err_code[1]_i_8_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\tmp_err_code[1]_i_9_n_0 ),
        .I4(p_0_in[0]),
        .I5(\current_state[4]_i_3_n_0 ),
        .O(\tmp_err_code[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_err_code[1]_i_5 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[4] ),
        .O(\tmp_err_code[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \tmp_err_code[1]_i_6 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .O(\tmp_err_code[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_err_code[1]_i_7 
       (.I0(\mem_ret_data_reg_n_0_[1] ),
        .I1(\mem_ret_data_reg_n_0_[2] ),
        .O(\tmp_err_code[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \tmp_err_code[1]_i_8 
       (.I0(\mem_ret_data_reg_n_0_[7] ),
        .I1(\tmp_err_code[1]_i_10_n_0 ),
        .I2(\tmp_err_code[1]_i_11_n_0 ),
        .O(\tmp_err_code[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \tmp_err_code[1]_i_9 
       (.I0(\tmp_err_code[1]_i_12_n_0 ),
        .I1(\mem_ret_data_reg_n_0_[7] ),
        .I2(\mem_ret_data_reg_n_0_[1] ),
        .I3(\mem_ret_data_reg_n_0_[0] ),
        .I4(\mem_ret_data_reg_n_0_[4] ),
        .I5(\mem_ret_data_reg_n_0_[3] ),
        .O(\tmp_err_code[1]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_err_code_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_err_code[1]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\tmp_err_code[0]_i_1_n_0 ),
        .Q(\err_code[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_err_code_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_err_code[1]_i_1_n_0 ),
        .CLR(sys_reset_reg_17),
        .D(\tmp_err_code[1]_i_2_n_0 ),
        .Q(\err_code[1] [1]));
  LUT6 #(
    .INIT(64'hABBBBBBBA8888888)) 
    tmp_mem_write_i_1
       (.I0(tmp_mem_write_i_2_n_0),
        .I1(tmp_mem_write_i_3_n_0),
        .I2(tmp_mem_write_i_4_n_0),
        .I3(\cpu_REG[13][7]_i_10_n_0 ),
        .I4(tmp_mem_write_i_5_n_0),
        .I5(mem_write),
        .O(tmp_mem_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h63736363)) 
    tmp_mem_write_i_2
       (.I0(\current_state_reg[3]_rep_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\mem_ret_state[5]_i_13_n_0 ),
        .I4(\current_state_reg_n_0_[5] ),
        .O(tmp_mem_write_i_2_n_0));
  LUT6 #(
    .INIT(64'h0101030301010333)) 
    tmp_mem_write_i_3
       (.I0(tmp_mem_write_i_6_n_0),
        .I1(tmp_mem_write_i_7_n_0),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\mem_ret_state[5]_i_13_n_0 ),
        .I4(\current_state_reg[3]_rep_n_0 ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(tmp_mem_write_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    tmp_mem_write_i_4
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(\current_state_reg_n_0_[4] ),
        .O(tmp_mem_write_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    tmp_mem_write_i_5
       (.I0(n[3]),
        .I1(n[1]),
        .I2(n[0]),
        .I3(n[2]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(Q[1]),
        .O(tmp_mem_write_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h34)) 
    tmp_mem_write_i_6
       (.I0(\mem_ret_state[5]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[2] ),
        .O(tmp_mem_write_i_6_n_0));
  LUT6 #(
    .INIT(64'hCCCCFFFFEDEFFFFD)) 
    tmp_mem_write_i_7
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[5] ),
        .I5(\current_state_reg[3]_rep_n_0 ),
        .O(tmp_mem_write_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tmp_mem_write_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(sys_reset_reg_17),
        .D(tmp_mem_write_i_1_n_0),
        .Q(mem_write));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \x[0]_i_1 
       (.I0(\instruction_high_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(x[0]),
        .O(\x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \x[1]_i_1 
       (.I0(\instruction_high_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(x[0]),
        .I3(x[1]),
        .O(\x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \x[2]_i_1 
       (.I0(\instruction_high_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(x[2]),
        .I3(x[1]),
        .I4(x[0]),
        .O(\x[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000002000)) 
    \x[3]_i_1 
       (.I0(\x[3]_i_3_n_0 ),
        .I1(\x[3]_i_4_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(x0));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \x[3]_i_2 
       (.I0(\instruction_high_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(x[3]),
        .I3(x[2]),
        .I4(x[0]),
        .I5(x[1]),
        .O(\x[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF626262)) 
    \x[3]_i_3 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\current_state_reg_n_0_[5] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(p_0_in[2]),
        .O(\x[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \x[3]_i_4 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(Q[0]),
        .I2(s_sys_reset),
        .O(\x[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(x0),
        .D(\x[0]_i_1_n_0 ),
        .Q(x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(x0),
        .D(\x[1]_i_1_n_0 ),
        .Q(x[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(x0),
        .D(\x[2]_i_1_n_0 ),
        .Q(x[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(x0),
        .D(\x[3]_i_2_n_0 ),
        .Q(x[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000008000808)) 
    \y[3]_i_1 
       (.I0(sys_reset_reg_15),
        .I1(\mem_ret_data[7]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(\y[3]_i_2_n_0 ),
        .O(y0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hBBBF)) 
    \y[3]_i_2 
       (.I0(\current_state_reg_n_0_[5] ),
        .I1(Q[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .O(\y[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(y0),
        .D(\mem_ret_data_reg_n_0_[4] ),
        .Q(y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(y0),
        .D(\mem_ret_data_reg_n_0_[5] ),
        .Q(y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(y0),
        .D(\mem_ret_data_reg_n_0_[6] ),
        .Q(y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(y0),
        .D(\mem_ret_data_reg_n_0_[7] ),
        .Q(y[3]),
        .R(1'b0));
endmodule

module game_rom
   (dataOut,
    clock,
    Q,
    dataIn,
    we);
  output [7:0]dataOut;
  input clock;
  input [15:0]Q;
  input [7:0]dataIn;
  input we;

  wire [15:0]Q;
  wire clock;
  wire [7:0]dataIn;
  wire [7:0]dataOut;
  wire sys_RAM_reg_0_0_n_19;
  wire sys_RAM_reg_0_1_n_19;
  wire sys_RAM_reg_0_2_n_19;
  wire sys_RAM_reg_0_3_n_19;
  wire sys_RAM_reg_0_4_n_19;
  wire sys_RAM_reg_0_5_n_19;
  wire sys_RAM_reg_0_6_n_19;
  wire sys_RAM_reg_0_7_n_19;
  wire we;
  wire NLW_sys_RAM_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_0_0_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_0_1_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_0_2_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_0_3_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_0_4_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_0_5_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_0_6_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_0_7_DIPADIP_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_1_0_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_sys_RAM_reg_1_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_1_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_1_1_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_sys_RAM_reg_1_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_2_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_1_2_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_sys_RAM_reg_1_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_3_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_1_3_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_sys_RAM_reg_1_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_4_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_1_4_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_sys_RAM_reg_1_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_5_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_1_5_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_sys_RAM_reg_1_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_6_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_1_6_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_sys_RAM_reg_1_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_7_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_sys_RAM_reg_1_7_DIPADIP_UNCONNECTED;
  wire [31:1]NLW_sys_RAM_reg_1_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_1_7_RDADDRECC_UNCONNECTED;

  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h00000000000000000000000000000000000000000000000000000000000ACB36),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_0_0
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(sys_RAM_reg_0_0_n_19),
        .CASCADEOUTB(NLW_sys_RAM_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[0]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_sys_RAM_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_sys_RAM_reg_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000001DC85C1),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_0_1
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(sys_RAM_reg_0_1_n_19),
        .CASCADEOUTB(NLW_sys_RAM_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[1]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_sys_RAM_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_sys_RAM_reg_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h00000000000000000000000000000000000000000000000000000000020A85E9),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_0_2
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(sys_RAM_reg_0_2_n_19),
        .CASCADEOUTB(NLW_sys_RAM_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[2]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_sys_RAM_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_sys_RAM_reg_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000008188),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_0_3
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(sys_RAM_reg_0_3_n_19),
        .CASCADEOUTB(NLW_sys_RAM_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[3]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_sys_RAM_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_sys_RAM_reg_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000001D78038),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_0_4
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(sys_RAM_reg_0_4_n_19),
        .CASCADEOUTB(NLW_sys_RAM_reg_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[4]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_sys_RAM_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_sys_RAM_reg_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h000000000000000000000000000000000000000000000000000000000015E49D),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_0_5
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(sys_RAM_reg_0_5_n_19),
        .CASCADEOUTB(NLW_sys_RAM_reg_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[5]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_sys_RAM_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_sys_RAM_reg_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h000000000000000000000000000000000000000000000000000000000007A595),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_0_6
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(sys_RAM_reg_0_6_n_19),
        .CASCADEOUTB(NLW_sys_RAM_reg_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[6]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_sys_RAM_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_sys_RAM_reg_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h000000000000000000000000000000000000000000000000000000000005D050),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_0_7
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(sys_RAM_reg_0_7_n_19),
        .CASCADEOUTB(NLW_sys_RAM_reg_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[7]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_sys_RAM_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_sys_RAM_reg_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_1_0
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(sys_RAM_reg_0_0_n_19),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[0]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_1_0_DOADO_UNCONNECTED[31:1],dataOut[0]}),
        .DOBDO(NLW_sys_RAM_reg_1_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_1_1
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(sys_RAM_reg_0_1_n_19),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[1]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_1_1_DOADO_UNCONNECTED[31:1],dataOut[1]}),
        .DOBDO(NLW_sys_RAM_reg_1_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_1_1_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_1_2
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(sys_RAM_reg_0_2_n_19),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[2]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_1_2_DOADO_UNCONNECTED[31:1],dataOut[2]}),
        .DOBDO(NLW_sys_RAM_reg_1_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_1_2_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_1_3
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(sys_RAM_reg_0_3_n_19),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[3]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_1_3_DOADO_UNCONNECTED[31:1],dataOut[3]}),
        .DOBDO(NLW_sys_RAM_reg_1_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_1_3_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_1_4
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(sys_RAM_reg_0_4_n_19),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[4]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_1_4_DOADO_UNCONNECTED[31:1],dataOut[4]}),
        .DOBDO(NLW_sys_RAM_reg_1_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_1_4_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_1_5
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(sys_RAM_reg_0_5_n_19),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[5]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_1_5_DOADO_UNCONNECTED[31:1],dataOut[5]}),
        .DOBDO(NLW_sys_RAM_reg_1_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_1_5_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_1_6
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(sys_RAM_reg_0_6_n_19),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[6]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_1_6_DOADO_UNCONNECTED[31:1],dataOut[6]}),
        .DOBDO(NLW_sys_RAM_reg_1_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_1_6_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_1_7
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(sys_RAM_reg_0_7_n_19),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[7]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_sys_RAM_reg_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_1_7_DOADO_UNCONNECTED[31:1],dataOut[7]}),
        .DOBDO(NLW_sys_RAM_reg_1_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_1_7_SBITERR_UNCONNECTED),
        .WEA({we,we,we,we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module mem_controller
   (s_sys_reset,
    \y_reg[0] ,
    E,
    \reg_copy_num_reg[0] ,
    \tmp_err_code_reg[0] ,
    \RAND_reg[15]__0_C ,
    \RAND_reg[14]__0_C ,
    \RAND_reg[13]__0_C ,
    \RAND_reg[12]__0_C ,
    \RAND_reg[11]__0_C ,
    \RAND_reg[10]__0_C ,
    \RAND_reg[9]__0_C ,
    \RAND_reg[8]__0_C ,
    \RAND_reg[7]__0_C ,
    \RAND_reg[6]__0_C ,
    \RAND_reg[5]__0_C ,
    \RAND_reg[4]__0_C ,
    \RAND_reg[3]__0_C ,
    \RAND_reg[2]__0_C ,
    \RAND_reg[1]__0_C ,
    \RAND_reg[0]__0_C ,
    \mem_ret_data_reg[7] ,
    \mem_ret_data_reg[7]_0 ,
    mem_done,
    \done_reg[1]_0 ,
    \mapped_out[7] ,
    reset_IBUF,
    clk_IBUF_BUFG,
    Q,
    \current_state_reg[0]_0 ,
    mem_valid_reg,
    mem_valid,
    s_TIME_mem_valid,
    s_TIME_mem_hold,
    \memAddress_reg[11] ,
    s_TIME_mem_write,
    mem_write,
    \memAddress_reg[0] ,
    \memWrite_reg[7] ,
    \memWrite_reg[7]_0 ,
    \RAND_reg[15] ,
    D);
  output s_sys_reset;
  output \y_reg[0] ;
  output [0:0]E;
  output \reg_copy_num_reg[0] ;
  output \tmp_err_code_reg[0] ;
  output \RAND_reg[15]__0_C ;
  output \RAND_reg[14]__0_C ;
  output \RAND_reg[13]__0_C ;
  output \RAND_reg[12]__0_C ;
  output \RAND_reg[11]__0_C ;
  output \RAND_reg[10]__0_C ;
  output \RAND_reg[9]__0_C ;
  output \RAND_reg[8]__0_C ;
  output \RAND_reg[7]__0_C ;
  output \RAND_reg[6]__0_C ;
  output \RAND_reg[5]__0_C ;
  output \RAND_reg[4]__0_C ;
  output \RAND_reg[3]__0_C ;
  output \RAND_reg[2]__0_C ;
  output \RAND_reg[1]__0_C ;
  output \RAND_reg[0]__0_C ;
  output [7:0]\mem_ret_data_reg[7] ;
  output [7:0]\mem_ret_data_reg[7]_0 ;
  output mem_done;
  output \done_reg[1]_0 ;
  output [7:0]\mapped_out[7] ;
  input reset_IBUF;
  input clk_IBUF_BUFG;
  input [1:0]Q;
  input \current_state_reg[0]_0 ;
  input mem_valid_reg;
  input mem_valid;
  input s_TIME_mem_valid;
  input s_TIME_mem_hold;
  input [11:0]\memAddress_reg[11] ;
  input s_TIME_mem_write;
  input mem_write;
  input \memAddress_reg[0] ;
  input [7:0]\memWrite_reg[7] ;
  input [7:0]\memWrite_reg[7]_0 ;
  input [15:0]\RAND_reg[15] ;
  input [3:0]D;

  wire [3:0]D;
  wire [0:0]E;
  wire [1:1]L0_out;
  wire [1:0]Q;
  wire \RAND_reg[0]__0_C ;
  wire \RAND_reg[10]__0_C ;
  wire \RAND_reg[11]__0_C ;
  wire \RAND_reg[12]__0_C ;
  wire \RAND_reg[13]__0_C ;
  wire \RAND_reg[14]__0_C ;
  wire [15:0]\RAND_reg[15] ;
  wire \RAND_reg[15]__0_C ;
  wire \RAND_reg[1]__0_C ;
  wire \RAND_reg[2]__0_C ;
  wire \RAND_reg[3]__0_C ;
  wire \RAND_reg[4]__0_C ;
  wire \RAND_reg[5]__0_C ;
  wire \RAND_reg[6]__0_C ;
  wire \RAND_reg[7]__0_C ;
  wire \RAND_reg[8]__0_C ;
  wire \RAND_reg[9]__0_C ;
  wire clk_IBUF_BUFG;
  wire clock;
  wire \copy_end[11]_i_1_n_0 ;
  wire \copy_end[15]_i_1_n_0 ;
  wire \copy_end[15]_i_2_n_0 ;
  wire \copy_end_reg_n_0_[11] ;
  wire \copy_end_reg_n_0_[12] ;
  wire \copy_end_reg_n_0_[13] ;
  wire \copy_end_reg_n_0_[14] ;
  wire \copy_end_reg_n_0_[15] ;
  wire \copy_return[2]_i_1_n_0 ;
  wire \copy_return_reg_n_0_[2] ;
  wire [16:0]copy_start;
  wire \copy_start[11]_i_1_n_0 ;
  wire \copy_start[16]_i_1_n_0 ;
  wire [16:9]copy_start_0;
  wire [16:0]copy_to;
  wire \copy_to[0]_i_1_n_0 ;
  wire \copy_to[12]_i_1_n_0 ;
  wire \copy_to[16]_i_1_n_0 ;
  wire \copy_to[9]_i_1_n_0 ;
  wire \copy_to_reg[11]_i_1_n_0 ;
  wire \copy_to_reg[11]_i_1_n_1 ;
  wire \copy_to_reg[11]_i_1_n_2 ;
  wire \copy_to_reg[11]_i_1_n_3 ;
  wire \copy_to_reg[11]_i_1_n_4 ;
  wire \copy_to_reg[11]_i_1_n_5 ;
  wire \copy_to_reg[11]_i_1_n_6 ;
  wire \copy_to_reg[11]_i_1_n_7 ;
  wire \copy_to_reg[15]_i_1_n_1 ;
  wire \copy_to_reg[15]_i_1_n_2 ;
  wire \copy_to_reg[15]_i_1_n_3 ;
  wire \copy_to_reg[15]_i_1_n_4 ;
  wire \copy_to_reg[15]_i_1_n_5 ;
  wire \copy_to_reg[15]_i_1_n_6 ;
  wire \copy_to_reg[15]_i_1_n_7 ;
  wire \copy_to_reg[4]_i_1_n_0 ;
  wire \copy_to_reg[4]_i_1_n_1 ;
  wire \copy_to_reg[4]_i_1_n_2 ;
  wire \copy_to_reg[4]_i_1_n_3 ;
  wire \copy_to_reg[4]_i_1_n_4 ;
  wire \copy_to_reg[4]_i_1_n_5 ;
  wire \copy_to_reg[4]_i_1_n_6 ;
  wire \copy_to_reg[4]_i_1_n_7 ;
  wire \copy_to_reg[8]_i_1_n_0 ;
  wire \copy_to_reg[8]_i_1_n_1 ;
  wire \copy_to_reg[8]_i_1_n_2 ;
  wire \copy_to_reg[8]_i_1_n_3 ;
  wire \copy_to_reg[8]_i_1_n_4 ;
  wire \copy_to_reg[8]_i_1_n_5 ;
  wire \copy_to_reg[8]_i_1_n_6 ;
  wire \copy_to_reg[8]_i_1_n_7 ;
  wire \currentGame[3]_i_1_n_0 ;
  wire current_state;
  wire \current_state[0]_i_1__0_n_0 ;
  wire \current_state[0]_i_2__0_n_0 ;
  wire \current_state[0]_i_3__0_n_0 ;
  wire \current_state[1]_i_1__0_n_0 ;
  wire \current_state[1]_i_2__0_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state[2]_i_1__0_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_3__0_n_0 ;
  wire \current_state[3]_i_1__0_n_0 ;
  wire \current_state[3]_i_3__0_n_0 ;
  wire \current_state[3]_i_4__0_n_0 ;
  wire \current_state[4]_i_2__0_n_0 ;
  wire \current_state[4]_i_3__0_n_0 ;
  wire \current_state[4]_i_4__0_n_0 ;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg[3]_i_2_n_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire \current_state_reg_n_0_[3] ;
  wire \current_state_reg_n_0_[4] ;
  wire [15:12]data0;
  wire [16:1]data1;
  wire [0:0]data1__0;
  wire \dataOut[15]_i_1_n_0 ;
  wire \dataOut[15]_i_2_n_0 ;
  wire \dataOut[23]_i_1_n_0 ;
  wire \dataOut[23]_i_2_n_0 ;
  wire \dataOut[23]_i_3_n_0 ;
  wire [7:0]debug_read_data;
  wire \done[1]_i_1_n_0 ;
  wire \done[2]_i_1_n_0 ;
  wire \done[2]_i_2_n_0 ;
  wire \done[2]_i_3_n_0 ;
  wire \done_reg[1]_0 ;
  wire eqOp_inferred__3_carry__0_i_1_n_0;
  wire eqOp_inferred__3_carry__0_i_2_n_0;
  wire eqOp_inferred__3_carry__0_n_2;
  wire eqOp_inferred__3_carry__0_n_3;
  wire eqOp_inferred__3_carry_i_1_n_0;
  wire eqOp_inferred__3_carry_i_2_n_0;
  wire eqOp_inferred__3_carry_i_3_n_0;
  wire eqOp_inferred__3_carry_i_4_n_0;
  wire eqOp_inferred__3_carry_n_0;
  wire eqOp_inferred__3_carry_n_1;
  wire eqOp_inferred__3_carry_n_2;
  wire eqOp_inferred__3_carry_n_3;
  wire init_times;
  wire \init_times[7]_i_3_n_0 ;
  wire [7:0]init_times_reg__0;
  wire [3:0]mapped_out;
  wire \mapped_out[4]_i_1_n_0 ;
  wire \mapped_out[5]_i_1_n_0 ;
  wire \mapped_out[6]_i_1_n_0 ;
  wire [7:0]\mapped_out[7] ;
  wire \mapped_out[7]_i_1_n_0 ;
  wire \mapped_out[7]_i_2_n_0 ;
  wire \mapped_out[7]_i_3_n_0 ;
  wire \mapped_out[7]_i_4_n_0 ;
  wire \mapped_out[7]_i_5_n_0 ;
  wire \mapped_out[7]_i_6_n_0 ;
  wire \mapped_out[7]_i_7_n_0 ;
  wire \memAddress_reg[0] ;
  wire [11:0]\memAddress_reg[11] ;
  wire [3:0]memReturn;
  wire \memReturn[0]_i_1_n_0 ;
  wire \memReturn[1]_i_1_n_0 ;
  wire \memReturn[2]_i_1_n_0 ;
  wire \memReturn[3]_i_1_n_0 ;
  wire [7:0]\memWrite_reg[7] ;
  wire [7:0]\memWrite_reg[7]_0 ;
  wire mem_done;
  wire [7:0]\mem_ret_data_reg[7] ;
  wire [7:0]\mem_ret_data_reg[7]_0 ;
  wire mem_valid;
  wire mem_valid_reg;
  wire mem_write;
  wire \owner[1]_i_1_n_0 ;
  wire \owner[2]_i_1_n_0 ;
  wire \owner[2]_i_2_n_0 ;
  wire \owner[2]_i_3_n_0 ;
  wire \owner[2]_i_4_n_0 ;
  wire \owner_reg_n_0_[1] ;
  wire \owner_reg_n_0_[2] ;
  wire p_0_in;
  wire [7:0]plusOp__0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \reg_copy_num_reg[0] ;
  wire reset_IBUF;
  wire s_TIME_mem_hold;
  wire s_TIME_mem_valid;
  wire s_TIME_mem_write;
  wire [16:0]s_address;
  wire \s_address[0]_i_2_n_0 ;
  wire \s_address[11]_i_2_n_0 ;
  wire \s_address[11]_i_3_n_0 ;
  wire \s_address[16]_i_1_n_0 ;
  wire \s_address[16]_i_3_n_0 ;
  wire \s_address[16]_i_4_n_0 ;
  wire \s_address_reg_n_0_[0] ;
  wire \s_address_reg_n_0_[10] ;
  wire \s_address_reg_n_0_[11] ;
  wire \s_address_reg_n_0_[12] ;
  wire \s_address_reg_n_0_[13] ;
  wire \s_address_reg_n_0_[14] ;
  wire \s_address_reg_n_0_[15] ;
  wire \s_address_reg_n_0_[1] ;
  wire \s_address_reg_n_0_[2] ;
  wire \s_address_reg_n_0_[3] ;
  wire \s_address_reg_n_0_[4] ;
  wire \s_address_reg_n_0_[5] ;
  wire \s_address_reg_n_0_[6] ;
  wire \s_address_reg_n_0_[7] ;
  wire \s_address_reg_n_0_[8] ;
  wire \s_address_reg_n_0_[9] ;
  wire \s_dataIn[0]_i_1_n_0 ;
  wire \s_dataIn[1]_i_1_n_0 ;
  wire \s_dataIn[2]_i_1_n_0 ;
  wire \s_dataIn[3]_i_1_n_0 ;
  wire \s_dataIn[4]_i_1_n_0 ;
  wire \s_dataIn[5]_i_1_n_0 ;
  wire \s_dataIn[6]_i_1_n_0 ;
  wire \s_dataIn[7]_i_1_n_0 ;
  wire \s_dataIn[7]_i_2_n_0 ;
  wire \s_dataIn[7]_i_3_n_0 ;
  wire \s_dataIn_reg_n_0_[0] ;
  wire \s_dataIn_reg_n_0_[1] ;
  wire \s_dataIn_reg_n_0_[2] ;
  wire \s_dataIn_reg_n_0_[3] ;
  wire \s_dataIn_reg_n_0_[4] ;
  wire \s_dataIn_reg_n_0_[5] ;
  wire \s_dataIn_reg_n_0_[6] ;
  wire \s_dataIn_reg_n_0_[7] ;
  wire \s_dataOut[7]_i_1_n_0 ;
  wire \s_dataOut_reg_n_0_[0] ;
  wire \s_dataOut_reg_n_0_[1] ;
  wire \s_dataOut_reg_n_0_[2] ;
  wire \s_dataOut_reg_n_0_[3] ;
  wire \s_dataOut_reg_n_0_[4] ;
  wire \s_dataOut_reg_n_0_[5] ;
  wire \s_dataOut_reg_n_0_[6] ;
  wire \s_dataOut_reg_n_0_[7] ;
  wire s_mem_clock__2;
  wire s_mem_clock_i_1_n_0;
  wire s_mem_we__0;
  wire s_mem_we_i_1_n_0;
  wire s_rom_clock__2;
  wire s_rom_clock_i_1_n_0;
  wire s_rom_clock_reg_n_0;
  wire [7:0]s_rom_dataOut;
  wire s_rom_we_i_1_n_0;
  wire s_rom_we_i_2_n_0;
  wire s_rom_we_reg_n_0;
  wire s_sys_reset;
  wire s_we;
  wire s_we_i_1_n_0;
  wire s_we_i_2_n_0;
  wire s_we_i_3_n_0;
  wire step_active;
  wire step_active_i_1_n_0;
  wire sys_reset_i_1_n_0;
  wire \tmp_err_code_reg[0] ;
  wire we;
  wire \y_reg[0] ;
  wire [3:3]\NLW_copy_to_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_eqOp_inferred__3_carry_O_UNCONNECTED;
  wire [3:2]NLW_eqOp_inferred__3_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_eqOp_inferred__3_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \I[11]_i_1 
       (.I0(s_sys_reset),
        .I1(\current_state_reg[0]_0 ),
        .O(E));
  mem_mod MEM
       (.D(debug_read_data),
        .Q({p_0_in,\s_address_reg_n_0_[12] ,\s_address_reg_n_0_[11] ,\s_address_reg_n_0_[10] ,\s_address_reg_n_0_[9] ,\s_address_reg_n_0_[8] ,\s_address_reg_n_0_[7] ,\s_address_reg_n_0_[6] ,\s_address_reg_n_0_[5] ,\s_address_reg_n_0_[4] ,\s_address_reg_n_0_[3] ,\s_address_reg_n_0_[2] ,\s_address_reg_n_0_[1] ,\s_address_reg_n_0_[0] }),
        .WEA(we),
        .clock(clock),
        .dataIn({\s_dataIn_reg_n_0_[7] ,\s_dataIn_reg_n_0_[6] ,\s_dataIn_reg_n_0_[5] ,\s_dataIn_reg_n_0_[4] ,\s_dataIn_reg_n_0_[3] ,\s_dataIn_reg_n_0_[2] ,\s_dataIn_reg_n_0_[1] ,\s_dataIn_reg_n_0_[0] }),
        .dataOut(s_rom_dataOut));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[0]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [0]),
        .O(\RAND_reg[0]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[10]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [10]),
        .O(\RAND_reg[10]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[11]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [11]),
        .O(\RAND_reg[11]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[12]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [12]),
        .O(\RAND_reg[12]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[13]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [13]),
        .O(\RAND_reg[13]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[14]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [14]),
        .O(\RAND_reg[14]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[15]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [15]),
        .O(\RAND_reg[15]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[1]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [1]),
        .O(\RAND_reg[1]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[2]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [2]),
        .O(\RAND_reg[2]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[3]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [3]),
        .O(\RAND_reg[3]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[4]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [4]),
        .O(\RAND_reg[4]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[5]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [5]),
        .O(\RAND_reg[5]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[6]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [6]),
        .O(\RAND_reg[6]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[7]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [7]),
        .O(\RAND_reg[7]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[8]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [8]),
        .O(\RAND_reg[8]__0_C ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RAND_reg[9]__0_LDC_i_2 
       (.I0(s_sys_reset),
        .I1(\RAND_reg[15] [9]),
        .O(\RAND_reg[9]__0_C ));
  game_rom ROM
       (.Q({\s_address_reg_n_0_[15] ,\s_address_reg_n_0_[14] ,\s_address_reg_n_0_[13] ,\s_address_reg_n_0_[12] ,\s_address_reg_n_0_[11] ,\s_address_reg_n_0_[10] ,\s_address_reg_n_0_[9] ,\s_address_reg_n_0_[8] ,\s_address_reg_n_0_[7] ,\s_address_reg_n_0_[6] ,\s_address_reg_n_0_[5] ,\s_address_reg_n_0_[4] ,\s_address_reg_n_0_[3] ,\s_address_reg_n_0_[2] ,\s_address_reg_n_0_[1] ,\s_address_reg_n_0_[0] }),
        .clock(s_rom_clock_reg_n_0),
        .dataIn({\s_dataIn_reg_n_0_[7] ,\s_dataIn_reg_n_0_[6] ,\s_dataIn_reg_n_0_[5] ,\s_dataIn_reg_n_0_[4] ,\s_dataIn_reg_n_0_[3] ,\s_dataIn_reg_n_0_[2] ,\s_dataIn_reg_n_0_[1] ,\s_dataIn_reg_n_0_[0] }),
        .dataOut(s_rom_dataOut),
        .we(s_rom_we_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \copy_end[11]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\copy_end[15]_i_2_n_0 ),
        .I2(\copy_end_reg_n_0_[11] ),
        .O(\copy_end[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \copy_end[15]_i_1 
       (.I0(reset_IBUF),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(\copy_end[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \copy_end[15]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(reset_IBUF),
        .O(\copy_end[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_end_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\copy_end[11]_i_1_n_0 ),
        .Q(\copy_end_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \copy_end_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_end[15]_i_2_n_0 ),
        .D(data0[12]),
        .Q(\copy_end_reg_n_0_[12] ),
        .R(\copy_end[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_end_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_end[15]_i_2_n_0 ),
        .D(data0[13]),
        .Q(\copy_end_reg_n_0_[13] ),
        .R(\copy_end[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_end_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_end[15]_i_2_n_0 ),
        .D(data0[14]),
        .Q(\copy_end_reg_n_0_[14] ),
        .R(\copy_end[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_end_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_end[15]_i_2_n_0 ),
        .D(data0[15]),
        .Q(\copy_end_reg_n_0_[15] ),
        .R(\copy_end[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \copy_return[2]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\copy_end[15]_i_2_n_0 ),
        .I2(\copy_return_reg_n_0_[2] ),
        .O(\copy_return[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_return_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\copy_return[2]_i_1_n_0 ),
        .Q(\copy_return_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \copy_start[0]_i_1 
       (.I0(copy_start[0]),
        .O(data1__0));
  LUT6 #(
    .INIT(64'h0000000000101000)) 
    \copy_start[11]_i_1 
       (.I0(reset_IBUF),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\copy_start[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \copy_start[12]_i_1 
       (.I0(data1[12]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(data0[12]),
        .O(copy_start_0[12]));
  LUT4 #(
    .INIT(16'hB888)) 
    \copy_start[13]_i_1 
       (.I0(data1[13]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(data0[13]),
        .O(copy_start_0[13]));
  LUT4 #(
    .INIT(16'hB888)) 
    \copy_start[14]_i_1 
       (.I0(data1[14]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(data0[14]),
        .O(copy_start_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \copy_start[15]_i_1 
       (.I0(data1[15]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(data0[15]),
        .O(copy_start_0[15]));
  LUT6 #(
    .INIT(64'h0000000000000160)) 
    \copy_start[16]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(reset_IBUF),
        .O(\copy_start[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \copy_start[16]_i_2 
       (.I0(data1[16]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .O(copy_start_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \copy_start[9]_i_1 
       (.I0(data1[9]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .O(copy_start_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1__0),
        .Q(copy_start[0]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[10]),
        .Q(copy_start[10]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[11]),
        .Q(copy_start[11]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(copy_start_0[12]),
        .Q(copy_start[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(copy_start_0[13]),
        .Q(copy_start[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(copy_start_0[14]),
        .Q(copy_start[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(copy_start_0[15]),
        .Q(copy_start[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(copy_start_0[16]),
        .Q(copy_start[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[1]),
        .Q(copy_start[1]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[2]),
        .Q(copy_start[2]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[3]),
        .Q(copy_start[3]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[4]),
        .Q(copy_start[4]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[5]),
        .Q(copy_start[5]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[6]),
        .Q(copy_start[6]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[7]),
        .Q(copy_start[7]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(data1[8]),
        .Q(copy_start[8]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_start_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(copy_start_0[9]),
        .Q(copy_start[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \copy_to[0]_i_1 
       (.I0(copy_to[0]),
        .O(\copy_to[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAAFCAA)) 
    \copy_to[12]_i_1 
       (.I0(copy_to[12]),
        .I1(\copy_to_reg[11]_i_1_n_4 ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\copy_start[16]_i_1_n_0 ),
        .I4(\current_state_reg_n_0_[1] ),
        .O(\copy_to[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAAFCAA)) 
    \copy_to[16]_i_1 
       (.I0(copy_to[16]),
        .I1(\copy_to_reg[15]_i_1_n_4 ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\copy_start[16]_i_1_n_0 ),
        .I4(\current_state_reg_n_0_[1] ),
        .O(\copy_to[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAAC0AA)) 
    \copy_to[9]_i_1 
       (.I0(copy_to[9]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\copy_to_reg[11]_i_1_n_7 ),
        .I3(\copy_start[16]_i_1_n_0 ),
        .I4(\current_state_reg_n_0_[1] ),
        .O(\copy_to[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to[0]_i_1_n_0 ),
        .Q(copy_to[0]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[11]_i_1_n_6 ),
        .Q(copy_to[10]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[11]_i_1_n_5 ),
        .Q(copy_to[11]),
        .R(\copy_start[11]_i_1_n_0 ));
  CARRY4 \copy_to_reg[11]_i_1 
       (.CI(\copy_to_reg[8]_i_1_n_0 ),
        .CO({\copy_to_reg[11]_i_1_n_0 ,\copy_to_reg[11]_i_1_n_1 ,\copy_to_reg[11]_i_1_n_2 ,\copy_to_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\copy_to_reg[11]_i_1_n_4 ,\copy_to_reg[11]_i_1_n_5 ,\copy_to_reg[11]_i_1_n_6 ,\copy_to_reg[11]_i_1_n_7 }),
        .S(copy_to[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\copy_to[12]_i_1_n_0 ),
        .Q(copy_to[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[15]_i_1_n_7 ),
        .Q(copy_to[13]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[15]_i_1_n_6 ),
        .Q(copy_to[14]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[15]_i_1_n_5 ),
        .Q(copy_to[15]),
        .R(\copy_start[11]_i_1_n_0 ));
  CARRY4 \copy_to_reg[15]_i_1 
       (.CI(\copy_to_reg[11]_i_1_n_0 ),
        .CO({\NLW_copy_to_reg[15]_i_1_CO_UNCONNECTED [3],\copy_to_reg[15]_i_1_n_1 ,\copy_to_reg[15]_i_1_n_2 ,\copy_to_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\copy_to_reg[15]_i_1_n_4 ,\copy_to_reg[15]_i_1_n_5 ,\copy_to_reg[15]_i_1_n_6 ,\copy_to_reg[15]_i_1_n_7 }),
        .S(copy_to[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\copy_to[16]_i_1_n_0 ),
        .Q(copy_to[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[4]_i_1_n_7 ),
        .Q(copy_to[1]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[4]_i_1_n_6 ),
        .Q(copy_to[2]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[4]_i_1_n_5 ),
        .Q(copy_to[3]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[4]_i_1_n_4 ),
        .Q(copy_to[4]),
        .R(\copy_start[11]_i_1_n_0 ));
  CARRY4 \copy_to_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\copy_to_reg[4]_i_1_n_0 ,\copy_to_reg[4]_i_1_n_1 ,\copy_to_reg[4]_i_1_n_2 ,\copy_to_reg[4]_i_1_n_3 }),
        .CYINIT(copy_to[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\copy_to_reg[4]_i_1_n_4 ,\copy_to_reg[4]_i_1_n_5 ,\copy_to_reg[4]_i_1_n_6 ,\copy_to_reg[4]_i_1_n_7 }),
        .S(copy_to[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[8]_i_1_n_7 ),
        .Q(copy_to[5]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[8]_i_1_n_6 ),
        .Q(copy_to[6]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[8]_i_1_n_5 ),
        .Q(copy_to[7]),
        .R(\copy_start[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\copy_start[16]_i_1_n_0 ),
        .D(\copy_to_reg[8]_i_1_n_4 ),
        .Q(copy_to[8]),
        .R(\copy_start[11]_i_1_n_0 ));
  CARRY4 \copy_to_reg[8]_i_1 
       (.CI(\copy_to_reg[4]_i_1_n_0 ),
        .CO({\copy_to_reg[8]_i_1_n_0 ,\copy_to_reg[8]_i_1_n_1 ,\copy_to_reg[8]_i_1_n_2 ,\copy_to_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\copy_to_reg[8]_i_1_n_4 ,\copy_to_reg[8]_i_1_n_5 ,\copy_to_reg[8]_i_1_n_6 ,\copy_to_reg[8]_i_1_n_7 }),
        .S(copy_to[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \copy_to_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\copy_to[9]_i_1_n_0 ),
        .Q(copy_to[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \currentGame[3]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(reset_IBUF),
        .O(\currentGame[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \currentGame_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\currentGame[3]_i_1_n_0 ),
        .D(D[0]),
        .Q(data0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \currentGame_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\currentGame[3]_i_1_n_0 ),
        .D(D[1]),
        .Q(data0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \currentGame_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\currentGame[3]_i_1_n_0 ),
        .D(D[2]),
        .Q(data0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \currentGame_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\currentGame[3]_i_1_n_0 ),
        .D(D[3]),
        .Q(data0[15]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00078807)) 
    \current_state[0]_i_1__0 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state[0]_i_2__0_n_0 ),
        .I5(\current_state[0]_i_3__0_n_0 ),
        .O(\current_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \current_state[0]_i_2__0 
       (.I0(\owner_reg_n_0_[1] ),
        .I1(s_TIME_mem_hold),
        .I2(\owner_reg_n_0_[2] ),
        .O(\current_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h4657464744454445)) 
    \current_state[0]_i_3__0 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(step_active),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(memReturn[0]),
        .O(\current_state[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0020)) 
    \current_state[1]_i_1__0 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(step_active),
        .I2(memReturn[1]),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state[1]_i_2__0_n_0 ),
        .I5(\current_state[1]_i_3_n_0 ),
        .O(\current_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00FFF800)) 
    \current_state[1]_i_2__0 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(memReturn[1]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .O(\current_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hBA00FF0000FF3F00)) 
    \current_state[1]_i_3 
       (.I0(\owner_reg_n_0_[2] ),
        .I1(s_TIME_mem_hold),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(\current_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \current_state[2]_i_1__0 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state[2]_i_3__0_n_0 ),
        .O(\current_state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D000DFF0D00)) 
    \current_state[2]_i_2 
       (.I0(\owner_reg_n_0_[1] ),
        .I1(s_TIME_mem_hold),
        .I2(\owner_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(memReturn[2]),
        .I5(step_active),
        .O(\current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00BA004500)) 
    \current_state[2]_i_3__0 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(memReturn[2]),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\current_state[2]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \current_state[3]_i_1__0 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(step_active),
        .I2(memReturn[3]),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg[3]_i_2_n_0 ),
        .O(\current_state[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB4000)) 
    \current_state[3]_i_3__0 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(s_TIME_mem_hold),
        .I3(\owner_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[3] ),
        .O(\current_state[3]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF7C7C7C)) 
    \current_state[3]_i_4__0 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(memReturn[3]),
        .O(\current_state[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h000500056667FFFF)) 
    \current_state[4]_i_1__0 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state[4]_i_3__0_n_0 ),
        .I5(\current_state_reg_n_0_[4] ),
        .O(current_state));
  LUT6 #(
    .INIT(64'h0202020003000300)) 
    \current_state[4]_i_2__0 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(step_active),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\current_state[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h201020102010201F)) 
    \current_state[4]_i_3__0 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state[4]_i_4__0_n_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(mem_valid),
        .I5(s_TIME_mem_valid),
        .O(\current_state[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h452A557F7F7F7F7F)) 
    \current_state[4]_i_4__0 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(mem_valid),
        .I2(\owner_reg_n_0_[2] ),
        .I3(s_TIME_mem_valid),
        .I4(s_TIME_mem_hold),
        .I5(\owner_reg_n_0_[1] ),
        .O(\current_state[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_state[5]_i_3 
       (.I0(s_sys_reset),
        .O(\tmp_err_code_reg[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(reset_IBUF),
        .D(\current_state[0]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(reset_IBUF),
        .D(\current_state[1]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(reset_IBUF),
        .D(\current_state[2]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(reset_IBUF),
        .D(\current_state[3]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[3] ));
  MUXF7 \current_state_reg[3]_i_2 
       (.I0(\current_state[3]_i_3__0_n_0 ),
        .I1(\current_state[3]_i_4__0_n_0 ),
        .O(\current_state_reg[3]_i_2_n_0 ),
        .S(\current_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .CLR(reset_IBUF),
        .D(\current_state[4]_i_2__0_n_0 ),
        .Q(\current_state_reg_n_0_[4] ));
  LUT3 #(
    .INIT(8'h02)) 
    \dataOut[15]_i_1 
       (.I0(\dataOut[23]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .O(\dataOut[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02028202)) 
    \dataOut[15]_i_2 
       (.I0(\dataOut[23]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\owner_reg_n_0_[1] ),
        .I4(\owner_reg_n_0_[2] ),
        .O(\dataOut[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \dataOut[23]_i_1 
       (.I0(\dataOut[23]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .O(\dataOut[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02820202)) 
    \dataOut[23]_i_2 
       (.I0(\dataOut[23]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\owner_reg_n_0_[1] ),
        .I4(\owner_reg_n_0_[2] ),
        .O(\dataOut[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \dataOut[23]_i_3 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(reset_IBUF),
        .O(\dataOut[23]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[15]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[2] ),
        .Q(\mem_ret_data_reg[7]_0 [2]),
        .R(\dataOut[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[15]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[3] ),
        .Q(\mem_ret_data_reg[7]_0 [3]),
        .R(\dataOut[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[15]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[4] ),
        .Q(\mem_ret_data_reg[7]_0 [4]),
        .R(\dataOut[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[15]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[5] ),
        .Q(\mem_ret_data_reg[7]_0 [5]),
        .R(\dataOut[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[15]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[6] ),
        .Q(\mem_ret_data_reg[7]_0 [6]),
        .R(\dataOut[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[15]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[7] ),
        .Q(\mem_ret_data_reg[7]_0 [7]),
        .R(\dataOut[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[23]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[0] ),
        .Q(\mem_ret_data_reg[7] [0]),
        .R(\dataOut[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[23]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[1] ),
        .Q(\mem_ret_data_reg[7] [1]),
        .R(\dataOut[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[23]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[2] ),
        .Q(\mem_ret_data_reg[7] [2]),
        .R(\dataOut[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[23]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[3] ),
        .Q(\mem_ret_data_reg[7] [3]),
        .R(\dataOut[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[23]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[4] ),
        .Q(\mem_ret_data_reg[7] [4]),
        .R(\dataOut[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[23]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[5] ),
        .Q(\mem_ret_data_reg[7] [5]),
        .R(\dataOut[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[23]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[6] ),
        .Q(\mem_ret_data_reg[7] [6]),
        .R(\dataOut[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[23]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[7] ),
        .Q(\mem_ret_data_reg[7] [7]),
        .R(\dataOut[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[15]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[0] ),
        .Q(\mem_ret_data_reg[7]_0 [0]),
        .R(\dataOut[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\dataOut[15]_i_2_n_0 ),
        .D(\s_dataOut_reg_n_0_[1] ),
        .Q(\mem_ret_data_reg[7]_0 [1]),
        .R(\dataOut[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \done[1]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\owner_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\done[2]_i_2_n_0 ),
        .I4(\done_reg[1]_0 ),
        .O(\done[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \done[2]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\owner_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\done[2]_i_2_n_0 ),
        .I4(mem_done),
        .O(\done[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000081)) 
    \done[2]_i_2 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\done[2]_i_3_n_0 ),
        .I5(reset_IBUF),
        .O(\done[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA808080AAAAAAAA)) 
    \done[2]_i_3 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(mem_valid),
        .I2(\owner_reg_n_0_[2] ),
        .I3(s_TIME_mem_valid),
        .I4(\owner_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(\done[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\done[1]_i_1_n_0 ),
        .Q(\done_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\done[2]_i_1_n_0 ),
        .Q(mem_done),
        .R(1'b0));
  CARRY4 eqOp_inferred__3_carry
       (.CI(1'b0),
        .CO({eqOp_inferred__3_carry_n_0,eqOp_inferred__3_carry_n_1,eqOp_inferred__3_carry_n_2,eqOp_inferred__3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_inferred__3_carry_O_UNCONNECTED[3:0]),
        .S({eqOp_inferred__3_carry_i_1_n_0,eqOp_inferred__3_carry_i_2_n_0,eqOp_inferred__3_carry_i_3_n_0,eqOp_inferred__3_carry_i_4_n_0}));
  CARRY4 eqOp_inferred__3_carry__0
       (.CI(eqOp_inferred__3_carry_n_0),
        .CO({NLW_eqOp_inferred__3_carry__0_CO_UNCONNECTED[3:2],eqOp_inferred__3_carry__0_n_2,eqOp_inferred__3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_inferred__3_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,eqOp_inferred__3_carry__0_i_1_n_0,eqOp_inferred__3_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    eqOp_inferred__3_carry__0_i_1
       (.I0(copy_start[15]),
        .I1(\copy_end_reg_n_0_[15] ),
        .I2(copy_start[16]),
        .I3(\copy_return_reg_n_0_[2] ),
        .O(eqOp_inferred__3_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_inferred__3_carry__0_i_2
       (.I0(copy_start[12]),
        .I1(\copy_end_reg_n_0_[12] ),
        .I2(\copy_end_reg_n_0_[14] ),
        .I3(copy_start[14]),
        .I4(\copy_end_reg_n_0_[13] ),
        .I5(copy_start[13]),
        .O(eqOp_inferred__3_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h8001)) 
    eqOp_inferred__3_carry_i_1
       (.I0(copy_start[9]),
        .I1(\copy_end_reg_n_0_[11] ),
        .I2(copy_start[11]),
        .I3(copy_start[10]),
        .O(eqOp_inferred__3_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    eqOp_inferred__3_carry_i_2
       (.I0(copy_start[6]),
        .I1(copy_start[8]),
        .I2(copy_start[7]),
        .O(eqOp_inferred__3_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    eqOp_inferred__3_carry_i_3
       (.I0(copy_start[3]),
        .I1(copy_start[5]),
        .I2(copy_start[4]),
        .O(eqOp_inferred__3_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    eqOp_inferred__3_carry_i_4
       (.I0(copy_start[0]),
        .I1(copy_start[2]),
        .I2(copy_start[1]),
        .O(eqOp_inferred__3_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \init_times[0]_i_1 
       (.I0(init_times_reg__0[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_times[1]_i_1 
       (.I0(init_times_reg__0[0]),
        .I1(init_times_reg__0[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_times[2]_i_1 
       (.I0(init_times_reg__0[0]),
        .I1(init_times_reg__0[1]),
        .I2(init_times_reg__0[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_times[3]_i_1 
       (.I0(init_times_reg__0[1]),
        .I1(init_times_reg__0[0]),
        .I2(init_times_reg__0[2]),
        .I3(init_times_reg__0[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_times[4]_i_1 
       (.I0(init_times_reg__0[2]),
        .I1(init_times_reg__0[0]),
        .I2(init_times_reg__0[1]),
        .I3(init_times_reg__0[3]),
        .I4(init_times_reg__0[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_times[5]_i_1 
       (.I0(init_times_reg__0[3]),
        .I1(init_times_reg__0[1]),
        .I2(init_times_reg__0[0]),
        .I3(init_times_reg__0[2]),
        .I4(init_times_reg__0[4]),
        .I5(init_times_reg__0[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_times[6]_i_1 
       (.I0(\init_times[7]_i_3_n_0 ),
        .I1(init_times_reg__0[6]),
        .O(plusOp__0[6]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \init_times[7]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[2] ),
        .O(init_times));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_times[7]_i_2 
       (.I0(\init_times[7]_i_3_n_0 ),
        .I1(init_times_reg__0[6]),
        .I2(init_times_reg__0[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \init_times[7]_i_3 
       (.I0(init_times_reg__0[5]),
        .I1(init_times_reg__0[3]),
        .I2(init_times_reg__0[1]),
        .I3(init_times_reg__0[0]),
        .I4(init_times_reg__0[2]),
        .I5(init_times_reg__0[4]),
        .O(\init_times[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_times_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(init_times),
        .CLR(reset_IBUF),
        .D(plusOp__0[0]),
        .Q(init_times_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_times_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(init_times),
        .CLR(reset_IBUF),
        .D(plusOp__0[1]),
        .Q(init_times_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_times_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(init_times),
        .CLR(reset_IBUF),
        .D(plusOp__0[2]),
        .Q(init_times_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_times_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(init_times),
        .CLR(reset_IBUF),
        .D(plusOp__0[3]),
        .Q(init_times_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_times_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(init_times),
        .CLR(reset_IBUF),
        .D(plusOp__0[4]),
        .Q(init_times_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_times_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(init_times),
        .CLR(reset_IBUF),
        .D(plusOp__0[5]),
        .Q(init_times_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_times_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(init_times),
        .CLR(reset_IBUF),
        .D(plusOp__0[6]),
        .Q(init_times_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_times_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(init_times),
        .CLR(reset_IBUF),
        .D(plusOp__0[7]),
        .Q(init_times_reg__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \key_counter[3]_i_3 
       (.I0(s_sys_reset),
        .I1(Q[0]),
        .O(\y_reg[0] ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \mapped_out[0]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(init_times_reg__0[0]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\s_dataIn_reg_n_0_[0] ),
        .O(mapped_out[0]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \mapped_out[1]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(init_times_reg__0[1]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\s_dataIn_reg_n_0_[1] ),
        .O(mapped_out[1]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \mapped_out[2]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(init_times_reg__0[2]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\s_dataIn_reg_n_0_[2] ),
        .O(mapped_out[2]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \mapped_out[3]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(init_times_reg__0[3]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\s_dataIn_reg_n_0_[3] ),
        .O(mapped_out[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \mapped_out[4]_i_1 
       (.I0(init_times_reg__0[4]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\s_dataIn_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[4] ),
        .O(\mapped_out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \mapped_out[5]_i_1 
       (.I0(init_times_reg__0[5]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\s_dataIn_reg_n_0_[5] ),
        .I3(\current_state_reg_n_0_[4] ),
        .O(\mapped_out[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \mapped_out[6]_i_1 
       (.I0(init_times_reg__0[6]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\s_dataIn_reg_n_0_[6] ),
        .I3(\current_state_reg_n_0_[4] ),
        .O(\mapped_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FC00FC83)) 
    \mapped_out[7]_i_1 
       (.I0(\mapped_out[7]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\mapped_out[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \mapped_out[7]_i_2 
       (.I0(init_times_reg__0[7]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\s_dataIn_reg_n_0_[7] ),
        .I3(\current_state_reg_n_0_[4] ),
        .O(\mapped_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \mapped_out[7]_i_3 
       (.I0(\s_address_reg_n_0_[15] ),
        .I1(\s_address_reg_n_0_[14] ),
        .I2(\mapped_out[7]_i_4_n_0 ),
        .I3(\mapped_out[7]_i_5_n_0 ),
        .I4(\mapped_out[7]_i_6_n_0 ),
        .I5(\mapped_out[7]_i_7_n_0 ),
        .O(\mapped_out[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mapped_out[7]_i_4 
       (.I0(\s_address_reg_n_0_[4] ),
        .I1(\s_address_reg_n_0_[5] ),
        .I2(\s_address_reg_n_0_[2] ),
        .I3(\s_address_reg_n_0_[3] ),
        .O(\mapped_out[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mapped_out[7]_i_5 
       (.I0(\s_address_reg_n_0_[0] ),
        .I1(\s_address_reg_n_0_[1] ),
        .I2(p_0_in),
        .I3(s_we),
        .O(\mapped_out[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mapped_out[7]_i_6 
       (.I0(\s_address_reg_n_0_[9] ),
        .I1(\s_address_reg_n_0_[13] ),
        .I2(\s_address_reg_n_0_[10] ),
        .I3(\s_address_reg_n_0_[11] ),
        .O(\mapped_out[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mapped_out[7]_i_7 
       (.I0(\s_address_reg_n_0_[8] ),
        .I1(\s_address_reg_n_0_[12] ),
        .I2(\s_address_reg_n_0_[6] ),
        .I3(\s_address_reg_n_0_[7] ),
        .O(\mapped_out[7]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mapped_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mapped_out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(mapped_out[0]),
        .Q(\mapped_out[7] [0]));
  FDPE #(
    .INIT(1'b1)) 
    \mapped_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mapped_out[7]_i_1_n_0 ),
        .D(mapped_out[1]),
        .PRE(reset_IBUF),
        .Q(\mapped_out[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mapped_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mapped_out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(mapped_out[2]),
        .Q(\mapped_out[7] [2]));
  FDPE #(
    .INIT(1'b1)) 
    \mapped_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mapped_out[7]_i_1_n_0 ),
        .D(mapped_out[3]),
        .PRE(reset_IBUF),
        .Q(\mapped_out[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mapped_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mapped_out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\mapped_out[4]_i_1_n_0 ),
        .Q(\mapped_out[7] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \mapped_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\mapped_out[7]_i_1_n_0 ),
        .D(\mapped_out[5]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\mapped_out[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mapped_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mapped_out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\mapped_out[6]_i_1_n_0 ),
        .Q(\mapped_out[7] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \mapped_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mapped_out[7]_i_1_n_0 ),
        .D(\mapped_out[7]_i_2_n_0 ),
        .PRE(reset_IBUF),
        .Q(\mapped_out[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \memReturn[0]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(eqOp_inferred__3_carry__0_n_2),
        .O(\memReturn[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \memReturn[1]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .O(\memReturn[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5455)) 
    \memReturn[2]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\copy_return_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(eqOp_inferred__3_carry__0_n_2),
        .O(\memReturn[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000030080)) 
    \memReturn[3]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(reset_IBUF),
        .O(\memReturn[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \memReturn_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\memReturn[3]_i_1_n_0 ),
        .D(\memReturn[0]_i_1_n_0 ),
        .Q(memReturn[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \memReturn_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\memReturn[3]_i_1_n_0 ),
        .D(\memReturn[1]_i_1_n_0 ),
        .Q(memReturn[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \memReturn_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\memReturn[3]_i_1_n_0 ),
        .D(\memReturn[2]_i_1_n_0 ),
        .Q(memReturn[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \memReturn_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\memReturn[3]_i_1_n_0 ),
        .D(\current_state_reg_n_0_[0] ),
        .Q(memReturn[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \owner[1]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(s_TIME_mem_valid),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\owner[2]_i_2_n_0 ),
        .I4(\owner_reg_n_0_[1] ),
        .O(\owner[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \owner[2]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(s_TIME_mem_valid),
        .I3(\owner[2]_i_2_n_0 ),
        .I4(\owner_reg_n_0_[2] ),
        .O(\owner[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000202222)) 
    \owner[2]_i_2 
       (.I0(\owner[2]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\owner[2]_i_4_n_0 ),
        .I3(\current_state[0]_i_2__0_n_0 ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(reset_IBUF),
        .O(\owner[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0004050A0054050)) 
    \owner[2]_i_3 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(mem_valid_reg),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(L0_out),
        .O(\owner[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \owner[2]_i_4 
       (.I0(mem_valid),
        .I1(\owner_reg_n_0_[2] ),
        .I2(s_TIME_mem_valid),
        .I3(\owner_reg_n_0_[1] ),
        .O(\owner[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \owner[2]_i_6 
       (.I0(\owner_reg_n_0_[1] ),
        .I1(s_TIME_mem_hold),
        .O(L0_out));
  FDRE #(
    .INIT(1'b0)) 
    \owner_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\owner[1]_i_1_n_0 ),
        .Q(\owner_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \owner_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\owner[2]_i_1_n_0 ),
        .Q(\owner_reg_n_0_[2] ),
        .R(1'b0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(copy_start[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[4:1]),
        .S(copy_start[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[8:5]),
        .S(copy_start[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[12:9]),
        .S(copy_start[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3],plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data1[16:13]),
        .S(copy_start[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_copy_num[3]_i_3 
       (.I0(s_sys_reset),
        .I1(Q[1]),
        .O(\reg_copy_num_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFC0A0A0C0C0)) 
    \s_address[0]_i_1 
       (.I0(\s_address[0]_i_2_n_0 ),
        .I1(copy_to[0]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(copy_start[0]),
        .O(s_address[0]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \s_address[0]_i_2 
       (.I0(\memAddress_reg[0] ),
        .I1(\memAddress_reg[11] [0]),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\owner_reg_n_0_[2] ),
        .O(\s_address[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[10]_i_1 
       (.I0(\memAddress_reg[11] [10]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[10]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[10]),
        .O(s_address[10]));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[11]_i_1 
       (.I0(\memAddress_reg[11] [11]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[11]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[11]),
        .O(s_address[11]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_address[11]_i_2 
       (.I0(\owner_reg_n_0_[1] ),
        .I1(\owner_reg_n_0_[2] ),
        .O(\s_address[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_address[11]_i_3 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .O(\s_address[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCB8CC88)) 
    \s_address[12]_i_1 
       (.I0(copy_to[12]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(copy_start[12]),
        .O(s_address[12]));
  LUT5 #(
    .INIT(32'h30B80088)) 
    \s_address[13]_i_1 
       (.I0(copy_to[13]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(copy_start[13]),
        .O(s_address[13]));
  LUT5 #(
    .INIT(32'h30B80088)) 
    \s_address[14]_i_1 
       (.I0(copy_to[14]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(copy_start[14]),
        .O(s_address[14]));
  LUT5 #(
    .INIT(32'h30B80088)) 
    \s_address[15]_i_1 
       (.I0(copy_to[15]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(copy_start[15]),
        .O(s_address[15]));
  LUT6 #(
    .INIT(64'h000000000000009F)) 
    \s_address[16]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\s_address[16]_i_3_n_0 ),
        .I3(\s_address[16]_i_4_n_0 ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(reset_IBUF),
        .O(\s_address[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hFCB8CC88)) 
    \s_address[16]_i_2 
       (.I0(copy_to[16]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(copy_start[16]),
        .O(s_address[16]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \s_address[16]_i_3 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\owner_reg_n_0_[2] ),
        .I2(\owner_reg_n_0_[1] ),
        .O(\s_address[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \s_address[16]_i_4 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .O(\s_address[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[1]_i_1 
       (.I0(\memAddress_reg[11] [1]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[1]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[1]),
        .O(s_address[1]));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[2]_i_1 
       (.I0(\memAddress_reg[11] [2]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[2]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[2]),
        .O(s_address[2]));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[3]_i_1 
       (.I0(\memAddress_reg[11] [3]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[3]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[3]),
        .O(s_address[3]));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[4]_i_1 
       (.I0(\memAddress_reg[11] [4]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[4]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[4]),
        .O(s_address[4]));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[5]_i_1 
       (.I0(\memAddress_reg[11] [5]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[5]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[5]),
        .O(s_address[5]));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[6]_i_1 
       (.I0(\memAddress_reg[11] [6]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[6]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[6]),
        .O(s_address[6]));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[7]_i_1 
       (.I0(\memAddress_reg[11] [7]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[7]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[7]),
        .O(s_address[7]));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[8]_i_1 
       (.I0(\memAddress_reg[11] [8]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[8]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[8]),
        .O(s_address[8]));
  LUT6 #(
    .INIT(64'h22FFF0002200F000)) 
    \s_address[9]_i_1 
       (.I0(\memAddress_reg[11] [9]),
        .I1(\s_address[11]_i_2_n_0 ),
        .I2(copy_to[9]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\s_address[11]_i_3_n_0 ),
        .I5(copy_start[9]),
        .O(s_address[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[0]),
        .Q(\s_address_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[10]),
        .Q(\s_address_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[11]),
        .Q(\s_address_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[12]),
        .Q(\s_address_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[13]),
        .Q(\s_address_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[14]),
        .Q(\s_address_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[15]),
        .Q(\s_address_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[16]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[1]),
        .Q(\s_address_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[2]),
        .Q(\s_address_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[3]),
        .Q(\s_address_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[4]),
        .Q(\s_address_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[5]),
        .Q(\s_address_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[6]),
        .Q(\s_address_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[7]),
        .Q(\s_address_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[8]),
        .Q(\s_address_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_address_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_address[16]_i_1_n_0 ),
        .D(s_address[9]),
        .Q(\s_address_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCACFFFFCCAC0000)) 
    \s_dataIn[0]_i_1 
       (.I0(\memWrite_reg[7] [0]),
        .I1(\memWrite_reg[7]_0 [0]),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\owner_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\s_dataOut_reg_n_0_[0] ),
        .O(\s_dataIn[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCACFFFFCCAC0000)) 
    \s_dataIn[1]_i_1 
       (.I0(\memWrite_reg[7] [1]),
        .I1(\memWrite_reg[7]_0 [1]),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\owner_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\s_dataOut_reg_n_0_[1] ),
        .O(\s_dataIn[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCACFFFFCCAC0000)) 
    \s_dataIn[2]_i_1 
       (.I0(\memWrite_reg[7] [2]),
        .I1(\memWrite_reg[7]_0 [2]),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\owner_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\s_dataOut_reg_n_0_[2] ),
        .O(\s_dataIn[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCACFFFFCCAC0000)) 
    \s_dataIn[3]_i_1 
       (.I0(\memWrite_reg[7] [3]),
        .I1(\memWrite_reg[7]_0 [3]),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\owner_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\s_dataOut_reg_n_0_[3] ),
        .O(\s_dataIn[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCACFFFFCCAC0000)) 
    \s_dataIn[4]_i_1 
       (.I0(\memWrite_reg[7] [4]),
        .I1(\memWrite_reg[7]_0 [4]),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\owner_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\s_dataOut_reg_n_0_[4] ),
        .O(\s_dataIn[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCACFFFFCCAC0000)) 
    \s_dataIn[5]_i_1 
       (.I0(\memWrite_reg[7] [5]),
        .I1(\memWrite_reg[7]_0 [5]),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\owner_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\s_dataOut_reg_n_0_[5] ),
        .O(\s_dataIn[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCACFFFFCCAC0000)) 
    \s_dataIn[6]_i_1 
       (.I0(\memWrite_reg[7] [6]),
        .I1(\memWrite_reg[7]_0 [6]),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\owner_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\s_dataOut_reg_n_0_[6] ),
        .O(\s_dataIn[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_dataIn[7]_i_1 
       (.I0(\s_dataIn[7]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .O(\s_dataIn[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \s_dataIn[7]_i_2 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\s_address[16]_i_3_n_0 ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(reset_IBUF),
        .O(\s_dataIn[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCACFFFFCCAC0000)) 
    \s_dataIn[7]_i_3 
       (.I0(\memWrite_reg[7] [7]),
        .I1(\memWrite_reg[7]_0 [7]),
        .I2(\owner_reg_n_0_[1] ),
        .I3(\owner_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\s_dataOut_reg_n_0_[7] ),
        .O(\s_dataIn[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataIn_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataIn[7]_i_2_n_0 ),
        .D(\s_dataIn[0]_i_1_n_0 ),
        .Q(\s_dataIn_reg_n_0_[0] ),
        .R(\s_dataIn[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataIn_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataIn[7]_i_2_n_0 ),
        .D(\s_dataIn[1]_i_1_n_0 ),
        .Q(\s_dataIn_reg_n_0_[1] ),
        .R(\s_dataIn[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataIn_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataIn[7]_i_2_n_0 ),
        .D(\s_dataIn[2]_i_1_n_0 ),
        .Q(\s_dataIn_reg_n_0_[2] ),
        .R(\s_dataIn[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataIn_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataIn[7]_i_2_n_0 ),
        .D(\s_dataIn[3]_i_1_n_0 ),
        .Q(\s_dataIn_reg_n_0_[3] ),
        .R(\s_dataIn[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataIn_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataIn[7]_i_2_n_0 ),
        .D(\s_dataIn[4]_i_1_n_0 ),
        .Q(\s_dataIn_reg_n_0_[4] ),
        .R(\s_dataIn[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataIn_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataIn[7]_i_2_n_0 ),
        .D(\s_dataIn[5]_i_1_n_0 ),
        .Q(\s_dataIn_reg_n_0_[5] ),
        .R(\s_dataIn[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataIn_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataIn[7]_i_2_n_0 ),
        .D(\s_dataIn[6]_i_1_n_0 ),
        .Q(\s_dataIn_reg_n_0_[6] ),
        .R(\s_dataIn[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataIn_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataIn[7]_i_2_n_0 ),
        .D(\s_dataIn[7]_i_3_n_0 ),
        .Q(\s_dataIn_reg_n_0_[7] ),
        .R(\s_dataIn[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \s_dataOut[7]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(reset_IBUF),
        .O(\s_dataOut[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataOut_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataOut[7]_i_1_n_0 ),
        .D(debug_read_data[0]),
        .Q(\s_dataOut_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataOut_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataOut[7]_i_1_n_0 ),
        .D(debug_read_data[1]),
        .Q(\s_dataOut_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataOut_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataOut[7]_i_1_n_0 ),
        .D(debug_read_data[2]),
        .Q(\s_dataOut_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataOut_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataOut[7]_i_1_n_0 ),
        .D(debug_read_data[3]),
        .Q(\s_dataOut_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataOut_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataOut[7]_i_1_n_0 ),
        .D(debug_read_data[4]),
        .Q(\s_dataOut_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataOut_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataOut[7]_i_1_n_0 ),
        .D(debug_read_data[5]),
        .Q(\s_dataOut_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataOut_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataOut[7]_i_1_n_0 ),
        .D(debug_read_data[6]),
        .Q(\s_dataOut_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dataOut_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\s_dataOut[7]_i_1_n_0 ),
        .D(debug_read_data[7]),
        .Q(\s_dataOut_reg_n_0_[7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    s_mem_clock_i_1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(s_mem_clock__2),
        .I3(reset_IBUF),
        .I4(clock),
        .O(s_mem_clock_i_1_n_0));
  LUT6 #(
    .INIT(64'h1000100000000011)) 
    s_mem_clock_i_2
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(p_0_in),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(s_mem_clock__2));
  FDRE #(
    .INIT(1'b0)) 
    s_mem_clock_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_mem_clock_i_1_n_0),
        .Q(clock),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    s_mem_we_i_1
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(s_we),
        .I2(s_mem_we__0),
        .I3(reset_IBUF),
        .I4(we),
        .O(s_mem_we_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100000100000001)) 
    s_mem_we_i_2
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(s_mem_we__0));
  FDRE #(
    .INIT(1'b0)) 
    s_mem_we_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_mem_we_i_1_n_0),
        .Q(we),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    s_rom_clock_i_1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(s_rom_clock__2),
        .I2(reset_IBUF),
        .I3(s_rom_clock_reg_n_0),
        .O(s_rom_clock_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100010000000011)) 
    s_rom_clock_i_2
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(p_0_in),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(s_rom_clock__2));
  FDRE #(
    .INIT(1'b0)) 
    s_rom_clock_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_rom_clock_i_1_n_0),
        .Q(s_rom_clock_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    s_rom_we_i_1
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(s_we),
        .I2(s_rom_we_i_2_n_0),
        .I3(reset_IBUF),
        .I4(s_rom_we_reg_n_0),
        .O(s_rom_we_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000101000001)) 
    s_rom_we_i_2
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(s_rom_we_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_rom_we_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_rom_we_i_1_n_0),
        .Q(s_rom_we_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    s_we_i_1
       (.I0(s_we_i_2_n_0),
        .I1(s_we_i_3_n_0),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(reset_IBUF),
        .I4(s_we),
        .O(s_we_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAA2AA2222A222)) 
    s_we_i_2
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(s_TIME_mem_write),
        .I3(\owner_reg_n_0_[1] ),
        .I4(\owner_reg_n_0_[2] ),
        .I5(mem_write),
        .O(s_we_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF900FFFFFF0)) 
    s_we_i_3
       (.I0(\owner_reg_n_0_[2] ),
        .I1(\owner_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(s_we_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_we_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_we_i_1_n_0),
        .Q(s_we),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    step_active_i_1
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(reset_IBUF),
        .O(step_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    step_active_reg
       (.C(clk_IBUF_BUFG),
        .CE(step_active_i_1_n_0),
        .D(reset_IBUF),
        .Q(step_active),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    sys_reset_i_1
       (.I0(s_sys_reset),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(sys_reset_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sys_reset_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sys_reset_i_1_n_0),
        .PRE(reset_IBUF),
        .Q(s_sys_reset));
endmodule

module mem_mod
   (D,
    dataOut,
    Q,
    clock,
    dataIn,
    WEA);
  output [7:0]D;
  input [7:0]dataOut;
  input [13:0]Q;
  input clock;
  input [7:0]dataIn;
  input [0:0]WEA;

  wire [7:0]D;
  wire [13:0]Q;
  wire [0:0]WEA;
  wire clock;
  wire [7:0]dataIn;
  wire [7:0]dataOut;
  wire [7:0]s_mem_dataOut;
  wire NLW_sys_RAM_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_0_SBITERR_UNCONNECTED;
  wire [31:4]NLW_sys_RAM_reg_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_DBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_sys_RAM_reg_1_SBITERR_UNCONNECTED;
  wire [31:4]NLW_sys_RAM_reg_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_sys_RAM_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_sys_RAM_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_sys_RAM_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_sys_RAM_reg_1_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s_dataOut[0]_i_1 
       (.I0(s_mem_dataOut[0]),
        .I1(dataOut[0]),
        .I2(Q[13]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s_dataOut[1]_i_1 
       (.I0(s_mem_dataOut[1]),
        .I1(dataOut[1]),
        .I2(Q[13]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s_dataOut[2]_i_1 
       (.I0(s_mem_dataOut[2]),
        .I1(dataOut[2]),
        .I2(Q[13]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s_dataOut[3]_i_1 
       (.I0(s_mem_dataOut[3]),
        .I1(dataOut[3]),
        .I2(Q[13]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s_dataOut[4]_i_1 
       (.I0(s_mem_dataOut[4]),
        .I1(dataOut[4]),
        .I2(Q[13]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s_dataOut[5]_i_1 
       (.I0(s_mem_dataOut[5]),
        .I1(dataOut[5]),
        .I2(Q[13]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s_dataOut[6]_i_1 
       (.I0(s_mem_dataOut[6]),
        .I1(dataOut[6]),
        .I2(Q[13]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s_dataOut[7]_i_2 
       (.I0(s_mem_dataOut[7]),
        .I1(dataOut[7]),
        .I2(Q[13]),
        .O(D[7]));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'hA000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_0
       (.ADDRARDADDR({1'b1,Q[12:0],1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[3:0]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_0_DOADO_UNCONNECTED[31:4],s_mem_dataOut[3:0]}),
        .DOBDO(NLW_sys_RAM_reg_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_0_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "sys_RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8FE9E9E99F9FF1F9FF9F9F4421FF9F8FF1F8F11F99F1F1FF8F1F72262F999F00),
    .INIT_01(256'h000000000000000000000000000000000000000000000088F8FF8F8FE999EF88),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'hA000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(0)) 
    sys_RAM_reg_1
       (.ADDRARDADDR({1'b1,Q[12:0],1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_sys_RAM_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_sys_RAM_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_sys_RAM_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dataIn[7:4]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_sys_RAM_reg_1_DOADO_UNCONNECTED[31:4],s_mem_dataOut[7:4]}),
        .DOBDO(NLW_sys_RAM_reg_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_sys_RAM_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_sys_RAM_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_sys_RAM_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_sys_RAM_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_sys_RAM_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_sys_RAM_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_sys_RAM_reg_1_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module time_keeper
   (buzz_OBUF,
    s_TIME_mem_valid,
    \memAddress_reg[0]_0 ,
    s_TIME_mem_write,
    s_TIME_mem_hold,
    \owner_reg[1] ,
    Q,
    \s_dataIn_reg[7] ,
    clk_IBUF_BUFG,
    s_sys_reset,
    mem_valid,
    \done_reg[1] ,
    D);
  output buzz_OBUF;
  output s_TIME_mem_valid;
  output \memAddress_reg[0]_0 ;
  output s_TIME_mem_write;
  output s_TIME_mem_hold;
  output \owner_reg[1] ;
  output [0:0]Q;
  output [7:0]\s_dataIn_reg[7] ;
  input clk_IBUF_BUFG;
  input s_sys_reset;
  input mem_valid;
  input \done_reg[1] ;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]Q;
  wire buzz_OBUF;
  wire buzz_i_1_n_0;
  wire clk_IBUF_BUFG;
  wire \counter1hz[6]_i_1_n_0 ;
  wire \counter1hz[6]_i_3_n_0 ;
  wire \counter1hz_reg_n_0_[0] ;
  wire \counter1hz_reg_n_0_[1] ;
  wire \counter1hz_reg_n_0_[2] ;
  wire \counter1hz_reg_n_0_[3] ;
  wire \counter1hz_reg_n_0_[4] ;
  wire \counter1hz_reg_n_0_[5] ;
  wire [23:0]counter60hz;
  wire \counter60hz[0]_i_1_n_0 ;
  wire \counter60hz[10]_i_1_n_0 ;
  wire \counter60hz[11]_i_1_n_0 ;
  wire \counter60hz[12]_i_1_n_0 ;
  wire \counter60hz[13]_i_1_n_0 ;
  wire \counter60hz[14]_i_1_n_0 ;
  wire \counter60hz[15]_i_1_n_0 ;
  wire \counter60hz[16]_i_1_n_0 ;
  wire \counter60hz[17]_i_1_n_0 ;
  wire \counter60hz[18]_i_1_n_0 ;
  wire \counter60hz[19]_i_1_n_0 ;
  wire \counter60hz[1]_i_1_n_0 ;
  wire \counter60hz[20]_i_1_n_0 ;
  wire \counter60hz[21]_i_1_n_0 ;
  wire \counter60hz[22]_i_1_n_0 ;
  wire \counter60hz[23]_i_1_n_0 ;
  wire \counter60hz[23]_i_2_n_0 ;
  wire \counter60hz[23]_i_3_n_0 ;
  wire \counter60hz[2]_i_1_n_0 ;
  wire \counter60hz[3]_i_1_n_0 ;
  wire \counter60hz[4]_i_1_n_0 ;
  wire \counter60hz[5]_i_1_n_0 ;
  wire \counter60hz[6]_i_1_n_0 ;
  wire \counter60hz[7]_i_1_n_0 ;
  wire \counter60hz[8]_i_1_n_0 ;
  wire \counter60hz[9]_i_1_n_0 ;
  wire [2:0]current_state;
  wire \current_state[0]_i_1__1_n_0 ;
  wire \current_state[1]_i_1__1_n_0 ;
  wire \current_state[1]_i_3__0_n_0 ;
  wire \current_state[1]_i_4__0_n_0 ;
  wire \current_state[1]_i_5__0_n_0 ;
  wire \current_state[1]_i_6__0_n_0 ;
  wire \current_state[2]_i_1__1_n_0 ;
  wire \done_reg[1] ;
  wire eqOp__22;
  wire \memAddress[0]_i_1__0_n_0 ;
  wire \memAddress_reg[0]_0 ;
  wire \memWrite[7]_i_1__0_n_0 ;
  wire \memWrite[7]_i_3__0_n_0 ;
  wire mem_hold_i_1_n_0;
  wire [7:0]mem_ret_data;
  wire \mem_ret_data[7]_i_1__0_n_0 ;
  wire \mem_ret_state[0]_i_1_n_0 ;
  wire \mem_ret_state[1]_i_1_n_0 ;
  wire \mem_ret_state[2]_i_1_n_0 ;
  wire \mem_ret_state_reg_n_0_[0] ;
  wire \mem_ret_state_reg_n_0_[1] ;
  wire \mem_ret_state_reg_n_0_[2] ;
  wire mem_valid;
  wire mem_valid_i_1__0_n_0;
  wire neqOp;
  wire \owner_reg[1] ;
  wire [23:1]plusOp;
  wire [6:0]plusOp__1;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire s_TIME_mem_hold;
  wire s_TIME_mem_valid;
  wire s_TIME_mem_write;
  wire [7:0]\s_dataIn_reg[7] ;
  wire s_sys_reset;
  wire [7:0]tmp_8;
  wire tmp_mem_write_i_1__0_n_0;
  wire [3:2]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__4_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h40)) 
    buzz_i_1
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(buzz_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    buzz_i_2
       (.I0(mem_ret_data[6]),
        .I1(mem_ret_data[3]),
        .I2(mem_ret_data[4]),
        .I3(mem_ret_data[5]),
        .I4(\memWrite[7]_i_3__0_n_0 ),
        .I5(mem_ret_data[7]),
        .O(neqOp));
  FDCE #(
    .INIT(1'b0)) 
    buzz_reg
       (.C(clk_IBUF_BUFG),
        .CE(buzz_i_1_n_0),
        .CLR(s_sys_reset),
        .D(neqOp),
        .Q(buzz_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter1hz[0]_i_1 
       (.I0(\counter1hz_reg_n_0_[0] ),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter1hz[1]_i_1 
       (.I0(\counter1hz_reg_n_0_[0] ),
        .I1(\counter1hz_reg_n_0_[1] ),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter1hz[2]_i_1 
       (.I0(\counter1hz_reg_n_0_[0] ),
        .I1(\counter1hz_reg_n_0_[1] ),
        .I2(\counter1hz_reg_n_0_[2] ),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter1hz[3]_i_1 
       (.I0(\counter1hz_reg_n_0_[1] ),
        .I1(\counter1hz_reg_n_0_[0] ),
        .I2(\counter1hz_reg_n_0_[2] ),
        .I3(\counter1hz_reg_n_0_[3] ),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter1hz[4]_i_1 
       (.I0(\counter1hz_reg_n_0_[2] ),
        .I1(\counter1hz_reg_n_0_[0] ),
        .I2(\counter1hz_reg_n_0_[1] ),
        .I3(\counter1hz_reg_n_0_[3] ),
        .I4(\counter1hz_reg_n_0_[4] ),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter1hz[5]_i_1 
       (.I0(\counter1hz_reg_n_0_[3] ),
        .I1(\counter1hz_reg_n_0_[1] ),
        .I2(\counter1hz_reg_n_0_[0] ),
        .I3(\counter1hz_reg_n_0_[2] ),
        .I4(\counter1hz_reg_n_0_[4] ),
        .I5(\counter1hz_reg_n_0_[5] ),
        .O(plusOp__1[5]));
  LUT4 #(
    .INIT(16'h1000)) 
    \counter1hz[6]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(eqOp__22),
        .O(\counter1hz[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \counter1hz[6]_i_2 
       (.I0(\counter1hz[6]_i_3_n_0 ),
        .I1(\counter1hz_reg_n_0_[5] ),
        .I2(Q),
        .O(plusOp__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter1hz[6]_i_3 
       (.I0(\counter1hz_reg_n_0_[4] ),
        .I1(\counter1hz_reg_n_0_[2] ),
        .I2(\counter1hz_reg_n_0_[0] ),
        .I3(\counter1hz_reg_n_0_[1] ),
        .I4(\counter1hz_reg_n_0_[3] ),
        .O(\counter1hz[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter1hz_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter1hz[6]_i_1_n_0 ),
        .CLR(s_sys_reset),
        .D(plusOp__1[0]),
        .Q(\counter1hz_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter1hz_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter1hz[6]_i_1_n_0 ),
        .CLR(s_sys_reset),
        .D(plusOp__1[1]),
        .Q(\counter1hz_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter1hz_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter1hz[6]_i_1_n_0 ),
        .CLR(s_sys_reset),
        .D(plusOp__1[2]),
        .Q(\counter1hz_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter1hz_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter1hz[6]_i_1_n_0 ),
        .CLR(s_sys_reset),
        .D(plusOp__1[3]),
        .Q(\counter1hz_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter1hz_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter1hz[6]_i_1_n_0 ),
        .CLR(s_sys_reset),
        .D(plusOp__1[4]),
        .Q(\counter1hz_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter1hz_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter1hz[6]_i_1_n_0 ),
        .CLR(s_sys_reset),
        .D(plusOp__1[5]),
        .Q(\counter1hz_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \counter1hz_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter1hz[6]_i_1_n_0 ),
        .D(plusOp__1[6]),
        .PRE(s_sys_reset),
        .Q(Q));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter60hz[0]_i_1 
       (.I0(current_state[0]),
        .I1(counter60hz[0]),
        .O(\counter60hz[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[10]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[10]),
        .O(\counter60hz[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[11]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[11]),
        .O(\counter60hz[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[12]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[12]),
        .O(\counter60hz[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[13]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[13]),
        .O(\counter60hz[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[14]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[14]),
        .O(\counter60hz[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[15]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[15]),
        .O(\counter60hz[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[16]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[16]),
        .O(\counter60hz[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[17]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[17]),
        .O(\counter60hz[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[18]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[18]),
        .O(\counter60hz[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[19]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[19]),
        .O(\counter60hz[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[1]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[1]),
        .O(\counter60hz[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[20]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[20]),
        .O(\counter60hz[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[21]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[21]),
        .O(\counter60hz[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[22]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[22]),
        .O(\counter60hz[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \counter60hz[23]_i_1 
       (.I0(eqOp__22),
        .I1(s_sys_reset),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\counter60hz[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \counter60hz[23]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(s_sys_reset),
        .O(\counter60hz[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[23]_i_3 
       (.I0(current_state[0]),
        .I1(plusOp[23]),
        .O(\counter60hz[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[2]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[2]),
        .O(\counter60hz[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[3]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[3]),
        .O(\counter60hz[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[4]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[4]),
        .O(\counter60hz[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[5]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[5]),
        .O(\counter60hz[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[6]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[6]),
        .O(\counter60hz[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[7]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[7]),
        .O(\counter60hz[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[8]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[8]),
        .O(\counter60hz[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter60hz[9]_i_1 
       (.I0(current_state[0]),
        .I1(plusOp[9]),
        .O(\counter60hz[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[0]_i_1_n_0 ),
        .Q(counter60hz[0]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[10]_i_1_n_0 ),
        .Q(counter60hz[10]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[11]_i_1_n_0 ),
        .Q(counter60hz[11]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[12]_i_1_n_0 ),
        .Q(counter60hz[12]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[13]_i_1_n_0 ),
        .Q(counter60hz[13]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[14]_i_1_n_0 ),
        .Q(counter60hz[14]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[15]_i_1_n_0 ),
        .Q(counter60hz[15]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[16]_i_1_n_0 ),
        .Q(counter60hz[16]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[17]_i_1_n_0 ),
        .Q(counter60hz[17]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[18]_i_1_n_0 ),
        .Q(counter60hz[18]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[19]_i_1_n_0 ),
        .Q(counter60hz[19]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[1]_i_1_n_0 ),
        .Q(counter60hz[1]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[20]_i_1_n_0 ),
        .Q(counter60hz[20]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[21]_i_1_n_0 ),
        .Q(counter60hz[21]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[22]_i_1_n_0 ),
        .Q(counter60hz[22]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[23]_i_3_n_0 ),
        .Q(counter60hz[23]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[2]_i_1_n_0 ),
        .Q(counter60hz[2]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[3]_i_1_n_0 ),
        .Q(counter60hz[3]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[4]_i_1_n_0 ),
        .Q(counter60hz[4]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[5]_i_1_n_0 ),
        .Q(counter60hz[5]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[6]_i_1_n_0 ),
        .Q(counter60hz[6]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[7]_i_1_n_0 ),
        .Q(counter60hz[7]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[8]_i_1_n_0 ),
        .Q(counter60hz[8]),
        .R(\counter60hz[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter60hz_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter60hz[23]_i_2_n_0 ),
        .D(\counter60hz[9]_i_1_n_0 ),
        .Q(counter60hz[9]),
        .R(\counter60hz[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA1A105A501A105A5)) 
    \current_state[0]_i_1__1 
       (.I0(current_state[2]),
        .I1(eqOp__22),
        .I2(current_state[1]),
        .I3(\done_reg[1] ),
        .I4(current_state[0]),
        .I5(\mem_ret_state_reg_n_0_[0] ),
        .O(\current_state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFAFA5EFEFAFA)) 
    \current_state[1]_i_1__1 
       (.I0(current_state[2]),
        .I1(eqOp__22),
        .I2(current_state[1]),
        .I3(\done_reg[1] ),
        .I4(current_state[0]),
        .I5(\mem_ret_state_reg_n_0_[1] ),
        .O(\current_state[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \current_state[1]_i_2__1 
       (.I0(\current_state[1]_i_3__0_n_0 ),
        .I1(\current_state[1]_i_4__0_n_0 ),
        .I2(\current_state[1]_i_5__0_n_0 ),
        .I3(\current_state[1]_i_6__0_n_0 ),
        .O(eqOp__22));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[1]_i_3__0 
       (.I0(plusOp[6]),
        .I1(plusOp[2]),
        .I2(plusOp[4]),
        .I3(plusOp[12]),
        .I4(plusOp[8]),
        .I5(plusOp[10]),
        .O(\current_state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \current_state[1]_i_4__0 
       (.I0(plusOp[22]),
        .I1(plusOp[21]),
        .I2(plusOp[23]),
        .I3(plusOp[14]),
        .I4(plusOp[16]),
        .I5(plusOp[18]),
        .O(\current_state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \current_state[1]_i_5__0 
       (.I0(plusOp[19]),
        .I1(plusOp[20]),
        .I2(counter60hz[0]),
        .I3(plusOp[17]),
        .I4(plusOp[13]),
        .I5(plusOp[15]),
        .O(\current_state[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \current_state[1]_i_6__0 
       (.I0(plusOp[7]),
        .I1(plusOp[9]),
        .I2(plusOp[11]),
        .I3(plusOp[5]),
        .I4(plusOp[1]),
        .I5(plusOp[3]),
        .O(\current_state[1]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hEEEE6EEE)) 
    \current_state[2]_i_1__1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(\done_reg[1] ),
        .I3(current_state[0]),
        .I4(\mem_ret_state_reg_n_0_[2] ),
        .O(\current_state[2]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(s_sys_reset),
        .D(\current_state[0]_i_1__1_n_0 ),
        .Q(current_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(s_sys_reset),
        .D(\current_state[1]_i_1__1_n_0 ),
        .Q(current_state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(s_sys_reset),
        .D(\current_state[2]_i_1__1_n_0 ),
        .Q(current_state[2]));
  LUT3 #(
    .INIT(8'hD4)) 
    \memAddress[0]_i_1__0 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(\memAddress_reg[0]_0 ),
        .O(\memAddress[0]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memAddress_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(s_sys_reset),
        .D(\memAddress[0]_i_1__0_n_0 ),
        .Q(\memAddress_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \memWrite[0]_i_1__0 
       (.I0(neqOp),
        .I1(mem_ret_data[0]),
        .O(tmp_8[0]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \memWrite[1]_i_1__0 
       (.I0(neqOp),
        .I1(mem_ret_data[0]),
        .I2(mem_ret_data[1]),
        .O(tmp_8[1]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \memWrite[2]_i_1__0 
       (.I0(mem_ret_data[0]),
        .I1(mem_ret_data[1]),
        .I2(neqOp),
        .I3(mem_ret_data[2]),
        .O(tmp_8[2]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hFFFD0002)) 
    \memWrite[3]_i_1__0 
       (.I0(neqOp),
        .I1(mem_ret_data[1]),
        .I2(mem_ret_data[0]),
        .I3(mem_ret_data[2]),
        .I4(mem_ret_data[3]),
        .O(tmp_8[3]));
  LUT6 #(
    .INIT(64'hAAAAAAA9AAAAAAAA)) 
    \memWrite[4]_i_1__0 
       (.I0(mem_ret_data[4]),
        .I1(mem_ret_data[3]),
        .I2(mem_ret_data[1]),
        .I3(mem_ret_data[0]),
        .I4(mem_ret_data[2]),
        .I5(neqOp),
        .O(tmp_8[4]));
  LUT6 #(
    .INIT(64'hFFFAFFFA00050004)) 
    \memWrite[5]_i_1__0 
       (.I0(mem_ret_data[4]),
        .I1(mem_ret_data[7]),
        .I2(\memWrite[7]_i_3__0_n_0 ),
        .I3(mem_ret_data[3]),
        .I4(mem_ret_data[6]),
        .I5(mem_ret_data[5]),
        .O(tmp_8[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA4)) 
    \memWrite[6]_i_1__0 
       (.I0(mem_ret_data[6]),
        .I1(mem_ret_data[7]),
        .I2(\memWrite[7]_i_3__0_n_0 ),
        .I3(mem_ret_data[5]),
        .I4(mem_ret_data[4]),
        .I5(mem_ret_data[3]),
        .O(tmp_8[6]));
  LUT3 #(
    .INIT(8'h28)) 
    \memWrite[7]_i_1__0 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(\memWrite[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \memWrite[7]_i_2__0 
       (.I0(mem_ret_data[6]),
        .I1(\memWrite[7]_i_3__0_n_0 ),
        .I2(mem_ret_data[5]),
        .I3(mem_ret_data[4]),
        .I4(mem_ret_data[3]),
        .I5(mem_ret_data[7]),
        .O(tmp_8[7]));
  LUT3 #(
    .INIT(8'hFE)) 
    \memWrite[7]_i_3__0 
       (.I0(mem_ret_data[1]),
        .I1(mem_ret_data[0]),
        .I2(mem_ret_data[2]),
        .O(\memWrite[7]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1__0_n_0 ),
        .CLR(s_sys_reset),
        .D(tmp_8[0]),
        .Q(\s_dataIn_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1__0_n_0 ),
        .CLR(s_sys_reset),
        .D(tmp_8[1]),
        .Q(\s_dataIn_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1__0_n_0 ),
        .CLR(s_sys_reset),
        .D(tmp_8[2]),
        .Q(\s_dataIn_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1__0_n_0 ),
        .CLR(s_sys_reset),
        .D(tmp_8[3]),
        .Q(\s_dataIn_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1__0_n_0 ),
        .CLR(s_sys_reset),
        .D(tmp_8[4]),
        .Q(\s_dataIn_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1__0_n_0 ),
        .CLR(s_sys_reset),
        .D(tmp_8[5]),
        .Q(\s_dataIn_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1__0_n_0 ),
        .CLR(s_sys_reset),
        .D(tmp_8[6]),
        .Q(\s_dataIn_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memWrite_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\memWrite[7]_i_1__0_n_0 ),
        .CLR(s_sys_reset),
        .D(tmp_8[7]),
        .Q(\s_dataIn_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hFB02)) 
    mem_hold_i_1
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(s_TIME_mem_hold),
        .O(mem_hold_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mem_hold_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(s_sys_reset),
        .D(mem_hold_i_1_n_0),
        .Q(s_TIME_mem_hold));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \mem_ret_data[7]_i_1__0 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(s_TIME_mem_write),
        .I4(\done_reg[1] ),
        .I5(s_sys_reset),
        .O(\mem_ret_data[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ret_data[7]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(mem_ret_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ret_data[7]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(mem_ret_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ret_data[7]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(mem_ret_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ret_data[7]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(mem_ret_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ret_data[7]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(mem_ret_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ret_data[7]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(mem_ret_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ret_data[7]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(mem_ret_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\mem_ret_data[7]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(mem_ret_data[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFDF001C)) 
    \mem_ret_state[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(s_sys_reset),
        .I4(\mem_ret_state_reg_n_0_[0] ),
        .O(\mem_ret_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFD30010)) 
    \mem_ret_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(s_sys_reset),
        .I4(\mem_ret_state_reg_n_0_[1] ),
        .O(\mem_ret_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE70024)) 
    \mem_ret_state[2]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(s_sys_reset),
        .I4(\mem_ret_state_reg_n_0_[2] ),
        .O(\mem_ret_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_ret_state[0]_i_1_n_0 ),
        .Q(\mem_ret_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_ret_state[1]_i_1_n_0 ),
        .Q(\mem_ret_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_ret_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_ret_state[2]_i_1_n_0 ),
        .Q(\mem_ret_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF0200)) 
    mem_valid_i_1__0
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\done_reg[1] ),
        .I3(current_state[2]),
        .I4(s_TIME_mem_valid),
        .O(mem_valid_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mem_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(s_sys_reset),
        .D(mem_valid_i_1__0_n_0),
        .Q(s_TIME_mem_valid));
  LUT2 #(
    .INIT(4'hE)) 
    \owner[2]_i_5 
       (.I0(s_TIME_mem_valid),
        .I1(mem_valid),
        .O(\owner_reg[1] ));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(counter60hz[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(counter60hz[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(counter60hz[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(counter60hz[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(counter60hz[16:13]));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S(counter60hz[20:17]));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({NLW_plusOp_carry__4_CO_UNCONNECTED[3:2],plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__4_O_UNCONNECTED[3],plusOp[23:21]}),
        .S({1'b0,counter60hz[23:21]}));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    tmp_mem_write_i_1__0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(s_TIME_mem_write),
        .O(tmp_mem_write_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tmp_mem_write_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(s_sys_reset),
        .D(tmp_mem_write_i_1__0_n_0),
        .Q(s_TIME_mem_write));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
