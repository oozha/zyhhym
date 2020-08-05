`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 11:42:24
// Design Name: 
// Module Name: tb
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


module tb(
);
reg CLK;
reg [7:0] FIR_IN;
reg RSTn;
reg [7:0] mem[1:4096];                                          
wire [16:0] FIR_OUT;
reg [12:0] i;
 //����FIR�˲���
fir i1 (
       .CLK(CLK),
       .FIR_IN(FIR_IN),
       .FIR_OUT(FIR_OUT),
       .RSTn(RSTn)
);
initial                                               
       begin 
                     $readmemh("E:/matlab/matlab_all/bin/mem.txt",mem);//�����˲��źŶ���mem
                     RSTn= 0;
                     CLK= 0;
                     #50;RSTn= 1;
                     #50000;
                     $stop;
       end  
       
initial
       forever
          #50 CLK = ~CLK;//ʱ�����ɣ�ע���������һ��
 
always@(posedge CLK or negedge RSTn) 
      if(!RSTn)                                
          FIR_IN <= 8'b0 ;
       else
          FIR_IN <= mem[i];     //��������
 
always@(posedge CLK or negedge RSTn) 
      if(!RSTn)
         i <= 12'd0;
       else
         i <= i + 1'd1;
endmodule
