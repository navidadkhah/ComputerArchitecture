module cla(input [4:0] a,input [4:0] b,input cin,output [4:0] sum,output cout);

	wire [4:0] p;
	wire [4:0] g ;
	wire [4:0] c;

	assign g = a & b;
	assign p = a ^ b;

	assign c[0] = cin;
	assign c[1] = g[0] | (p[0] & c[0]);
	assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
	assign c[3]= g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
	assign c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);
	assign cout = g[4] | ( p[4] & g[3] ) | (p[4] & p[3] & g[2]) | (p[4]& p[3] & p[2] & g[1]) | (p[4] & p[3] & p[2] & p[1] & g[0]) |(p[4] & p[3] & p[2] & p[1] & p[0] & c[0]);

	half_adder5 ha0(p[0],c[0],sum[0]);
	half_adder5 ha1(p[1], c[1], sum[1]);
	half_adder5 ha2(p[2], c[2], sum[2]);	
	half_adder5 ha3(p[3], c[3] , sum[3]);	
	half_adder5 ha4(p[4], c[4] , sum[4]);
	
endmodule

module half_adder5(input p,input cin,output sum);
	assign sum = p^cin;
endmodule

