module ADDPLUS4(data1,sum);
    input [31:0] data1;
    output reg [31:0] sum;
    always @(*) begin
        sum <= data1 + 4;
    end
endmodule 