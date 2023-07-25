module tri_state_function(Ec, Eb, Ea, S1, S2, nCS);

input Ec, Eb, Ea;
input nCS;

output S1, S2;

wire iS1, iS2;

/*	main function	: outputs are the internal signals iS1 and iS2	*/
assign iS1 = (~Ec & Eb & Ea) | (Ec & ~Eb & ~Ea) ;
assign iS2 = (~Ec & ~Eb & ~Ea) | (~Ec & Eb & Ea) | (Ec & ~Eb & Ea) | (Ec & Eb & Ea) ;

/*	tri state - dataflow method	*/

assign	S1 = (nCS == 0)?iS1:1'bZ;
assign	S2 = (nCS == 0)?iS2:1'bZ;


/*	tri state - gate level method	*/
/*
bufif0	(S1, iS1,nCS);
bufif0	(S2, iS2,nCS);
*/

endmodule

