`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2025 17:30:46
// Design Name: 
// Module Name: siso
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


// File: siso_right.v
module siso (
  input clk,
  input rst,
  input d,
  output reg q
);
  reg [3:0] temp;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      temp <= 4'b0000;
      q <= 1'b0;
    end else begin
      temp <= {d,temp[2:0]};  // Shift left, bring in new 'd'
      q <= temp[3];           // Output MSB
    end
  end
endmodule
