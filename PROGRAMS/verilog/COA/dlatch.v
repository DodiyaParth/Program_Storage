module dlatch(D,En,Q);

input D,En;
output Q;
wire k1,k2,k3,k4;

not z(k3,D);
nand a(k1,En,D);
nand b(k2,En,k3);
nand c(Q,k4,k1);
nand d(k4,k2,Q);

endmodule