module PC(clock,reset,pcin,pcout);
    input clock;
    input reset;
    input [31:0] pcin;
    output [31:0] pcout;
    reg clk;
    reg [31:0] pcout;
  always @(posedge(clock))
      pcout<=pcin;
endmodule