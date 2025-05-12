`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2025 23:30:06
// Design Name: 
// Module Name: bcd_7seg_tb
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


module bcd_7seg_tb;
    reg  [3:0] bcd;        // Input to the DUT (Device Under Test)
    wire [6:0] seg;        // Output from the DUT

    // Instantiate the decoder
    bcd_7segment dut (
        .bcd(bcd),
        .seg(seg)
    );

    // Test sequence
    initial begin
        $display("Time\tBCD\t7-Segment");
        $monitor("%0t\t%0d\t%b", $time, bcd, seg);

        // Loop through BCD values 0 to 9
        for (bcd = 0; bcd < 10; bcd = bcd + 1) begin
            #10; // Wait 10 time units
        end

        // Test invalid BCD input
        bcd = 4'd7; #10;
        bcd = 4'd4; #10;

        $finish; // End the simulation
    end

endmodule



