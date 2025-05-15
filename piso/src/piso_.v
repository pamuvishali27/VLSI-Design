`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2025 23:16:59
// Design Name: 
// Module Name: piso_
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


// File: piso.v
module piso_ (
  input [3:0] d,
  input clk,
  input rst,         // Recommended: add a reset
  input load,
  output reg q
);

  reg [3:0] a;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      a <= 4'b0000;
      q <= 1'b0;
    end
    else if (load) begin
      a <= d;
    end
    else begin
      q <= a[3];              // Output MSB
      a <= {a[2:0], 1'b0};    // Left shift
    end
  end

endmodule
