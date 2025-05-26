`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 10:31:37
// Design Name: 
// Module Name: sync_updowncount_tb
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


module sync_updowncount_tb;

    // Inputs
    reg clk;
    reg reset;
    reg up_down;

    // Outputs
    wire [2:0] count;

    sync_updowncount uut (
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