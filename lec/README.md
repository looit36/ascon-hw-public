# ASCON LEC Guide

## Requirements
	- Cadence Conformal LEC

Check that the tool is available:
```
lec -version
```

## Prepare the LEC

Ensure that 'syn/outputs/ascon_netlist.v' exists.

From the repository root, enter the LEC folder directory:

```bash
cd lec
```
## Run the LEC flow

```
lec -XL -dofile ascon.do
```
