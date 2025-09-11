`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 17:40:43
// Design Name: 
// Module Name: verilog_qns_no_9_tb
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


module verilog_qns_no_9_tb();
reg clk,x;
reg reset;
reg din;
wire  detected;
verilog_qns_no_9 dut(.clk(clk),.reset(reset),.x(x),.detected(detected));
always#5clk=~clk;
initial begin
//$dumpfile("overlaping_moore_101.vcd");
//$dumpvars(0,overlapping_moore_101_tb);
clk=0;
reset=1;
din=0;
#10 reset=0;
#10 x=0;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=1;
#10 x=0;
#20 x=1;
#10 x=0;
#10 x=1;
#20 ;
$finish;
end
endmodule

