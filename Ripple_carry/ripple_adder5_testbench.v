`include "ripple_adder5.v"
module ripple_adder5_testbech ();
    reg [4:0]a;
    reg [4:0]b;
    reg carry_in;
    wire carry_out;
    wire [4:0]sum;
    ripple_adder5 ra(a,b,carry_in,carry_out,sum);
    initial begin
      a[0]=0;
      a[1]=0;
      a[2]=1;
      a[3]=1;
      a[4]=0;
      b[0]=1;
      b[1]=1;
      b[2]=0;
      b[3]=0;
      b[4]=1;
      carry_in=0;
      #100
      a[0]=0;
      a[1]=0;
      a[2]=1;
      a[3]=1;
      a[4]=0;
      b[0]=1;
      b[1]=1;
      b[2]=0;
      b[3]=0;
      b[4]=1;
      carry_in=1;
      #100
      a[0]=1;
      a[1]=0;
      a[2]=0;
      a[3]=1;
      a[4]=0;
      b[0]=1;
      b[1]=1;
      b[2]=0;
      b[3]=1;
      b[4]=1;
      carry_in=1;
    end      
endmodule