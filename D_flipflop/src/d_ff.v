`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 19:44:31
// Design Name: 
// Module Name: d_ff
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
// blocking assignment 
module d_ff(input clk,reset,d,output reg q,output qb);

 always @(posedge clk)
      if(reset)
     begin
         q =1'b0;
         
     end
      else 
     begin
         q = d; 
end
 assign qb = ~q;
endmodule



// nonblocking assignment 
/*module d_ff(input clk,reset,d,output reg q,output qb);

 always @(posedge clk)
      if(reset)
     begin
         q <=1'b0;
         
     end
      else 
     begin
         q <= d; 
end
 assign qb = ~q;
endmodule*/
