`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2025 17:31:17
// Design Name: 
// Module Name: siso_tb
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


// File: siso_right_tb.v


module siso_tb;
  reg clk, rst, d;
  wire q;

  siso uut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
  );

  // Clock generation (10ns period)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus
  initial begin
    rst = 1;
    d = 0;
    #10 rst = 0;  // Deassert reset on rising edge
    
    // Apply input bits on each clock edge
    #10 d = 1;    // time = 20
    #10 d = 0;    // time = 30
    #10 d = 1;    // time = 40
    #10 d = 0;    // time = 50
    #50;         // wait to observe q changes
    $finish;
  end

  // Output monitor
  initial begin
    $monitor("Time = %0t | rst = %b | d = %b | q = %b", $time, rst, d, q);
  end
endmodule
