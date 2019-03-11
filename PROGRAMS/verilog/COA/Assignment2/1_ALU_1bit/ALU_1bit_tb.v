`include "ALU_1bit.v"
module ALU_1bit_tb;
reg a,b,cin;
reg [3:0] aluop;
wire result,cout;

alu_1bit a1(a,b,cin,aluop,result,cout);

initial
begin
	$monitor("a=",a," b=",b," 	cin=",cin," aluop=",aluop,"   result=",result," cout=",cout);
	$display("AND operation");
	$dumpfile("ALU_1bit.vcd");
	$dumpvars(0,ALU_1bit_tb);
	aluop=4'b0000;
	cin=0;
	a=0;
	b=0;
	#5 a=0;
	b=1;
	#5 a=1;
	b=0;
	#5 a=1;
	b=1;
	#5 $display("OR operation");
	aluop=4'b0001;
	cin=0;
	a=0;
	b=0;
	#5 a=0;
	b=1;
	#5 a=1;
	b=0;
	#5 a=1;
	b=1;
	#5 $display("ADD operation");
	aluop=4'b0010;
	cin=0;
	a=0;
	b=0;
	#5 a=0;
	b=1;
	#5 a=1;
	b=0;
	#5 a=1;
	b=1;
	#5 $display("SUB operation");
	aluop=4'b0110;
	cin=1;
	a=0;
	b=0;
	#5 a=0;
	b=1;
	#5 a=1;
	b=0;
	#5 a=1;
	b=1;
	#5 $display("NAND operation");
	aluop=4'b1101;
	cin=0;
	a=0;
	b=0;
	#5 a=0;
	b=1;
	#5 a=1;
	b=0;
	#5 a=1;
	b=1;
	#5 $display("NOR operation");
	aluop=4'b1100;
	cin=0;
	a=0;
	b=0;
	#5 a=0;
	b=1;
	#5 a=1;
	b=0;
	#5 a=1;
	b=1;
	#5 $finish;
end

endmodule