`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 22:07:31
// Design Name: 
// Module Name: v_a_qns_8
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


module v_a_qns_8();

   reg clk;
 reg [3:0] a, b;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;  
  end

  always @(posedge clk) begin
    a <= a + 1;
    $display("Time %0t: a = %0d", $time, a);
  end

  always @(posedge clk) begin
    b <= b + 2;
    $display("Time %0t:b = %0d", $time, b);
  end

  initial begin
    a = 0;
    b = 0;
    #50 $finish;
  end

endmodule
