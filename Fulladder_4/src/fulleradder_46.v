`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 15:36:32
// Design Name: 
// Module Name: fulleradder_46
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


module fulladder_46( input wire a,b,cin,output reg sum,cout);
always @(*)
begin
if (a==0 && b==0 && cin==0)
begin
 sum=0;
 cout=0;
 end
 
 else if (a==0 && b==0 && cin==1)
begin
 sum=1;
 cout=0;
 end
 
 else if (a==0 && b==1 && cin==0)
begin
 sum=1;
 cout=0;
 end
 
 else if (a==0 && b==1 && cin==1)
begin
 sum=0;
 cout=1;
 end
 
 else if (a==1 && b==0 && cin==0)
begin
 sum=1;
 cout=0;
 end
 
 else if (a==1 && b==0 && cin==1)
begin
 sum=0;
 cout=1;
 end
 
 else if (a==1 && b==1 && cin==0)
begin
 sum=0;
 cout=1;
 end
 
 else if (a==1 && b==1 && cin==1)
begin
 sum=1;
 cout=1;
 end
 end
endmodule
