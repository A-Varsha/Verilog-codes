`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 06:47:34
// Design Name: 
// Module Name: nand_gate_switch_tb
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


module nand_gate_switch_tb();
reg a,b;
wire f;
nand_gate_switch uut(.f(f),
.a(a),
.b(b));

initial begin
a = 1'b0; b = 1'b0;
#5
a = 1'b0; b = 1'b1;
#5
a = 1'b1; b = 1'b0;
#5
a = 1'b1; b = 1'b1;
#5
$finish;

end

endmodule

   
