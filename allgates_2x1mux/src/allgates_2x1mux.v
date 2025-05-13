`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 10:19:52
// Design Name: 
// Module Name: allgates_2x1mux
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


module allgates_2x1mux(input a, b,
    output y0, y1, y2, y3, y4, y5, y6);

    mux2x1 AND   (.s(a), .i0(1'b0), .i1(b),   .y(y0));
    mux2x1 OR    (.s(a), .i0(b),   .i1(1'b1), .y(y1));
    mux2x1 NOT   (.s(a), .i0(1'b1), .i1(1'b0), .y(y2));
    mux2x1 NAND  (.s(a), .i0(1'b1), .i1(~b),   .y(y3));
    mux2x1 NOR   (.s(a), .i0(~b),   .i1(1'b0), .y(y4));
    mux2x1 EXNOR (.s(a), .i0(b),   .i1(~b),   .y(y5));
    mux2x1 EXOR  (.s(a), .i0(~b),   .i1(b),    .y(y6));

endmodule


module mux2x1(input s, i0, i1, output y);
    wire w1, w2, w3;

    not (w1, s);
    and (w2, w1, i0);
    and (w3, s, i1);
    or (y, w2, w3);
endmodule

   