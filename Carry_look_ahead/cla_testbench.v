module cla_testbench();
reg [4:0] a;
reg [4:0] b;
reg cin;
wire [4:0] s;
wire cout;

cla cla (a,b,cin,s,cout);
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
      cin=0;
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
      cin=1;
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
      cin=1;

end
endmodule
