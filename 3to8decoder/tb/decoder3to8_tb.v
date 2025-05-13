`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 09:31:15
// Design Name: 
// Module Name: decoder3to8_tb
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


module decoder3to8_tb;

reg [2:0] in;
reg enable;
wire [7:0] out;

decoder_46 uut (
    .in(in),
    .enable(enable),
    .out(out)
);

initial
 begin
    $display("Time\tEnable\tInput\tOutput");
    $monitor("%0t\t%b\t%03b\t%b", $time, enable, in, out);

    enable = 0; in = 3'b000; #10;
    enable = 1;

    in = 3'b000; #10;
    in = 3'b001; #10;
    in = 3'b010; #10;
    in = 3'b011; #10;
    in = 3'b100; #10;
    in = 3'b101; #10;
    in = 3'b110; #10;
    in = 3'b111; #10;

    enable = 0; in = 3'b101; #10;

    $finish;
end

endmodule


  
