`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 19:37:10
// Design Name: 
// Module Name: async_downcount
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

module async_downcount(input wire clk,rst,output [3:0] q);
wire [3:0] t;
assign t = 1'b1;
t_ff t1(clk,rst,t,q[0]);
t_ff t2(q[0],rst,t,q[1]);
t_ff t3(q[1],rst,t,q[2]);
t_ff t4(q[2],rst,t,q[3]);

endmodule


module t_ff( input clk,rst,t,output reg q);
  always @(posedge clk)
   begin 
   if(rst)
     q <= 1'b1;
     else if(t)
        q <= ~q;
    end   
    endmodule
     
