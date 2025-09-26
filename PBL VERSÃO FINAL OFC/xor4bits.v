module xor4bits (
    output [3:0] S,
    input  [3:0] A,
    input  [3:0] B
);

    // Instanciando uma porta XOR para cada bit
    xor xor0(S[0], A[0], B[0]);
    xor xor1(S[1], A[1], B[1]);
    xor xor2(S[2], A[2], B[2]);
    xor xor3(S[3], A[3], B[3]);
    
endmodule