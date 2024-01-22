
# Synchronous and Asynchronous RAM Modules

This repository contains Verilog implementations of synchronous and asynchronous RAM modules. The modules are designed to handle 8-bit data with a capacity of 1024 memory locations, and they provide read and write functionality. Below are detailed descriptions of each module:

# Synchronous RAM (SyncRAM)
## Module Description
The Synchronous_RAM module implements a synchronous RAM design, allowing for precise clock-controlled access. The module supports parallel read and write operations and is suitable for applications that require synchronized memory access.

## Module Inputs
data_in (8 bits): Input data for write operations.
addr (10 bits): Address for memory read and write operations.
we, re: Write Enable and Read Enable signals.
clk: Clock signal.
## Module Outputs
data_out (8 bits): Output data for read operations.
Implementation Details
The module employs a memory array (RAM) of 1024 locations and utilizes an address register (addr_reg) to manage read operations. Write operations are triggered on the positive edge of the clock signal when the Write Enable (we) signal is active and the Read Enable (re) signal is inactive.

# Asynchronous RAM (AsyncRAM)
## Module Description
The ASynchronous_RAM module implements an asynchronous RAM design, allowing for independent read and write operations. The module is suitable for applications where timing synchronization is not critical.

## Module Inputs
data_in (8 bits): Input data for write operations.
addr (10 bits): Address for memory read and write operations.
we, re: Write Enable and Read Enable signals.

## Module Outputs
data_out (8 bits): Output data for read operations.
Implementation Details
Similar to the synchronous RAM module, the asynchronous module (Async_RAM) employs a memory array (RAM) and an address register (addr_reg). Write operations occur when the Write Enable (we) signal is active and the Read Enable (re) signal is inactive, without requiring synchronization with a clock signal.


