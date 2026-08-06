`timescale 1ns/1ps

module ram_tb;

    reg        clk;
    reg        we;
    reg  [3:0] addr;
    reg  [7:0] din;
    wire [7:0] dout;

    // Instantiate RAM
    ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Create waveform file
        $dumpfile("ram.vcd");
        $dumpvars(0, ram_tb);

        clk  = 0;
        we   = 0;
        addr = 0;
        din  = 0;

        $display("====================================");
        $display("       RAM TEST STARTED");
        $display("====================================");

        // Write 55 to address 3
        #10;
        we   = 1;
        addr = 4'd3;
        din  = 8'h55;

        #10;
        $display("Writing %h to Address %d", din, addr);

        // Write AA to address 7
        addr = 4'd7;
        din  = 8'hAA;

        #10;
        $display("Writing %h to Address %d", din, addr);

        // Write F0 to address 10
        addr = 4'd10;
        din  = 8'hF0;

        #10;
        $display("Writing %h to Address %d", din, addr);

        // Disable write
        we = 0;

        // Read address 3
        addr = 4'd3;
        #10;
        $display("Reading Address %d = %h", addr, dout);

        // Read address 7
        addr = 4'd7;
        #10;
        $display("Reading Address %d = %h", addr, dout);

        // Read address 10
        addr = 4'd10;
        #10;
        $display("Reading Address %d = %h", addr, dout);

        $display("====================================");
        $display("       RAM TEST COMPLETED");
        $display("====================================");

        $finish;
    end

endmodule