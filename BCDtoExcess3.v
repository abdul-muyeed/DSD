module BCDtoExcess3(e,b);
input [3:0]b;
output [3:0]e;
wire [1:0]w;
not(e[0],b[0]);
xnor(e[1],b[1],b[0]);
or(w[0],b[1],b[0]);
xor(e[2],w[0],b[2]);
and(w[1],w[0],b[2]);
or(e[3],w[1],b[3]);
endmodule