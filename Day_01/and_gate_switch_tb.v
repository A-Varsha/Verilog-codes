`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 07:02:26
// Design Name: 
// Module Name: and_gate_switch_tb
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


module and_gate_switch_tb();
reg a,b;
wire f;
and_gate_switch uut(.f(f),
.a(a),
.b(b));

initial begin
a = 0; b = 0;
#5;
a = 0; b =1;
#5;
a = 1; b = 0;
#5;
a = 1; b = 1;
#5;
$finish;

end
endmodule
