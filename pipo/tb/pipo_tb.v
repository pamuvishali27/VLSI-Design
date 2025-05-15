`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2025 20:23:23
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb;

reg clk;

reg rst;

reg [3:0] d;

wire [3:0] q;

pipo dut (.clk(clk),.rst(rst),.d(d),.q(q) );

 
initial begin

clk = 0;

rst = 1;

 rst=1'b0;


#10 d=4'b1101;

end

always #5 clk = ~clk;

initial #150 $stop;

endmodule
