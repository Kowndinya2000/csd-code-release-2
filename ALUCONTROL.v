module ALUCONTROL (ALUop, Funct, ALUControl);

	input [1:0] ALUop;
	input [5:0] Funct;
	output reg [3:0] ALUControl;
	
	always @(ALUop, Funct) begin
        if(ALUop[1:0] == 2'b00)
            ALUControl[3:0] <= 4'b0010;
        else if(ALUop[1:0] == 2'b01)
            ALUControl[3:0] <= 4'b0110;
        else if(ALUop[1:0] == 2'b10)
            if(Funct[5:0] == 6'b100000)
                ALUControl <= 4'b0010;
            else if(Funct[5:0] == 6'b100010)
                ALUControl <= 4'b0110;
            if(Funct[5:0] == 6'b100100)
                ALUControl <= 4'b0000;
            if(Funct[5:0] == 6'b100101)
                ALUControl <= 4'b0001;
            if(Funct[5:0] == 6'b101010)
                ALUControl <= 4'b0111;
	end
endmodule