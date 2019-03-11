`include "register.v"
`include "dec5to32.v"

module and_data(data,read,out);
input [63:0]data;
input read;
output [63:0]out;
and A[63:0](out[63:0],data[63:0],read);
endmodule

module or_data(data,out);
input [31:0]data;
output out;
wire [31:0]w;
or O[31:0]({out,w[30:0]},data[31:0],{w[30:0],0});
endmodule

module Reg_File(Read1,Read2,Write,data_in,data_out1,data_out2);
input [4:0]Read1;
input [4:0]Read2;
input [0:4]write;
input [63:0]data_in;
output [63:0]data_out1;
output [63:0]data_out2;
wire [0:31]wr1;
wire [0:31]wr2;
wire [0:31]ww;
wire [63:0]dataline[0:31];
wire [63:0]dataline_r1[0:31];
wire [63:0]dataline_r2[0:31];


dec5to32  D1(Read1,wr1);
dec5to32  D2(Read2,wr2);
dec5to32  D3(write,ww);

	/*assign data_out1=dataline[Read1];
	assign data_out2=dataline[Read2];*/

register Reg[0:31](data_in,ww[0:31],dataline[0:31][63:0]);
and_data An[0:31](dataline[0:31][63:0],wr1[0:31],dataline_r1[0:31][63:0]);
and_data An[0:31](dataline[0:31][63:0],wr2[0:31],dataline_r2[0:31][63:0]);

genvar k,t;
wire[63:0]c1[0:31];
wire[63:0]c2[0:31];
generate
for(k=0;k<64;k=k+1)
begin
	or(c1[0][k],dataline_r1[0][k],0);
	or(c2[0][k],dataline_r2[0][k],0);
end
endgenerate
generate
for(k=1;k<32;k=k+1)
begin
	for(t=0;t<64;t=t+1)
	begin
		or(c1[k][t],dataline_r1[k][t],c1[k-1][t]);
		or(c2[k][t],dataline_r2[k][t],c2[k-1][t]);
	end
end
endgenerate
generate
for(k=0;k<64;k=k+1)
begin
	or(data_out1[k],dataline_r1[63][k],c1[62][k]);
	or(data_out2[k],dataline_r2[63][k],c2[62][k]);
end
endgenerate
endmodule
