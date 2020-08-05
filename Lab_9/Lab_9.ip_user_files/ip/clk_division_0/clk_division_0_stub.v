// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 23 14:20:00 2020
// Host        : LAPTOP-URFJDTFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/zyhwork/Lab_9/Lab_9.srcs/sources_1/ip/clk_division_0/clk_division_0_stub.v
// Design      : clk_division_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clk_division,Vivado 2018.3" *)
module clk_division_0(i_clk, i_rst, i_clk_mode, o_clk_out)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_rst,i_clk_mode[30:0],o_clk_out" */;
  input i_clk;
  input i_rst;
  input [30:0]i_clk_mode;
  output o_clk_out;
endmodule
