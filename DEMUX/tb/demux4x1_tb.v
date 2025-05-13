`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 10:07:39
// Design Name: 
// Module Name: demux4x1_tb
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


module demux4x1_tb;

reg din;
reg s0, s1;
wire y0, y1, y2, y3;

demux4x1 dut (
    .din(din),
    .s0(s0),
    .s1(s1),
    .y0(y0), .y1(y1), .y2(y2), .y3(y3)
);

initial begin
    $display("Time\ts1 s0 | din | y0 y1 y2 y3");
    $monitor("%0t\t %b  %b  |  %b  |  %b  %b  %b  %b",
             $time, s1, s0, din, y0, y1, y2, y3);

    din = 1;

    s1 = 0; s0 = 0; #10; 
    s1 = 0; s0 = 1; #10; 
    s1 = 1; s0 = 0; #10; 
    s1 = 1; s0 = 1; #10; 

    din = 0; s1 = 0; s0 = 0; #10; 

    $finish;
end

endmodule


   