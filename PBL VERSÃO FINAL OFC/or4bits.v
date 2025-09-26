
module or4bits (
    output [3:0] S,
    input  [3:0] A,
    input  [3:0] B
);

	// Instanciando uma porta OR para cada bit
	or or0(S[0], A[0], B[0]);
	or or1(S[1], A[1], B[1]);
	or or2(S[2], A[2], B[2]);
	or or3(S[3], A[3], B[3]);
 
endmodule