# Reconfigurable-LFSR-VLSI-Project
Design and Implementation of a Reconfigurable Linear Feedback Shift Register (LFSR) for VLSI IC Testing

TABLE OF CONTENTS
-----------------
1) Project Overview
2) Project Structure
3) Features
4) Getting Started
   - Prerequisites
   - Installation
   - Usage
5) Modules
6) Simulation
7) Results
8) Contributing
9) License
10) Contact

PROJECT OVERVIEW
----------------
This project focuses on designing a reconfigurable Linear Feedback Shift Register (LFSR) for use in VLSI IC testing. The LFSR design is implemented for both ASIC and FPGA environments, allowing for flexible pseudo-random sequence generation, which is essential in testing and validation of digital circuits. The project combines a basic LFSR and a configurable LFSR within a top-level module, providing the flexibility to switch between fixed and configurable sequences.

PROJECT STRUCTURE
-----------------
├── src

│   ├── lfsr.v

│   ├── lfsr_config.v

│   ├── lfsr_full_top.v

├── testbench

│   ├── lfsr_tb.v

│   ├── lfsr_config_tb.v

│   ├── lfsr_full_top_tb.v

├── docs

│   ├── README.md

│   ├── design_specifications.pdf

├── sim

│   ├── lfsr_waveform.vcd

│   ├── lfsr_config_waveform.vcd

│   ├── lfsr_full_top_waveform.vcd

FEATUERS
--------
-**Basic LFSR:** Generates a pseudo-random sequence based on a fixed set of taps.

-**Configurable LFSR:** Allows dynamic configuration of seed values for sequence generation.

-**Top-Level Integration:** Combines both LFSRs in a unified module to operate them simultaneously.

GETTING STARTED
---------------
>>**Prerequisites**

-AMD Xilinx Vivado (for simulation and synthesis)

-Basic knowledge of Verilog HDL

>>**Installation**
-Clone this repository:
 git clone https://github.com/yourusername/reconfigurable-lfsr.git
 
-Open the project in AMD Xilinx Vivado.

>>**Usage**

-Add the src and testbench files to your Vivado project.

-Run the simulation using the provided testbench files.

-Observe the waveform outputs for each module.

MODULES

-**lfsr.v:** Implements the basic LFSR module with a fixed set of taps.

-**lfsr_config.v:** Implements the configurable LFSR, allowing dynamic seed values.

-**lfsr_full_top.v:** Integrates the basic and configurable LFSRs in a single top-level module.

SIMULATION

-Use the provided testbenches (lfsr_tb.v, lfsr_config_tb.v, lfsr_full_top_tb.v) to simulate each module.

-The waveforms will be generated in the sim directory as .vcd files.

RESULTS

The project successfully generates pseudo-random sequences using both fixed and configurable LFSRs. 

The integrated top-level module (lfsr_full_top) allows for flexible testing and comparison of both LFSR types.

LICENCE

This project is licensed under the MIT License - see the LICENSE file for details.

CONTACT

For any inquiries or support, please contact madhupreetha.nitt@gmail.com





