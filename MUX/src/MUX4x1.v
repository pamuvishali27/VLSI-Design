`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 09:55:29
// Design Name: 
// Module Name: MUX4x1
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


module MUX4x1 (
    input wire i0, i1, i2, i3,     // 4 input lines
    input wire s0, s1,             // 2 select lines
    output wire y                  // Output
);

    wire s0_bar, s1_bar;
    wire and0, and1, and2, and3;

   
    not (s0_bar, s0);
    not (s1_bar, s1);

    
    and (and0, i0, s1_bar, s0_bar);  // Select 00
    and (and1, i1, s1_bar, s0);      // Select 01
    and (and2, i2, s1,     s0_bar);  // Select 10
    and (and3, i3, s1,     s0);      // Select 11

    
    or (y, and0, and1, and2, and3);

endmodule


    
