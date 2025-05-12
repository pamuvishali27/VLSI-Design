`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2025 21:02:55
// Design Name: 
// Module Name: fullsub_HS_46
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


module fullsub_HS_46(input a,b,cin, output diff,borr);
wire w1,w2,w3;
xor (w1,a,b);
and (w2,a,b);
xor (diff,w1,cin);
and (w3,w1,cin);
or (borr,w3,w2);
endmodule



