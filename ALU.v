module ALU(Read_data_1, Read_data_2, ALUControl, ALUresult, isZero);
    input [31:0] Read_data_1, Read_data_2;
    input [3:0] ALUControl;
    output isZero;
    output [31:0] ALUresult;
    reg[31:0] ALUresult;
    reg isZero;
    reg[3:0] addcode, subcode, andcode, orcode, sltcode;
    initial begin
        addcode[3:0] <= 4'b0010;
        subcode[3:0] <= 4'b0110;
        andcode[3:0] <= 4'b0000;
        orcode[3:0]  <= 4'b0001;
        sltcode[3:0] <= 4'b0111;
    end
    //assign isZero = (ALUresult == 0);

    always @(Read_data_1, Read_data_2, ALUControl)
    if(ALUControl == addcode)
        ALUresult = Read_data_1 + Read_data_2;
    else if(ALUControl == subcode)
        ALUresult = Read_data_1 - Read_data_2;
   else if(ALUControl == andcode)
        ALUresult = Read_data_1 & Read_data_2;
    else if(ALUControl == orcode)
        ALUresult = Read_data_1 | Read_data_2;
    else if(ALUControl == sltcode)
            if(Read_data_1 < Read_data_2)
                ALUresult = 32'b00000000000000000000000000000001;
        else 
            ALUresult = 32'b00000000000000000000000000000000;
    always @(Read_data_1, Read_data_2, ALUControl, ALUresult)
        assign isZero = (ALUresult == 0);
        // if(ALUresult == 32'b0)
        //     isZero = 32'b00000000000000000000000000000001;
        // else
        //     isZero = 32'b00000000000000000000000000000000;
endmodule