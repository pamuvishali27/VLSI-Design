`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2025 20:57:02
// Design Name: 
// Module Name: fullsub_46
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


module fullsub_46( input wire a,b,cin,output reg diff,borr);
always @(*)
begin
if (a==0 && b==0 && cin==0)
begin
 diff=0;
 borr=0;
 end
 
 else if (a==0 && b==0 && cin==1)
begin
 diff=1;
 borr=1;
 end
 
 else if (a==0 && b==1 && cin==0)
begin
 diff=1;
 borr=1;
 end
 
 else if (a==0 && b==1 && cin==1)
begin
 diff=0;
 borr=1;
 end
 
 else if (a==1 && b==0 && cin==0)
begin
 diff=1;
 borr=0;
 end
 
 else if (a==1 && b==0 && cin==1)
begin
 diff=0;
 borr=0;
 end
 
 else if (a==1 && b==1 && cin==0)
begin
 diff=0;
 borr=0;
 end
 
 else if (a==1 && b==1 && cin==1)
begin
 diff=1;
 borr=1;
 end
 end
endmodule


//data flow modeling style
module fullmodule46(input a,b,cin, output diff,borr);
     assign sum = a ^ b ^ cin;
     assign cout =(a&b)| (b&cin)|(cin&a);
     endmodule
     
  //gate level style
  module fulladder46(input a,b,cin, output diff,borr);
   wire w1,w2,w3,w4;
   xor(sum,a,b,cin);
   and(w1,a,b);
   and(w2,b,cin);
   and(w3,cin,a);
   or(cout,w1,w2,w3);
   endmodule
   

