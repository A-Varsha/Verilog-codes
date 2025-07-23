`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 14:55:18
// Design Name: 
// Module Name: demux_tb
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


module demux_tb();
reg d,s1,s0;
wire y0,y1,y2,y3,y4,y5,y6,y7;
demux u1(.d(d),
.s1(s1),
.s0(s0),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3),
.y4(y4),
.y5(y5),
.y6(y6),
.y7(y7));
initial begin

d=1;s1=0;s0=0;
#10
d=1;s1=0;s0=1;
#10
d=1;s1=1;s0=1;
#10
d=1;s1=1;s0=1;
#10
d=1;s1=1;s0=0;
#10
d=1;s1=0;s0=1;
#10
d=1;s1=1;s0=1;
#10
d=1;s1=1;s0=0;
#10
$finish;
end
endmodule




