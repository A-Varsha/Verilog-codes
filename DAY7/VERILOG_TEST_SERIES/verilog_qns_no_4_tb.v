`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 12:06:24
// Design Name: 
// Module Name: verilog_qns_no_4_tb
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


module verilog_qns_no_4_tb();
reg a,b,c,d,e;
wire y;
vrilog_qns_no4 dut(.a(a),.b(b),.c(c),.d(d),.e(e),.y(y));
  
  
  initial begin
    $monitor("Time=%0t: a=%b b=%b c=%b d=%b e=%b => y=%b", $time, a, b, c, d, e, y);
  a=0;b=0;c=0;d=0;e=0;#10;
  a=1;b=0;c=1;d=1;e=1;#10;
  a=0;b=1;c=0;d=0;e=1;#10;
  a=1;b=0;c=1;d=0;e=0;#10;
  a=1;b=1;c=0;d=1;e=0;#10;
  a=1;b=1;c=1;d=1;e=1;#10;
$display("Turning off monitor at time %0t", $time);
    $monitoroff;
    #50;
    $display("Turning on monitor at time %0t", $time);
    $monitoron;
    

  a=0;b=0;c=0;d=0;e=0;#10;
  a=1;b=0;c=1;d=1;e=1;#10;
    $finish;
  end
endmodule