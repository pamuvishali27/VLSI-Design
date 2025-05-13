`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 09:45:51
// Design Name: 
// Module Name: encoder8to3_tb
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


module encoder8to3_tb;
reg [7:0] in;
wire [2:0] out;
wire valid;

encoder8to3 dut (
    .in(in),
    .out(out),
    .valid(valid)
);

initial begin
    $display("Time\tInput\t\tOutput\tValid");
    $monitor("%0t\t%b\t%03b\t%b", $time, in, out, valid);

    in = 8'b00000000; #10;
    in = 8'b00000001; #10;
    in = 8'b00000010; #10;
    in = 8'b00000100; #10;
    in = 8'b00001000; #10;
    in = 8'b00010000; #10;
    in = 8'b00100000; #10;
    in = 8'b01000000; #10;
    in = 8'b10000000; #10;

    // Multiple bits set – should prioritize highest
    in = 8'b11010101; #10;

    $finish;
end

endmodule


   