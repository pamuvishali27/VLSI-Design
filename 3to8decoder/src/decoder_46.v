`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2025 23:38:33
// Design Name: 
// Module Name: decoder_46
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


module decoder_46 (
    input [2:0] in ,
    input enable,
    output reg [7:0] out
);

always @(*) begin
    if (enable) begin
        out = 8'b00000000;
        out[in] = 1'b1;
    end else begin
        out = 8'b00000000;
    end
end

endmodule


   