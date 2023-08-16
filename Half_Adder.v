 module bit4_Adder(sum, cout,a,b);
input a,b;
output sum,cout;
xor(sum,a,b);
and(cout,a,b);
endmodule
