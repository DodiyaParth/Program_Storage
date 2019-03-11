module dflip(clk,d,q);
input clk,d;
output q;
wire qbar,s,r,x,y;

nand n4(r,clk,s,y);
nand n6(q,s,qbar);
nand n1(s,clk,x);
nand n2(x,y,s);
nand n3(y,d,r);
nand n5(qbar,r,q);

endmodule
