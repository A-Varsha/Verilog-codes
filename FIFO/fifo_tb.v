`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 18:08:58
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb();
  localparam FIFO_DEPTH = 8;
  localparam DATA_WIDTH = 32;

  reg clk;
  reg reset_n;
  reg cs, wr_en, rd_en;
  reg  [DATA_WIDTH-1:0] data_in;
  wire [DATA_WIDTH-1:0] data_out;
  wire empty, full;

  fifo #(
    .FIFO_DEPTH(FIFO_DEPTH),
    .DATA_WIDTH(DATA_WIDTH)
  ) uut (
    .clk(clk),
    .reset_n(reset_n),
    .cs(cs),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .empty(empty),
    .full(full)
  );

  always #5 clk = ~clk;

  integer i;

  initial begin
    clk     = 0;
    reset_n = 0;
    cs      = 0;
    wr_en   = 0;
    rd_en   = 0;
    data_in = 0;

   
    $display("Applying reset...");
    #20 reset_n = 1;
    cs = 1;

    //  WRITE 
    $display("Starting write operations...");
    for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
      @(negedge clk);
      if (!full) begin
        wr_en   = 1;
        data_in = i + 32'hA0;  
        $display("[%0t] Writing data_in = 0x%0h", $time, data_in);
      end
      @(negedge clk);
      wr_en = 0;
    end

    @(negedge clk);
    wr_en   = 1;
    data_in = 32'hDEAD_BEEF;
    @(negedge clk);
    wr_en   = 0;
    $display("[%0t] Attempted extra write when full", $time);

    //  READ 
    $display("Starting read operations...");
    for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
      @(negedge clk);
      if (!empty) begin
        rd_en = 1;
      end
      @(posedge clk);
      if (rd_en && !empty) begin
        $display("[%0t] Read data_out = 0x%0h", $time, data_out);
      end
      @(negedge clk);
      rd_en = 0;
    end

    //Try one extra read (should not succeed because FIFO is empty)
    @(negedge clk);
    rd_en = 1;
    @(posedge clk);
    $display("[%0t] Attempted extra read when empty, data_out=0x%0h", $time, data_out);
    @(negedge clk);
    rd_en = 0;

    // Finish simulation
    $display("Test completed!");
    #20 $finish;
  end

endmodule

