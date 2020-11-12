module AND(_sel_branchornot, Branch, isZero);
	input _sel_branchornot;
	input Branch;
	output reg isZero;
	
	always @(*) begin
		isZero <= _sel_branchornot && Branch;
	end
endmodule
