`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/23 15:43:04
// Design Name: 
// Module Name: testbench
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


module testbench();
 reg clk_100MHz=0;
 reg [1:0]Key=0;
 wire DAC_Out;
 initial
 begin
 clk_100MHz = 1;
 Key = 0; 
 #200.1
 Key = 3;
 #50_000_000 $stop;
 end
 Lab_9 test(
 .clk_100MHz(clk_100MHz),
 .Key(Key),
 .clk_DAC(),
 .DAC_Din(DAC_Out),
 .DAC_Sync()
 );
 always #10 clk_100MHz = ~clk_100MHz;
endmodule

