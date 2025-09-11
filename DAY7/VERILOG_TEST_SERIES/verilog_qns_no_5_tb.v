`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 13:25:23
// Design Name: 
// Module Name: verilog_qns_no_5_tb
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


module verilog_qns_no_5_tb();
  reg clk_in;
  reg reset;
  wire clk_out;

  verilog_qns_no_5 uut (
    .clk_in(clk_in),
    .reset(reset),
    .clk_out(clk_out));
initial 
clk_in=0;
 always #5 clk_in=~clk_in;
 initial begin
 reset=1;
 #10;
 reset =0;
 #20000;
 $finish;
 end
 endmodule
