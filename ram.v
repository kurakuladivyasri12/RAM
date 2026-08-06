module ram (
    input        clk,
    input        we,
    input  [3:0] addr,
    input  [7:0] din,
    output [7:0] dout
);

    // 16 locations, each storing 8-bit data
    reg [7:0] memory [0:15];

    // Write operation
    always @(posedge clk) begin
        if (we)
            memory[addr] <= din;
    end

    // Read operation
    assign dout = memory[addr];

endmodule