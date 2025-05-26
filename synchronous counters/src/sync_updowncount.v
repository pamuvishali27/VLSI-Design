`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 10:30:23
// Design Name: 
// Module Name: sync_updowncount
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


module sync_updowncount (
    input wire clk,         // Clock input
    input wire reset,       // Asynchronous reset
    input wire up_down,     // Direction control: 1 for up, 0 for down
    output reg [2:0] count  // 3-bit counter output
);

    always @(negedge clk or posedge reset) begin
        if (reset)
            count <= 3'b000;                    // Reset the counter to 0
        else if (up_down)
            count <= count + 1;                // Count up
        else
            count <= count - 1;                // Count down
    end

endmodule