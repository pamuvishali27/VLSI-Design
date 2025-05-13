`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 10:07:15
// Design Name: 
// Module Name: demux4x1
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


module demux4x1(
    input wire din,        // Data input
    input wire s0, s1,     // Select lines
    output wire y0, y1, y2, y3  // Outputs
);

    wire s0_bar, s1_bar;
    
   
   
    not (s0_bar, s0);
    not (s1_bar, s1);

    and (y0, din, s1_bar, s0_bar);  // 00
    and (y1, din, s1_bar, s0);      // 01
    and (y2, din, s1,     s0_bar);  // 10
    and (y3, din, s1,     s0);      // 11

endmodule


   