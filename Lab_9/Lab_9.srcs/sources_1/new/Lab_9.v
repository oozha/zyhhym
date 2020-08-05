`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/23 16:39:13
// Design Name: 
// Module Name: Lab_9
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


module Lab_9(
    input clk_100MHz,
    input [1:0]Key,
    output clk_DAC,
    output DAC_Din,
    output DAC_Sync
    );
    wire clk_100MHz_System;
    clk_5_10 clk_division(.clk_out1(clk_DAC),.clk_out2(clk_100MHz_System),.clk_in1(clk_100MHz));
    Driver_DAC Driver_DAC0(
        .clk_100MHz(clk_100MHz_System),
        .clk_DAC(clk_DAC),
        .DAC_En(1),
        .Wave_Mode(Key),
        .Phase(180),
        .DAC_Din(DAC_Din),
        .DAC_Sync(DAC_Sync)
        );
endmodule
