`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 19:54:21
// Design Name: 
// Module Name: t_ff_tb
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


//t flipflop blocking assignment 
/*module t_ff_tb;
  reg clk,reset,t;
  wire q,qb;
 
 t_ff dut ( .clk(clk),.reset(reset),.t(t),.q(q),.qb(qb));

  always #5 clk=~clk;

 initial 
 begin 
         reset = 1; 
         t = 0;
         clk = 0;
         #10
         reset = 0;
         #10 t = 0;
        #20 t = 1; 
         #30 t = 0;
         #40 t = 1;
$finish;


end
endmodule*/

//t flipflop nonblocking assignment 
module t_ff_tb;
  reg clk,reset,t;
  wire q,qb;
 
 t_ff dut ( .clk(clk),.reset(reset),.t(t),.q(q),.qb(qb));

  always #5 clk=~clk;

 initial 
 begin 
         reset <= 1; 
         t <= 0;
         clk <= 0;
         #10
         reset <= 0;
         #10 t <= 0;
        #20 t <= 1; 
         #30 t <= 0;
         #40 t <= 1;
$finish;


end
endmodule