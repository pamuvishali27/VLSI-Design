`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2025 20:08:47
// Design Name: 
// Module Name: pipo
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


module pipo(clk,rst,d,q);

input clk,rst;

input [3:0] d;

output [3:0] q;

wire [3:0] d;

reg [3:0] q;

always @(posedge clk)

begin

if (rst)

q <= d;

else

 

q <= d;

end

endmodule