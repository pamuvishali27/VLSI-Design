`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2025 23:17:25
// Design Name: 
// Module Name: piso__tb
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


module piso__tb;

  reg [3:0] d;
  reg clk, load, rst;
  wire q;

  piso_ uut (
    .d(d),
    .clk(clk),
    .load(load),
    .rst(rst),
    .q(q)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns period
  end

  // Stimulus
  initial begin
    rst = 1; load = 0; d = 4'b0000;
    #12 rst = 0;

    // Load data 4'b1011
    #3  d = 4'b1001; load = 1;
    #10 load = 0;

    // Now observe serial output
    #100;

    $stop;
  end

  // Monitor values in console
  initial begin
    $monitor("Time = %0t | d = %b | load = %b | q = %b", $time, d, load, q);
  end

endmodule

