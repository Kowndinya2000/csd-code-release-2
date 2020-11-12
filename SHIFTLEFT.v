module SHIFTLEFT(shift_in,shift_out);
    input [31:0] shift_in;
    output [31:0] shift_out;
    reg [31:0] shift_out;
    reg [29:0] temp;
    always @(shift_in)
        shift_out= shift_in<<2;
endmodule