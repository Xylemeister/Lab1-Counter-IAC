module counter #(
    parameter WIDTH = 8
)(
    // interface signals
    input logic clk,            // Clock
    input logic rst,            // reset
    input logic en,             // enable
    output logic [WIDTH-1:0]  count     //count output
); 

// creating the counter logics
always_ff @(posedge clk, posedge rst)
    if (en) count <= count + {{WIDTH-1{1'b0}}, 1'b1};
    else count <= count + {WIDTH{1'b1}};

endmodule
