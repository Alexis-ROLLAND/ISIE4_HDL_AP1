module Decodeur3vers8(CodedInput, DecodedOutput);

input[2:0] CodedInput;

output[7:0] DecodedOutput;
reg[7:0] DecodedOutput;

/*	Active Level is 0	*/

always @(CodedInput)
begin
	case (CodedInput)
		3'd0 : DecodedOutput <= 8'b11111110;
		3'd1 : DecodedOutput <= 8'b11111101;
		3'd2 : DecodedOutput <= 8'b11111011;
		3'd3 : DecodedOutput <= 8'b11110111;
		3'd4 : DecodedOutput <= 8'b11101111;
		3'd5 : DecodedOutput <= 8'b11011111;
		3'd6 : DecodedOutput <= 8'b10111111;
		3'd7 : DecodedOutput <= 8'b01111111;		
		/* no default case needed because all 8 statements are filled	*/
	endcase
end



endmodule

