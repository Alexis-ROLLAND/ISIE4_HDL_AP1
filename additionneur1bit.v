module additionneur1bit(a,b,Somme,Carry);

input a,b;
output Somme, Carry;


/* Gate Level Modeling version	*/
/*
xor (Somme, a , b);
and (Carry, a , b);
*/

/*	DataFlow Modeling version	*/
assign Somme = (a ^ b);
assign Carry = (a & b);

endmodule
