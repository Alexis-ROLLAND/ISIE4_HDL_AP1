module Compteur4bits(Clk, Q);

input Clk;

output[3:0] Q;
reg[3:0] Q;

always @(negedge(Clk))
begin
	Q <= Q + 1;
end



endmodule

