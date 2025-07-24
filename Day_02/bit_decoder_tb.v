`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 09:15:18
// Design Name: 
// Module Name: bit_decoder_tb
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


module bit_decoder_tb();
reg [3:0]i;
wire [1:0]y;

bit_decoder uut(.i(i),
.y(y));

initial begin
i=2'b00;
#4
i=2'b01;
#4
i=2'b10;
#4
i=2'b11;
#4
$finish;
end
endmodule
