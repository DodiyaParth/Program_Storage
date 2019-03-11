module DFF_2(d,clk,q);
input d,clk;
output q;
wire w1,w2,w3,w4,w5;
		nand n1(w4,w1,w3);
		nand n2(w1,clk,w4);
		nand n3(w2,clk,w1,w3);
		nand n4(w3,d,w2);
		nand n5(q,w1,w5);
		nand n6(w5,q,w2);
endmodule