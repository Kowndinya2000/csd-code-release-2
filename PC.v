module PC(clock,reset,pcin,pcout);
    input clock;
    input reset;
    input [31:0] pcin;
    output [31:0] pcout;
    reg clk;
    reg [31:0] pcout;
  //   initial
  //   begin
  //   clk=clock;
  //   end
  //   always
  //   #5 clk = ~clk;
  // always @(posedge clk)
  //     pcout<=pcin;
  always @(posedge clock) begin
		if (reset == 1) 
			pcout <= 0;
		else 
			pcout <= pcin + 4; 
	end
endmodule