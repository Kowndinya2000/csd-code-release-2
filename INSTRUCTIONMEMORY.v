module INSTRUCTIONMEMORY(ReadAddress, Instruction);
    input [31:0] ReadAddress;
    output [31:0] Instruction;
    reg[31:0] Instruction;
    reg[31:0] IMEM[0:63];
        integer i;
    initial begin
        IMEM[0] <= 32'b00000001001010100100000000100000;
        IMEM[1] <= 32'b00000001001010100100000000100000;
        IMEM[2] <= 32'b00000001001010100100000000100000;
        IMEM[3] <= 32'b00000001001010100100000000100000;
        IMEM[4] <= 32'b00000001001010100100000000100000;
        IMEM[5] <= 32'b00000001001010100100000000100010;
        IMEM[6] <= 32'b00000010001100101000000000100010;
        IMEM[7] <= 32'b00000010001100101000000000100010;
        for(i=8;i<64;i=i+1)
            IMEM[i] = 1'b0; 
    end
    
    always @(ReadAddress)
        Instruction = IMEM[ReadAddress];
endmodule