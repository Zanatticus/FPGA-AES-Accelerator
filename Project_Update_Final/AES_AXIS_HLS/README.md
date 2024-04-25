# Baseline (Unoptimized) AXI-Stream Implementation

This final project update contains the baseline AXI-Stream implementation for a hardware overlay.

The AXI-Stream subfolder contains three directories:
- `overlay_files`: Contains Jupyter notebook files (for each AES mode) and the necessary hardware overlay files needed to run the IP on the PYNQ board.
- `vitis`: Contains the source Vitis HLS C files and testbench files. Also contains the hardware register map file, simulation logs, and synthesis summary for reference.
- `vivado`: Contains screenshots of the Vivado block design, bitstream-device layout, and TCL scripts for generating the respective block designs.

All Vitis source code has base optimizations added to pipeline various loops with the lowest possible Initialization Interval value to resolve Initialization Interval Violations and Timing Violations that arise when just running the raw HLS C code.

## Vitis HLS Setup

Create a new Vitis project with the source files included under `./vitis/vitis_source` and the top level function `aes`. Add the testbench files included under `./vitis/vitis_test`. Select the correct hardware part (`xc7z020clg400-1`) with the `Vivado IP Flow Target`, and finish creating the Vitis project.

## Vitis Simulation

The AXI-Stream implementation has a dedicated testbench meant for testing AES encryption and decryption. Running the C Simulation will check the difference of the encryption/decryption output against a set of golden output data files to validate that the algorithm runs properly. These golden data files have also been validated against various online AES tools.

## Vitis Synthesis

As mentioned above, the baseline Vitis C code provided in this directory already has inline pragma directives added as optimizations to resolve Initialization Interval Violations. Running C Synthesis should succeed without error. After C Synthesis, export RTL for Vivado.

## Vivado

This implementation has a TCL script included to automatically generate a block design using the IP synthesized by Vitis.

After adding the IP under `Tools->Settings->IP->Repository`, run the respective TCL script to setup the block design (`Tools->Run TCL Script...`), create an HDL Wrapper for the source, and generate bitstream to create the `.bit` and `.hwh` hardware overlay files and the `.tcl` script. These have already been generated and provided under `./overlay_files` and `./vivado`, respectively, for your convenience.

## PYNQ Overlay

After uploading the hardware overlay files to the PYNQ board (either within the same directory as the Jupyter notebook being run or into the PYNQ-Z2 overlay folder), use the given Jupyter Notebook files under `./overlay_files` to test the IP.
