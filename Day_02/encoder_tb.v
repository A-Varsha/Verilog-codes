`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 16:56:22
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();
reg d0,d1,d2,d3,d4,d5,d6,d7;
wire x,y,z;
encoder dut(.x(x),
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
d0=0;d1=0;d2=0;d3=0;d4=0;d5=0;d6=0;d7=1;
#10;
d0=0;d1=0;d2=0;d3=0;d4=0;d5=0;d6=1;d7=0;
#10;
d0=0;d1=0;d2=0;d3=0;d4=0;d5=1;d6=0;d7=0;
#10;
d0=0;d1=0;d2=0;d3=0;d4=1;d5=0;d6=0;d7=0;
#10;
d0=0;d1=0;d2=0;d3=1;d4=0;d5=0;d6=0;d7=0;
#10;
d0=0;d1=0;d2=1;d3=0;d4=0;d5=0;d6=0;d7=0;
#10;
d0=0;d1=1;d2=0;d3=0;d4=0;d5=0;d6=0;d7=0;
#10;
d0=1;d1=0;d2=0;d3=0;d4=0;d5=0;d6=0;d7=0;
#10;


$finish;
end

endmodule
