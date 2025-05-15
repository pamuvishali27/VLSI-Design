`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 22:44:17
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb;
  reg clk,rst;
  reg d;
  wire [3:0]q;
  sipo dut(.clk(clk),.rst(rst),.d(d),.q(q));
  
  initial 
    begin
      clk = 0;
      forever #5 clk = ~clk;
    end
  
  initial 
    begin
      rst=1;
      #20 rst=1'b0;
      #10 d=1'b1;
      #10 d=1'b1;
      #10 d=1'b0;
      #10 d=1'b1;
      end
  
  
endmodule