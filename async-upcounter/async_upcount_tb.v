`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 22:33:20
// Design Name: 
// Module Name: async_upcount_tb
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


module async_upcount_tb;
reg clk,rst;
wire[1:0] q;
 async_upcount dut(.clk(clk),.rst(rst),.q(q));
  
 always #5 clk = ~clk;
 

initial 
 begin
 clk =0;
  $monitor("time=%0t | rst=%b | q=%b",$time,rst,q);
   rst = 1;#10;
   rst = 0;#100
  $finish;
 end
endmodule
