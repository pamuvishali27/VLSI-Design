`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2025 23:01:12
// Design Name: 
// Module Name: fullsuub_HS_46_tb
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


module fullsuub_HS_46_tb;
reg a,b,cin;
wire diff,borr;

fullsub_HS_46 dut (
     .a(a),.b(b),.cin(cin),.diff(diff),.borr(borr));
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
    
     $monitor("a =%b b =%b cin=%b | diff =%b borr =%b",a,b,cin,diff,borr);
  
  
endmodule
