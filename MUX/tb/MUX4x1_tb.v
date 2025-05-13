`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 09:56:02
// Design Name: 
// Module Name: MUX4x1_tb
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


module MUX4x1_tb;

reg i0, i1, i2, i3;
reg s0, s1;
wire y;

MUX4x1 dut (
    .i0(i0), .i1(i1), .i2(i2), .i3(i3),
    .s0(s0), .s1(s1),
    .y(y)
);

initial begin
    $display("Time\tSel s1s0 | Inputs i0 i1 i2 i3 | y");
    $monitor("%0t\t  %b%b     |    %b  %b  %b  %b  | %b",
              $time, s1, s0, i0, i1, i2, i3, y);

    
    i0 = 1; i1 = 0; i2 = 1; i3 = 0;

    
    s1 = 0; s0 = 0; #10; 
    s1 = 0; s0 = 1; #10; 
    s1 = 1; s0 = 0; #10; 
    s1 = 1; s0 = 1; #10; 

    $finish;
end

endmodule


   