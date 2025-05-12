`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 16:29:27
// Design Name: 
// Module Name: halfsub_46
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


module halfsub_46( input wire a,b,output reg diff,borr);
always @(*)
begin
if (a==0 && b==0)
begin
 diff=0;
 borr=0;
 end
 
 else if (a==0 && b==1)
begin
 diff=1;
 borr=1;
 end
 
 else if (a==1 && b==0)
begin
 diff=1;
 borr=0;
 end
 
else if (a==1 && b==1)
begin
 diff=0;
 borr=1;
 end
end

endmodule

