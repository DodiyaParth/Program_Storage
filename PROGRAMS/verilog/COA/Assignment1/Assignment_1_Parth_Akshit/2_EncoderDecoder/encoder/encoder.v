module encoder(ip,op);
input [0:15]ip;
output [0:3]op;
		assign op[0]=(ip[8]|ip[9]|ip[10]|ip[11]|ip[12]|ip[13]|ip[14]|ip[15]),
		op[1]=(ip[4]|ip[5]|ip[6]|ip[7]|ip[12]|ip[13]|ip[14]|ip[15]),
		op[2]=(ip[2]|ip[3]|ip[6]|ip[7]|ip[11]|ip[10]|ip[14]|ip[15]),
		op[3]=(ip[1]|ip[3]|ip[5]|ip[7]|ip[9]|ip[11]|ip[13]|ip[15]);
endmodule