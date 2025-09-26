module decoder_7seg(
    input [3:0] s,   // s[6] = s6, s[5] = s5, ...
    output a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1 
    
);
    
	 
	 seg_a0 a0_inst (
        .a0(a0),
        .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
    );
	 
	 seg_b0 b0_inst (
			.b0(b0),
		   .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
    );
	 
	 seg_c0 c0_inst (
			.c0(c0),
			.s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
    );
	 
	 seg_d0 d0_inst (
			.d0(d0),
			.s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
    );
	 
	 seg_e0 e0_inst (
			.e0(e0),
			.s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
    );
	 
	 seg_f0 f0_inst (
			.f0(f0),
			.s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
    );
	 
	 seg_g0 g0_inst (
			.g0(g0),
			.s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
    );
    
	 seg_a1 a1_inst (
        .a1(a1),
        .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
    );
    
	seg_b1 b1_inst (
			  .b1(b1),
			  .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
		 );

	seg_c1 c1_inst (
			  .c1(c1),
			  .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
		 );

	seg_d1 d1_inst (
			  .d1(d1),
			  .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
		 );

	seg_e1 e1_inst (
			  .e1(e1),
			  .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
		 );

	seg_f1 f1_inst (
			  .f1(f1),
			  .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
		 );

	seg_g1 g1_inst (
			  .g1(g1),
			  .s3(s[3]), .s2(s[2]), .s1(s[1]), .s0(s[0])
		 );
	 
	 
endmodule
