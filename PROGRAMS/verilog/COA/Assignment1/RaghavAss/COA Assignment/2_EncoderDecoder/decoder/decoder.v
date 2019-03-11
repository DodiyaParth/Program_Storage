module decoder(ip,op);
input [0:3]ip;
output [0:15]op;
	assign op[0]=(~ip[0]&~ip[1]&~ip[2]&~ip[3]),
	op[1]  =(~ip[0]&~ip[1]&~ip[2]&ip[3]),
	op[2]  =(~ip[0]&~ip[1]&ip[2]&~ip[3]),
	op[3]  =(~ip[0]&~ip[1]&ip[2]&ip[3]),
	op[4]  =(~ip[0]&ip[1]&~ip[2]&~ip[3]),
	op[5]  =(~ip[0]&ip[1]&~ip[2]&ip[3]),
	op[6]  =(~ip[0]&ip[1]&ip[2]&~ip[3]),
	op[7]  =(~ip[0]&ip[1]&ip[2]&ip[3]),
	op[8]  =(ip[0]&~ip[1]&~ip[2]&~ip[3]),
	op[9]  =(ip[0]&~ip[1]&~ip[2]&ip[3]),
	op[10] =(ip[0]&~ip[1]&ip[2]&~ip[3]),
	op[11] =(ip[0]&~ip[1]&ip[2]&ip[3]),
	op[12] =(ip[0]&ip[1]&~ip[2]&~ip[3]),
	op[13] =(ip[0]&ip[1]&~ip[2]&ip[3]),
	op[14] =(ip[0]&ip[1]&ip[2]&~ip[3]),
	op[15] =(ip[0]&ip[1]&ip[2]&ip[3]);
	
	
endmodule
