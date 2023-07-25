module mux2vers1_1bit(E0, E1, Sel, S);

input E0,E1;
input Sel;

output S;

assign S = (Sel==0)?E0:E1;



endmodule

