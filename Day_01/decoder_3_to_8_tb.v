`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 10:49:29
// Design Name: 
// Module Name: decoder_3_to_8_tb
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


module decoder_3_to_8_tb();
reg x,y,z;
wire d0,d1,d2,d3,d4,d5,d6,d7;
decoder_3_to_8 uut(.x(x),
.y(y),
.z(z),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4),
.d5(d5),
.d6(d6),
.d7(d7));

initial begin
x = 0; y = 0; z = 0;
#5
x = 0; y = 0; z = 1;
#5
x = 0; y = 1; z = 0;
#5
x = 0; y = 1; z = 1;
#5
x = 1; y = 0; z = 0;
#5
x = 1; y = 0; z = 1;
#5
x = 1; y = 1; z = 0;
#5
x = 1; y = 1; z = 1;
#5
$finish;
end
endmodule

