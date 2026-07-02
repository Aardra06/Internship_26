module comparator4(
    input  [3:0] A,
    input  [3:0] B,
    output G,
    output E,
    output L
);

assign G = (A > B);
assign E = (A == B);
assign L = (A < B);

endmodule