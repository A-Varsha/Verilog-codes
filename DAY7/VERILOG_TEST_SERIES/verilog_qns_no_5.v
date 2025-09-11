`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 13:20:33
// Design Name: 
// Module Name: verilog_qns_no_5
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


module verilog_qns_no_5 (
input clk_in, reset,
output  reg clk_out);
localparam div=250000;
 reg[18:0] count;
 always@(posedge clk_in or posedge reset)begin
if(reset)begin
count<=0;
clk_out<=0;
end else begin
if(count==div-1)begin
count<=0;
clk_out<=~clk_out;
end else 
count<=count+1;
end
end
endmodule
