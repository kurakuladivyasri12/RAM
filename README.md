RAM Design Using Verilog

📌 Project Overview

This project implements a simple Random Access Memory (RAM) using Verilog HDL.

RAM is a memory device used to store and retrieve data. In this project, a 16 × 8 RAM is designed, which means:

- 16 memory locations
- Each location stores 8-bit data
- Address size = 4 bits
- Data size = 8 bits
- Total memory = 16 × 8 = 128 bits

🎯 Objectives

- Design a RAM using Verilog HDL.
- Perform write and read operations.
- Verify the RAM using a testbench.
- Simulate the design and observe the results.

⚙️ RAM Specifications

Parameter| Value
Memory locations| 16
Data width| 8 bits
Address width| 4 bits
Total capacity| 128 bits
Operation| Read/Write

🔌 Inputs and Outputs

Inputs

- "clk" – Clock signal
- "we" – Write enable
- "addr" – 4-bit memory address
- "din" – 8-bit input data

Output

- "dout" – 8-bit output data

🧠 Working Principle

Write Operation

When "we = 1", data present at "din" is stored in the memory location specified by "addr".

memory[addr] = din

The write operation occurs on the rising edge of the clock.

Read Operation

When "we = 0", the data stored at the selected address is available at "dout".

dout = memory[addr]

📂 Files

- "ram.v" – RAM design module
- "ram_tb.v" – Testbench for verification
- "simulation/" – Simulation waveform

🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- GitHub

▶️ Simulation

Compile the Verilog files:

iverilog -o ram_sim ram.v ram_tb.v

Run the simulation:

vvp ram_sim

To view the waveform:

gtkwave ram.vcd

✅ Expected Result

The testbench writes data into different memory locations and then reads the stored data.

Example:

RAM Test Started
Writing 55 to Address 3
Writing AA to Address 7
Writing F0 to Address 10

Reading Address 3 = 55
Reading Address 7 = AA
Reading Address 10 = F0

RAM Test Completed Successfully

📌 Applications

RAM is commonly used in:

- Microprocessors
- Microcontrollers
- Digital systems
- FPGA designs
- Embedded systems
- Computer memory systems

🏁 Conclusion

A 16 × 8 RAM was successfully designed using Verilog HDL. The testbench verifies both write and read operations, and simulation confirms that the data is correctly stored and retrieved from the specified memory locations.