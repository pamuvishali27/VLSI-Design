`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 19:37:48
// Design Name: 
// Module Name: async_downcount_tb
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


module async_downcount_tb;
    reg clk, rst;
    wire [3:0] q;

    async_downcount uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t | Rst=%b | Q=%b", $time, rst, q);
        rst = 1; #10;
        rst = 0;

        #200; 
        $finish;
    end
endmodule
