`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 16:03:14
// Design Name: 
// Module Name: fulladder_HA_46
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


module fulladder_HA_46(input a,b,cin, output sum,cout);
wire w1,w2,w3;
xor (w1,a,b);
and (w2,a,b);
xor (sum,w1,cin);
and (w3,w1,cin);
or (cout,w3,w2);
endmodule
















