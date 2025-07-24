`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 22:03:01
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();
reg [3:0]a,b;
reg c;
wire [3:0]sum;
wire carry;
ripple_carry_adder dut(.a(a),
.b(b),
.c(c),
.sum(sum),
.carry(carry));
initial begin
a=4'b0000;b=4'b0000;c=0;
#10
a=4'b0000;b=4'b0001;
#10
a=4'b0100;b=4'b0011;
#10
a=4'b0011;b=4'b0001;
#10

$finish;
end

endmodule
