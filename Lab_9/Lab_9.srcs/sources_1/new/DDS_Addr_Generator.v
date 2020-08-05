`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/23 14:02:46
// Design Name: 
// Module Name: DDS_Addr_Generator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DDS_Addr_Generator(
    input clk_DDS,
    input Rst,
    input [8:0]Phase,
    output [7:0]Addr_Out
    );
    parameter NWORD=256;
    parameter Freq=1000;
    wire [7:0]PWORD = (Phase*NWORD)/360;
    wire clk_out;
    reg [7:0]Addr_Cnt=0;
    reg [30:0]FWORD = 100000000/(Freq*256);
    
    clk_division_0 clk_division0(
      .i_clk(clk_DDS),
      .i_clk_mode(FWORD),
      .o_clk_out(clk_out)
      );
      
      always@(posedge clk_out or negedge Rst)
          begin
              if(!Rst)
                  Addr_Cnt <= 0;
              else
                  Addr_Cnt <= Addr_Cnt+1;
          end
      assign Addr_Out = Addr_Cnt + PWORD;
endmodule
