`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 11:22:29
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
reg a,b;
wire sum,cout;

half_adder dut (
     .a(a),.b(b),.sum(sum),.cout(cout));
     
initial
 begin 
$display("a b | sum cout");
$display("..........");
a = 0;b = 0;  #10
$display("%b %b | %b %b",a,b,sum,cout);

a = 0;b = 1;  #10
$display("%b %b | %b %b",a,b,sum,cout);

a = 1;b = 0;  #10
$display("%b %b | %b %b",a,b,sum,cout);

a = 1;b = 1;  #10
$display("%b %b | %b %b",a,b,sum,cout);
$finish;

end

 
endmodule
