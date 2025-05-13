`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 10:20:20
// Design Name: 
// Module Name: allgates_2x1mux_tb
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


module allgates_2x1mux_tb;
    reg a, b;
    wire y0, y1, y2, y3, y4, y5, y6;

    allgates_2x1mux dut(.a(a), .b(b), .y0(y0), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5), .y6(y6));

    integer i;
    initial begin
        for(i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #5;
        end
    end
endmodule