`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 09:41:38
// Design Name: 
// Module Name: parity_bit_tb
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


module parity_bit_tb();
reg [8:0]x;
wire out;
parity_bit dut(.x(x),
.out(out),
.cp(cp)
);
initial 
begin
x=9'b000000100;
#10;
x=9'b000101011;
#10;
x=9'b000000000;
#10;
x=9'b101010001;
#10;
x=9'b101010101;
#10;
x=9'b110010100;
#10;
x=9'b000000001;
#10;
x=9'b001010101;
#10;
x=9'b100000000;
#10;

$finish;
end
endmodule
