`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 16:22:31
// Design Name: 
// Module Name: fulladder_HA_46_tb
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


module fulladder_HA_46_tb;
reg a,b,cin;
wire sum,cout;

fulladder_HA_46 dut (
     .a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
integer i;
initial
begin
for(i=0; i<8; i=i+1)
  begin 
     {a,b,cin}=i;
     #10;
     end
     end
     initial
     $monitor("a =%b b =%b cin=%b | sum =%b cout =%b",a,b,cin,sum,cout);
    
endmodule
