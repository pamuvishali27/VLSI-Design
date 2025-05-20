`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 22:32:49
// Design Name: 
// Module Name: async_upcount
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


module async_upcount (input clk,rst,output reg [1:0] q);
 always @(negedge clk or posedge rst)
  begin
  if(rst)
    q[0] <= 0;
  else
    q[0] <= ~q[0];
  end 
 
 always @(negedge q[0] or posedge rst)
  begin
  if(rst)
    q[1] <= 0;
  else
    q[1] <= ~q[1];
  end 
endmodule