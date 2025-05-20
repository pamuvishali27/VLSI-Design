`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 19:18:19
// Design Name: 
// Module Name: bidirect_reg
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


module bidirect_reg(input clk,
                               rst, 
                               left_in, right_in, 
                     input [1:0] sel,input [3:0] parallel_in, 
                     output reg [3:0] q
                    );
always @(posedge clk or posedge rst)
 begin
   if(rst)
    begin
      q <= 4'b0000;
    end

   else
    begin
     case(sel)
         2'b00: q<=q; //no change
         2'b01: begin
                 q[3] <= q[2];  
                 q[2] <= q[1];
                 q[1] <= q[0]; 
                 q[0] <= left_in;
                end 
          2'b10: begin
                 q[0] <= q[1];  
                 q[1] <= q[2];
                 q[2] <= q[3]; 
                 q[3] <= right_in;
                end
          2'b11: begin 
                 q <= parallel_in;
                 end
            endcase
      end 
   end 
endmodule
