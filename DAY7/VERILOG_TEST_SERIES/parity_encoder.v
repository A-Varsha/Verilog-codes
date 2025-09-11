`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 19:31:59
// Design Name: 
// Module Name: parity_encoder
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


module parity_encoder(
output reg [2:0]s,
input [7:0]I
    );
 always@(*)begin
 casez(I)
 8'b00000001:s=3'b000;
 8'b0000001x:s=3'b001;
 8'b000001xx:s=3'b010;
 8'b00001xxx:s=3'b011;
 8'b0001xxxx:s=3'b100;
 8'b001xxxxx:s=3'b101;
 8'b01xxxxxx:s=3'b110;
 8'b1xxxxxxx:s=3'b111;
 default:s=3'b000;
 endcase
 end
endmodule
