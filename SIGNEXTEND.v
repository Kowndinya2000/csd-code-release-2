module SIGNEXTEND(sign_in, sign_out);
    input [15:0] sign_in;
    output [31:0] sign_out;
    reg [31:0] sign_out;
    reg [31:0] tmp;
    integer i;
    initial
    begin
        sign_out <=32'b0;
    end
    always @(sign_in)
        if(sign_in[15] == 0)
            sign_out = {32'b000000000000000000,sign_in};
        else
            sign_out = {32'b111111111111111111,sign_in};
endmodule