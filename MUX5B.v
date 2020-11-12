module MUX5B(mux_in_1, mux_in_2, sel, mux_out);

	input [20:16] mux_in_1;
	input [15:11] mux_in_2;
	input sel;
	
	output reg [4:0] mux_out;

	always @ (sel, mux_in_1, mux_in_2) begin
		case(sel) 
			0 : mux_out <= mux_in_1;
			1 : mux_out <= mux_in_2;
		endcase
	end
endmodule