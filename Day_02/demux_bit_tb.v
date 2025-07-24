`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 09:47:10
// Design Name: 
// Module Name: demux_bit_tb
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


module demux_bit_tb();
reg i,s;
wire y0,y1;

demux_bit uut(.i(i),
.s(s),
.y0(y0),
.y1(y1));

initial begin
i=0;s=0;
#4
i=1;s=0;
#4
i=0;s=1;
#4
i=1;s=1;
#4
$finish;
end
endmodule
