`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 23:09:42
// Design Name: 
// Module Name: async_updowncount_tb
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


module async_updowncount_tb;

    // Inputs
    reg clk;
    reg reset;
    reg up_down;

    // Outputs
    wire [2:0] count;

    async_updowncount uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

   
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5ns
    end
   

   
    initial begin
        
        reset = 1;
        up_down = 1; // Start with count up
        #10;

       
        reset = 0;

        
        #80;

        // Change to count down
        up_down = 0;

      
        #80;

       
        reset = 1;
        #10;
        reset = 0;

        // Count up again
        up_down = 1;
        #40;

        $stop; 
    end

endmodule

