`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 22:01:41
// Design Name: 
// Module Name: non_overlap_101_tb
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


module non_overlap_101_tb();
reg clk;
reg reset;
reg din;
wire  dout;
non_over_lap_101 dut(.clk(clk),.reset(reset),.din(din),.dout(dout));
always#5clk=~clk;
initial begin
$dumpfile("non_over_lap_101.vcd");
$dumpvars(0,non_overlap_101_tb);
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
