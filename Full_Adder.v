module Full_Adder(sum, cout,a,b,cin);
input a,b,cin;
output sum,cout;
wire [3:0]w;
Half_Adder HA1(w[0],w[1],a,b);
Half_Adder HA2(sum,w[2],w[0],cin);
or(cout,w[1],w[2]);
endmodule
