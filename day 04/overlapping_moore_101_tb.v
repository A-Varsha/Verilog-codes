`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 21:46:12
// Design Name: 
// Module Name: overlapping_moore_101_tb
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


module overlapping_moore_101_tb();
reg clk;
reg reset;
reg din;
wire  dout;
overlaping_moore_101 dut(.clk(clk),.reset(reset),.din(din),.dout(dout));
always#5clk=~clk;
initial begin
$dumpfile("overlaping_moore_101.vcd");
$dumpvars(0,overlapping_moore_101_tb);
clk=0;
reset=1;
din=0;
#10 reset=0;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=1;
#10 din=0;
#20 din=1;
#10 din=0;
#10 din=1;
#20 ;
$finish;
end
endmodule
