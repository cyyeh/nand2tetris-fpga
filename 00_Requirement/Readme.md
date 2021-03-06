# Requirement
## FPGA-Board
In this project we will implement the Hack computer of the nand2tetris course in real hardware. This is done with a development board featuring a so called field programmable array (FPGA). The fpga is a small piece of silicon holding lots of logic cells (LC) and blockram (BRAM), which can be routed programmatically.

![](doc/fpga.png)

On a typical fpga-develompent board you will find:
* FPGA-chip (ICE40): holds logic cells and block ram, which can be routed programmatically
* Serial RAM: holds the bitstream data, which is a binary representation of the circuits, you want to implement on the FPGA. At startup FPGA loads bitstream from serial RAM and configures its logic cells to become the machine you want the FPGA to be.
* USB (A): some boards have a USB connector. This is needed to upload the bitstream file to the serial RAM.
* (B): Boards without a USB connector need an external programmer to upload code to the board.
* LED, BUT: Most development boards come with some leds and buttons. This are user programmable and can be used to enter data or for debugging.
* GPIO: All boards come with general purpose in-/output pins. This pins can be used to connect external hardware. We will use this pins to connect an LCD screen, SD-Card, Speaker and Touchpanel.
* SRAM: some boards have a static RAM chip on board. This is usefull, if more memory is needed than available with blockram inside FPGA. If you want to run tetris or pong on your Hack, you should consider to look for a board with SRAM.

In this tutorial we use FPGA-boards from Olimex, which have the nice property of having SRAM (256x16bit) on board.

|Board|FPGA|LC|BRAM|SRAM|
|--|---|--|--|--|
|Olimex iCE40-HX1K-EVB|iCE40-HX1K|1280|64K Bits|256K x 16 bit|
|Olimex iCE40-HX8K-EVB|iCE40-HX8K|7680|128K Bits|256K x 16 bit|

Our final implementation of Hack needs ~1200 Logic cells! So the smaller (nicer form factor) and cheaper iCE40HX1K-EVB is ok. The BRAM of the smaller board translates to 4K x 16 bit of RAM for stack/heap of Hack and the external SRAM is used to implement a 64K x 16 bit instruction memory, which can be loaded with Hack code at boot time.

## Tools

The modules of our Hack computer (ALU, CPU, Register, Memory, IO) are implemented in verilog, a standard hardware description language similar to HDL from nand2tetris. So we need tools to translate Verilog-code to the so called bitstream, which is a binary representation of all the wires between the logic cells we want to activate. Finally we need tools to upload the bitstream file to the fpga board.

We will use iCE40-FPGA from Lattice Semiconductors, because they have the nice property that there exists a complete free and open source toolchain [Project Icestorm](http://www.clifford.at/icestorm/) for programming:
* YoSYS: Syntesize the verilog code
* nextpnr: place and route tool
* iceprog: programmer
* gtkwave: tool to simulate and visualize signals in fpga circuits

![](doc/soft.png)

To run Hack we also need some Hack-code. The simpler projects like a blinking LED can be programmed direcly in Assembler. Harder tasks like the driver for the LCD-screen are programmed in Jack, translated for the virtual machine and finally compiled to Hack code.

## Get started
### Buy the hardware ...

For projects 1+2 any FPGA board will work. For projects 3-5 you need FPGA-board with external SRAM on board, to store larger Hack files. The last projects 6-9 connect to external hardware like  LCD-screen and SD-card reader. The project has been tested with:

* iCE40 Board: [iCE40HX1K-EVB](https://www.olimex.com/Products/FPGA/iCE40/) or [iCE40HX8K-EVB](https://www.olimex.com/Products/FPGA/iCE40/)
* Programmer: [Olimexino-32u4](https://www.olimex.com/Products/Duino/AVR/OLIMEXINO-32U4/open-source-hardware)
* 2.8 Inch LCD color screen with resistive touch panel: [MOD-LCD2.8RTP](https://www.olimex.com/Products/Modules/LCD/MOD-LCD2-8RTP)
* SD-Card connector: [MOD-SDMMC](https://www.olimex.com/Products/Modules/Interface/MOD-SDMMC/open-source-hardware)

Check the bill of material and consider to buy at Olimex Ltd., the company with the highest number of registered OSHW-projects.

![](doc/BOM.png)


### ... install the tools ...
#### apio
Apio (pronounced [??a.pjo]) is a multiplatform toolbox, with static pre-built packages, project configuration tools and easy command interface to verify, synthesize, simulate and upload your verilog designs.

 Visit [apio](https://github.com/FPGAwars/apio) and follow the install instruction. This will automatically install the whole toolchain consisting of:
 * iCE40 tools: [Project Icestorm](http://www.clifford.at/icestorm/)
 * Signal visualizer: [gtkwave](http://gtkwave.sourceforge.net/)

**Note:** apio will support Olimex from version 0.5.5. on. Meanwhile you should install apio with the following command, to have support for olimex boards:
```
$ pip install -U git+https://github.com/FPGAwars/apio.git@develop#egg=apio
```
 To learn usage of apio do the example projects provided by apio.
```
$ apio install examples
$ apio examples -d iCE40-HX1K-EVB/leds
$ cd iCE40-HX1K-EVB/leds
$ apio sim
$ apio build
$ apio upload
```

#### programmer Olimexino-32u4
If you go with Olimex boards you additionally have to install the programmer software [iceprogduino](https://github.com/OLIMEX/iCE40HX1K-EVB/tree/master/programmer/olimexino-32u4%20firmware) on your Olimexino-32u4.

Test the programmer with the test project provided by Olimex.

#### Jack-Hack-tools

Jack-Hack-Tools: JackCompiler, VirtualMachine Translator and Assembler vor Hack should be developed by yourself. Follow guidelines at [nand2tetris](https://www.nand2tetris.org/).

### ... and do some verilog examples

There is no need to learn much verilog. Just dig into the example `Xor` and learn how to "translate" your hdl-files from nand2tetris into verilog.

If you like to have some verilog-background I recommend to do the tutorial of Juan Gonz??lez-Gomez (Obijuan), which starts at absolute beginners level [open-fpga-verilog-tutorial](https://github.com/Obijuan/open-fpga-verilog-tutorial/), best tutorial!

### Project
* [Build and test module `Xor`](Xor)