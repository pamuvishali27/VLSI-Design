`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 22:42:07
// Design Name: 
// Module Name: sipo
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


module sipo(clk,rst,d,q);
  input clk,rst;
  input d;
    output reg [3:0]q;
    wire [3:0]q;
    reg [3:0]temp;
 
  always @ (posedge clk, posedge rst)
    begin
      if(rst== 1'b1)
       temp<=4'b0000;
        else 
        begin
        temp <=temp<<1'b1; 
        temp[0]<=d;
        end
    end 
    assign q= temp;
    
endmodule