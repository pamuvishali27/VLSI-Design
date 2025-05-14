`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 19:45:11
// Design Name: 
// Module Name: d_ff_tb
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


///blocking asssignment
module d_ff_tb;
  reg clk,reset,d;
  wire q,qb;
 
 d_ff dut ( .clk(clk),.reset(reset),.d(d),.q(q),.qb(qb));

  always #5 clk=~clk;

 initial 
 begin 
$display ("time | clk reset d q ");
$display ("-------------------- ");
$display (" %4t | %b  %b   %b %b ", $time ,clk,reset,d,q);
       
  

         reset = 1; 
         d = 0;
         clk = 0;
         #10
         reset = 0;
         #10 d = 1;
        #20 d = 0; 
         #30 d = 1;
$finish;


end
endmodule


///nonblocking asssignment

/*module d_ff_tb;
  reg clk,reset,d;
  wire q,qb;
 
 d_ff dut ( .clk(clk),.reset(reset),.d(d),.q(q),.qb(qb));

  always #5 clk=~clk;

 initial 
 begin 
$display ("time | clk reset d q ");
$display ("-------------------- ");
$display (" %4t | %b  %b   %b %b ", $time ,clk,reset,d,q);
       
  

         reset <= 1; 
         d <= 0;
         clk <= 0;
         #10
         reset <= 0;
         #10 d <= 1;
        #20 d <= 0; 
         #30 d <= 1;
$finish;


end
endmodule*/
