`import "ALU_1bit.v"
module ALU_nbit(a,b,cin,aluop,result,cout,zero)
input [63:0] a,b;
input cin;
input [3:0] aluop;
output [63:0] result;
output cout,zero;
wire [63:0] c;
genvar k;
ALU_1bit B(a[0],b[0],cin,aluop,result[0],c[0]);
for(k=1;k<63;k++)
begin
ALU_1bit A(a[k],b[k],c[k-1],aluop,result[k],c[k]);
end
ALU_1bit A(a[63],b[63],c[62],aluop,result[63],cout);

wire [63:1] p;
or C(p[1],result[1],result[0]);

for(k=2;k<64;k++)
begin
or D(p[k],result[k],p[k-1]);
end

not E(zero,p[63]);
endmodule