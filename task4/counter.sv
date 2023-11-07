module counter #(
    parameter WIDTH = 8
)(
    // Interface Signals
    input logic clk, rst, ld, //load value from data
    input logic [WIDTH-1:0] v,  //value to preload
    output logic [WIDTH-1:0] count

);

always_ff @(posedge clk)
    if (rst) count <= {WIDTH{1'b0}};
    else count <= ld ? count + v : count + {{WIDTH-1{1'b0}}, 1'b1};

endmodule
