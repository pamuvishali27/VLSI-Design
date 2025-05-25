`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 09:48:26
// Design Name: 
// Module Name: sync_downcount_tb
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


module sync_downcount_tb;
reg clk, reset;
wire [3:0] counter;

sync_downcount dut(clk, reset, counter);

initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin

reset=1;
#20;
reset=0;
#150;
$finish;
end
endmodule 
