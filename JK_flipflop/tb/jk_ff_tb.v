`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 20:34:48
// Design Name: 
// Module Name: jk_ff_tb
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


//jk flipflop blocking assignment 
module jk_ff_tb;
 reg j,k,clk;
wire q,qb;
 sr_ff dut(.j(j),.k(k),.clk(clk),.q(q),.qb(qb));
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial 
begin
 j=1; k=0;
#10; j=0; k=1;
#20; j=0; k=0;
#30; j=1; k=1;
$finish;
end 
endmodule


//jk flipflop nonblocking assignment 
/*module jk_ff_tb;
 reg j,k,clk;
wire q,qb;
 sr_ff dut(.j(j),.k(k),.clk(clk),.q(q),.qb(qb));
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial 
begin
 j<=1; k<=0;
#10; j<=0; k<=1;
#20; j<=0; k<=0;
#30; j<=1; k<=1;
$finish;
end 
endmodule
*/