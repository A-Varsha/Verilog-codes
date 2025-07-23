`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 07:33:40
// Design Name: 
// Module Name: not_gate_switch_tb
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


module not_gate_switch_tb();
reg a;
wire y;

not_gate_switch ut(.a(a),
.y(y));

initial begin
a=0;
#10;
a=1;
#10;
$finish;
end
endmodule
