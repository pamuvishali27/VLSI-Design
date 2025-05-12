`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 16:40:13
// Design Name: 
// Module Name: halfsub_46_tb
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


module halfsub_46_tb;
reg a,b;
wire diff,borr;

halfsub_46 dut (
     .a(a),.b(b),.diff(diff),.borr(borr));
     
initial
 begin 
$display("a b | diff borr");
$display("..........");
a = 0;b = 0;  #10
$display("%b %b | %b %b",a,b,diff,borr);

a = 0;b = 1;  #10
$display("%b %b | %b %b",a,b,diff,borr);

a = 1;b = 0;  #10
$display("%b %b | %b %b",a,b,diff,borr);

a = 1;b = 1;  #10
$display("%b %b | %b %b",a,b,diff,borr);
$finish;

end

 
endmodule

