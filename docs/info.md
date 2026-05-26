# ECC Scalar Multiplication

## Project Description

This project implements a compact ECC Scalar Multiplication design targeted for TinyTapeout 1x1 ASIC implementation.

The design demonstrates:
- lightweight ECC datapath concepts
- cryptographic hardware processing
- ASIC-oriented RTL design
- OpenLane RTL-to-GDSII flow compatibility

The design accepts:
- a scalar key (k)
- an ECC point input (Px)

and produces:
- a generated output point (Qx)

using simplified ECC arithmetic.

---

# Design Goal

The primary objective of this project is to demonstrate:
- low-area cryptographic hardware design
- TinyTapeout ASIC integration
- ECC scalar processing concepts
- compact datapath implementation

---

# Simplified ECC Operation

The implemented operation is:

Q = P + k

Where:
- P = input point
- k = scalar/private key
- Q = generated output point

This simplified model is used to:
- reduce ASIC area
- fit TinyTapeout 1x1 constraints
- support OpenLane flow convergence
- simplify educational verification

---

# Hardware Features

- 4-bit ECC datapath
- 8-bit input interface
- 8-bit output interface
- synchronous sequential logic
- low-area architecture
- TinyTapeout compatible

---

# ASIC Compatibility

The project supports:
- RTL simulation
- synthesis
- floorplanning
- placement
- clock tree synthesis
- routing
- GDSII generation

using:
- OpenLane
- SKY130 PDK

---

# Applications

- Secure communication systems
- Lightweight cryptographic hardware
- Educational ASIC projects
- TinyTapeout demonstrations
- Hardware security learning

---

# Author

Dhanush Kulkarni
