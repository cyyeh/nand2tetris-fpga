# Project 1: Hack1-minimal
## Scope
Build the Hack-CPU connected to the two buttons and the two leds of iCE40-HX1K-EVB. This way we can communicate with hack-CPU at runtime pressing buttons and looking at leds. We write little assembler programms to test CPU, buttons and leds.

## Phyical requirement (outside FPGA)
The board iCE40-HX1K-EVB has a cristal clock oscillator of 100MHz on board, which will be used to generate to clock signal. Our Hack System needs slower clockrate of 33.333333 MHz, so we will divide the clock frequency with hardware module (to be implemented in verilog). The board iCE40-HX1K-EVB comes with two buttons and to leds connected to FPGA (refer to [datasheets/iCE40HX1K-EVB](../datasheets/iCE40HX1K-EVB_Rev_B.pdf)). We will connect our Hack system with the buttons and the leds to have possibility of input and output.

|wire|iCE40HX1K (FPGA)|
|-|-|
|clk_in (100MHz)|15|
|but[0]|41|
|but[1]|42|
|led[0]|40|
|led[1]|51|

* Add the pin numbering to `Hack1/Hack1.pcf`

### Layer 2: Hardware (inside FPGA)
* Implement and simulate [`ALU`](ALU).
* Implement and simulate [`Memory`](Memory).
* Implement and simulate [`Clock`](Clock).
* Implement and simulate [`PC`](PC).
* Implement and simulate [`CPU`](CPU).

### Layer 3: Computer Architecture
* Build [`Hack1`](Hack1) with memory map:

 |address | memory|R/W|function|
 |-|-|-|-|
 |0-2047| RAM|R/W|R0--R15, static, stack, heap|
 | 8192 | but|R/W|0 = button pressed, 1 = button released|
 | 8193 | led|R/W|0 = led off, 1 = led on|


### Layer 4: Assembler

* Run [`asm/led`](asm/led) in simulation and real hardware on Hack1.
* Run [`asm/blinky`](asm/blinky) in simulation and real hardware on Hack1.

## Conclusion

Hack-CPU is running!