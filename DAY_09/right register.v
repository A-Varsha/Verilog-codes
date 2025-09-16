module left_register(
  input clk,
  input reset,
  input [3:0] din,
  input  ld,
  input sin,
  output reg [3:0] q);
  always @(posedge clk or posedge reset) begin
    if (reset) 
      q<=4'b000;
      else  if (ld)
        q<=din;
      else 
        q<={ sin,[3:0] q};
    end
    endmodule
