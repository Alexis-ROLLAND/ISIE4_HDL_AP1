module additionneur8bits(a, b, Somme,Clk);

input	Clk;

input[7:0] a,b;

output[8:0] Somme;
reg[8:0] Somme;

always @(negedge(Clk))
begin
	Somme <= a + b;
end


endmodule


 