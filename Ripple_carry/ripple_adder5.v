module ripple_adder5(a,b,carry_in,carry_out,sum);
    input [4:0]a;
    input [4:0]b;
    input carry_in;
    output [4:0]sum;
    output carry_out;
    wire c0,c1,c2,c3;
    adder a1(a[0],b[0],sum[0],carry_in,c0);
    adder a2(a[1],b[1],sum[1],c0,c1);
    adder a3(a[2],b[2],sum[2],c1,c2);
    adder a4(a[3],b[3],sum[3],c2,c3);
    adder a5(a[4],b[4],sum[4],c3,carry_out);
endmodule

module adder(a,b,sum,carry_in,carry_out);
    input a;
    input b;
    input carry_in;
    output sum;
    output carry_out;
    wire w1,w2,w3;
    xor(w1,a,b);
    xor(sum,w1,carry_in);
    and(w3,w1,carry_in);
    and(w2,a,b);
    or(carry_out,w3,w2);
endmodule
