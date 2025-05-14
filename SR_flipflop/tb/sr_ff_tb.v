`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 20:08:24
// Design Name: 
// Module Name: sr_ff_tb
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


//sr flipflop blocking assignment 
/*module sr_ff_tb;
 reg s,r,clk;
wire q,qb;
 sr_ff dut(.s(s),.r(r),.clk(clk),.q(q),.qb(qb));
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial 
begin
 s=1; r=0;
#10; s=0; r=1;
#20; s=0; r=0;
#30; s=1; r=1;
$finish;
end 
endmodule*/


//sr flipflop nonblocking assignment 
module sr_ff_tb;
 reg s,r,clk;
wire q,qb;
 sr_ff dut(.s(s),.r(r),.clk(clk),.q(q),.qb(qb));
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial 
begin
 s<=1; r<=0;
#10; s<=0; r<=1;
#20; s<=0; r<=0;
#30; s<=1; r<=1;
$finish;
end 
endmodule