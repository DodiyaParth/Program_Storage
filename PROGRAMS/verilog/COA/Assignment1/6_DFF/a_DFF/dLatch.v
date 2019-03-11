module dLatch(d,en,q);
	input d,en;
	output reg q;
	always @(d or en)
		if(en)
			q<=d;
endmodule