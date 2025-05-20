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


module async_downcount (
    input clk,
    input reset,
    output [3:0] q
);
 reg [3:0]q_d;
   always @(negedge clk or posedge reset) begin
        if (reset)
           q_d <= 4'hf;
        else 
            q_d <= q_d-4'd1;
end 
assign q = q_d; 
endmodule
