# ECC Scalar Multiplication 

## TinyTapeout 1x1 Tile ASIC Project

This project implements a compact ECC-inspired Scalar Multiplication  designed for TinyTapeout ASIC implementation using Verilog HDL.

The design demonstrates:
- ECC scalar processing
- public key style generation
- secure cryptographic datapath concepts
- RTL-to-GDS ASIC implementation flow

---

# Project Overview

The accelerator performs a simplified ECC-style operation:

Q = P + k

Where:
- P = input elliptic curve point
- k = scalar/private key
- Q = generated output/public key

This lightweight implementation is optimized for:
- TinyTapeout 1x1 tile area
- SKY130 ASIC flow
- OpenLane RTL-to-GDS flow
- educational cryptographic hardware demonstration

---

# Features

- TinyTapeout compatible
- Compact 1x1 tile implementation
- Verilog RTL design
- OpenLane compatible
- GTKWave simulation support
- ASIC synthesis ready
- Low-area ECC-inspired datapath

---

# Module Description

| Module | Function |
|--------|-----------|
| tt_um_ecc_scalar | Top-level ECC scalar accelerator |

---

# IO Mapping

## Inputs

| Pin | Description |
|-----|-------------|
| ui_in[3:0] | ECC point input Px |
| ui_in[7:4] | Scalar key k |

## Outputs

| Pin | Description |
|-----|-------------|
| uo_out[3:0] | ECC output Qx |
| uio_out[0] | done signal |

---

# Functional Operation

Example:

| Input | Value |
|------|------|
| Px | 3 |
| k | 5 |

Output:

Qx = 8

---

# Simulation

## Compile

```bash
iverilog -o ecc_out tt_um_ecc_scalar.v tb.v
```

## Run

```bash
vvp ecc_out
```

## Open Waveform

```bash
gtkwave tb.vcd
```

---

# ASIC Flow

This project supports:
- RTL Simulation
- Verilog Synthesis
- OpenLane Physical Design
- SKY130 Standard Cell Mapping
- GDSII Generation

---

# Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- OpenLane
- OpenROAD
- Yosys
- SKY130 PDK

---

# Applications

- Secure V2X Communication
- Cryptographic Hardware Education
- ASIC Design Learning
- ECC Accelerator Demonstration
- Embedded Security Systems

---

# Author

Dhanush Kulkarni

---

# License

Apache-2.0
