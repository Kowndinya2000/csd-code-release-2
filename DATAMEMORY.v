module DATAMEMORY(Address,MemWrite,MemRead,WriteData,ReadData);
    input [31:0] Address;
    input MemWrite;
    input MemRead;
    input [31:0] WriteData;
    output [31:0] ReadData;
    reg [31:0] ReadData;
    reg [31:0] RAM[0:63];
    integer i,j;
    initial
    begin
    for(i=0;i<64;i=i+1)
        RAM[i] <= 64-i-1;
    end
    always @(Address,MemWrite,MemRead,WriteData)
        if(MemWrite==1'b1)
            RAM[Address]=WriteData;
        else if(MemRead==1'b1)
            ReadData=RAM[Address];
endmodule