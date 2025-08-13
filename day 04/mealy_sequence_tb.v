`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2025 23:12:38
// Design Name: 
// Module Name: mealy_sequence_tb
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


module mealy_sequence_tb();
reg  clk,reset,din;

 mealy_sequence utt(.clk(clk),.reset(reset),.din(din));
 initial begin 
 clk=0;
 end
 always#5 clk=~clk;
 integer i;
 reg[15:0]test_vector;
 initial begin
 reset=1;
 din=1;
 test_vector=16'b110101010100000;
 #10 reset =0;
 for(i=15;i>=0;i=i+1)begin
 din =test_vector[i];#10;
 end
 #20;
 $finish;
 end
endmodule
