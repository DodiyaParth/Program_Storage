`include "prog4.v"

module n_bit(
a,
b,
cin,
result
);

parameter n=4;
input [n-1:0] a;
input [n-1:0] b;
input cin;
wire [n-1:0] c;
input [n-1:0]cout;
output [n-1:0] result;

xor l0(c[0],cin,b[0]);
xor l1(c[1],cin,b[1]);
xor l2(c[2],cin,b[2]);
xor l3(c[3],cin,b[3]);

genvar i;

full_add A(a[0],c[0],cin,cout[0],result[0]);

for(i=1;i<n;i=i+1)
begin
	full_add A(a[i],c[i],cout[i-1],cout[i],result[i]);

end

endmodule 

