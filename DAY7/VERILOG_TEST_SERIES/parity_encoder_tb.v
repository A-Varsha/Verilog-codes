`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 19:35:57
// Design Name: 
// Module Name: parity_encoder_tb
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


module parity_encoder_tb();
wire [2:0]s;
reg [7:0]I;
parity_encoder u1(.s(s),.I(I));
initial begin
$dumpfile("Test_Q6_8_3_priority_encoder_tb.vcd");
$dumpvars(1);
end
initial begin
$monitor("I=%b,s=%b",I,s);
I=8'b01001000;#10;
I=8'b00010010;#10;
I=8'b00001010;#10;
I=8'b10010010;#10;
I=8'b00000001;#10;
I=8'b00110010;#10;
I=8'b00000100;#10;
I=8'b00000010;#10;
I=8'b0x000100;#10;
I=8'b00000010;#10;
$finish;
end
endmodule


