module AND(_sel_branchornot, Branch, isZero);
	input _sel_branchornot;
	input Branch;
	output reg isZero;
	initial begin
		isZero <= 0;
	end
	always @(*) begin
		isZero <= _sel_branchornot && Branch;
	end
endmodule
