# ASCON Testbench Guide

## Requirements
  - Cadence Xcelium installed 

Check that the tool is available:
```
xrun -version
```

## Prepare the testbench

Ensure that `testbench/aead_parameters.v` exists and contains the required
parameters and test inputs.

From the repository root, enter the testbench directory:

```bash
cd testbench
```

## Select the implementation
| Run | Testbench top | TI | Source list |
| :---:   | :---: | :---: | :---: |
| Encryption | tb_encryption | 0 | program_files_enc.txt |
| Encryption | tb_encryption | 1 | program_files_enc.txt |
| Decryption | tb_decryption | 0 | program_files_dec.txt |
| Decryption | tb_decryption | 1 | program_files_dec.txt |

Fault protection is disabled by default

## 1. Encryption
```
sed -i 's/^`define TI .*/`define TI 0/' aead_parameters.v

xrun -64bit -f program_files_enc.txt -top tb_encryption -access +rwc -l encryption.log
```

## 2. Encryption with Threshold implementation
```
sed -i 's/^`define TI .*/`define TI 1/' aead_parameters.v

xrun -64bit -f program_files_enc.txt -top tb_encryption -access +rwc -l encryption_ti.log
```

## 3. Decryption
```
sed -i 's/^`define TI .*/`define TI 0/' aead_parameters.v

xrun -64bit -f program_files_dec.txt -top tb_decryption -access +rwc -l decryption.log
```

## 4. Decryption with Threshold implementation
```
sed -i 's/^`define TI .*/`define TI 1/' aead_parameters.v

xrun -64bit -f program_files_dec.txt -top tb_decryption -access +rwc -l decryption_ti.log
```
