`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 11:21:21
// Design Name: 
// Module Name: half_adder
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


module half_adder( input wire a,b,output reg sum,cout);
always @(*)
begin
if (a==0 && b==0)
begin
 sum=0;
 cout=0;
 end
 
 else if (a==0 && b==1)
begin
 sum=1;
 cout=0;
 end
 
 else if (a==1 && b==0)
begin
 sum=1;
 cout=0;
 end
 
else if (a==1 && b==1)
begin
 sum=0;
 cout=1;
 end
end


endmodule
