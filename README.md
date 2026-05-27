[![gds](https://github.com/CambridgeinstitutetechnologyBLR-Dhanush/CIT_ECC/actions/workflows/gds.yaml/badge.svg)](https://github.com/CambridgeinstitutetechnologyBLR-Dhanush/CIT_ECC/actions/workflows/gds.yaml)

[![docs](https://github.com/CambridgeinstitutetechnologyBLR-Dhanush/CIT_ECC/actions/workflows/docs.yaml/badge.svg)](https://github.com/CambridgeinstitutetechnologyBLR-Dhanush/CIT_ECC/actions/workflows/docs.yaml)

[![test](https://github.com/CambridgeinstitutetechnologyBLR-Dhanush/CIT_ECC/actions/workflows/test.yaml/badge.svg)](https://github.com/CambridgeinstitutetechnologyBLR-Dhanush/CIT_ECC/actions/workflows/test.yaml)

# ECC Scalar Multiplication

## TinyTapeout 1x1 Tile ASIC Project

This project implements a compact ECC Scalar Multiplication design using Verilog HDL for TinyTapeout ASIC implementation.

The design demonstrates:
- ECC scalar processing
- public key generation concepts
- cryptographic datapath implementation
- RTL-to-GDS ASIC flow

---

# Project Overview

The design performs a simplified ECC-style operation:

Q = P + k

Where:
- P = input elliptic curve point
- k = scalar/private key
- Q = generated output point

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
- Low-area ECC datapath

---

# Module Description

| Module | Function |
|--------|-----------|
| tt_um_ecc_scalar | Top-level ECC scalar multiplication module |

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
- Cryptographic Hardware Learning
- ASIC Design Education
- ECC Hardware Demonstration

---

# Author

Dhanush Kulkarni

---

# License

Apache-2.0
