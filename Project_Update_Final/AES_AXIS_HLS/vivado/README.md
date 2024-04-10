# Vivado Setup

After `Export RTL` for the Vitis HLS IP, create a new block design and under `Tools->Settings->IP->Repository`, add the exported AES IP.

To load the AES block design, run `./aes.tcl`. 

Alternatively, this block design was built upon the example TCL script `./axi-dma-example.tcl`, combined with the AES IP, and modified the AXI DMA block to have the following new characteristics for both Read and Write Channels:
- Memory Map Data Width: 64
- Stream Data Width: 64
- Max Burst Size: 64

Create an HDL Wrapper for the Design Source and Generate Bitstream. After bitstream generation completes, copy the `.hwh`, `.bit`, and `.tcl` files to the PYNQ-Z2 board to enable the hardware overlay.
