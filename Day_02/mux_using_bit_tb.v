`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 22:33:04
// Design Name: 
// Module Name: mux_using_bit_tb
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


module mux_using_bit_tb();
reg s,d0,d1;
wire y;
mux_using_bit_wise uut(.s(s),
.d0(d0),
.d1(d1),
.y(y));
initial begin
d0=0;d1=0; s=0;
#5
d0=1;d1=0; s=0;
#5
d0=0;d1=0;s=1;
#5
d0=1;d1=1;s=1;
#5
$finish;
end
endmodule
    
