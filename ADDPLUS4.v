module ADDPLUS4(data1,sum);
    input [31:0] data1;
    output reg [31:0] sum;
    initial begin
        sum <= 0;
    end
    always @(*) begin
        sum <= data1 + 1;
    end
endmodule 