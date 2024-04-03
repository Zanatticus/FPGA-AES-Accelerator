# AXI Implementations

This project update contains two different implementations for hardware overlays. The first implementation uses AXI4 and the second implementation uses AXI-Stream.

Both implementation subfolders contain three directories:
- `overlay_files`: Contains a Jupyter notebook file and the necessary hardware overlay files needed to run the IP on the PYNQ board.
- `vitis`: Contains the source Vitis HLS C files and testbench files. Also contains the hardware register map file for reference.
- `vivado`: Contains screenshots of the Vivado block design, bitstream-device layout, and TCL scripts for generating the respective block designs.

All Vitis source code has base optimizations added to pipeline various loops with the lowest possible Initialization Interval value to resolve Initialization Interval Violations that arise when just running the raw C code.

## Vitis HLS Setup

Create a new Vitis project with the source files included under `/vitis/vitis_source` and the top level function `aes`. Add the testbench files included under `/vitis/vitis_test`. Select the correct hardware part (`xc7z020clg400-1`) with the `Vivado IP Flow Target`, and finish creating the Vitis project.

## Vitis Simulation

Both AXI implementations have dedicated testbenches meant for testing AES encryption and decryption. Running the C Simulation will check the difference of the encryption and decryption output against a golden output data file to validate the C code runs properly.

## Vitis Synthesis

As mentioned above, the baseline C code provided in this repository already has inline pragma directives added as optimizations to resolve Initialization Interval Violations. Running C Synthesis should succeed without error. After C Synthesis, export RTL for Vivado.

## Vivado

Both implementations have TCL scripts included to automatically generate a block design using the IP synthesized by Vitis.

After adding the IP under `Tools->Settings->IP->Repository`, run the respective TCL script to setup the block design (`Tools->Run TCL Script...`), create an HDL Wrapper for the source, and generate bitstream to create the `.bit`, `.tcl`, and `.hwh` hardware overlay files. These have already been generated and provided under `/overlay_files/` for your convenience.

## PYNQ Overlay

After uploading the three hardware overlay files to the PYNQ board, use the given Jupyter notebook files under `/overlay_files/` to test the IP.

**Please note that the overlays do not seem to work for unknown reasons. We debugged this extensively with Yicheng, the ILA to debug IP (https://discuss.pynq.io/t/using-ila-to-debug-ip/2855), and various other methods to determine the cause for the output remaining zero. We therefore decided to stick to design-space exploration/optimizations as our Project Update**