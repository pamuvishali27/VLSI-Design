`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 19:18:55
// Design Name: 
// Module Name: bidirect_reg_tb
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


module bidirect_reg_tb;
 reg clk,rst;
 reg [1:0] sel;
 reg left_in,right_in;
 reg [3:0] parallel_in;
 wire [3:0] q;
  
bidirect_reg dut (.clk(clk),.rst(rst),.sel(sel),.left_in(left_in),
                  .right_in(right_in),.parallel_in(parallel_in),.q(q));
always #5 clk = ~clk;
  initial 
    begin 
     clk = 0;
     rst = 1;
     sel = 2'b00;
     left_in = 0;
     right_in = 0;
     parallel_in = 4'b0000;
    #10;

    rst = 0;
    sel =2'b11;
    parallel_in = 4'b1010;
    #10;

    sel = 2'b00;
    #10;

    sel = 2'b01;
    left_in = 0;
    #10;
    
    sel = 2'b10;
    right_in = 0;
    #10;

    sel =2'b11;
    parallel_in = 4'b1100;
    #10;

    sel = 2'b00;
    #10;
  $finish;
end
 initial begin
 $monitor("time=%0t | sel=%b | q=%b",$time,sel,q);
 end
endmodule