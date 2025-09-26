module and4bits (
    output [3:0] S,
    input  [3:0] A,
    input  [3:0] B
);
	// Instanciando uma porta AND para cada bit
	and and0(S[0], A[0], B[0]);
	and and1(S[1], A[1], B[1]);
	and and2(S[2], A[2], B[2]);
	and and3(S[3], A[3], B[3]);
 
endmodule