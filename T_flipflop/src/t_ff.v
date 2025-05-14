`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 19:53:48
// Design Name: 
// Module Name: t_ff
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


// t flipflop blocking assignment
/*module t_ff(input clk,reset,t,output reg q, output qb);

 always @(posedge clk)
      if(reset)
     begin
         q=1'b0;
         
     end
      else if(t)
     begin
         q=~q;
     end 
       else 
          begin
               q=q;
          end
 assign qb =~q;
endmodule*/

// t flipflop nonblocking assignment
module t_ff(input clk,reset,t,output reg q, output qb);

 always @(posedge clk)
      if(reset)
     begin
         q<=1'b0;
         
     end
      else if(t)
     begin
         q<=~q;
     end 
       else 
          begin
               q<=q;
          end
 assign qb =~q;
endmodule
