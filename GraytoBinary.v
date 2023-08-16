module GraytoBinary(b,g);
input [3:0]g;
output [3:0]b;
or(b[3],g[3],g[3]);
xor(b[2],g[3],g[2]);
xor(b[1],b[2],g[1]);
xor(b[0],b[1],g[0]);
endmodule