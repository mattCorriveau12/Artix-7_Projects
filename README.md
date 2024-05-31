# Artix-7_Projects


**Progress Updates:**
- At this point I've gotten a number of IO functioning. The FPGA properly reads the state of the input switches and displays the state of the switches via corresponding LED bars. The FPGA outputs data to the 7-Segment displays and the next step in the development process is to program the FPGA with some arithmatic/logic operating modes so that the FPGA can take data from switch input A and switch input B and output the result of those ALU functions to the 7-segment display.
  - https://photos.app.goo.gl/TwP19Rwzj86Ggr3LA

**Project Goals**

Develop a simple 4-function calculator deployable to both Xilinx Artix-7 and Altera Cyclone IV FPGAs.

Planned Specs:

Input Options to include:
- Dip Switches 
- Simple Push Buttons
- Multiplexed Push Buttons
- Keyboard Input over UART

Output Options to Include:
- LEDs
- 7-Segment Displays
- UART to PC Monitor 
- UART to LED Display 
- VGA to PC Monitor
- SPI LED Display
- I2C LED Display

**Hardware Details:**

These projects use the following hardware from AliExpress.
- QMTECH Xilinx FPGA Artix7 Artix-7 XC7A100T DDR3 Core Board 
  - https://www.aliexpress.us/item/2255799983688709.html?spm=a2g0o.order_list.order_list_main.31.18a11802Av18Sl&gatewayAdapt=glo2usa

- QMTECH Daughter Board with Rpi RP2040
  - https://www.aliexpress.us/item/3256804908340025.html?spm=a2g0o.order_list.order_list_main.21.18a11802Av18Sl&gatewayAdapt=glo2usa

QMTECH Artix7 Github
- https://github.com/ChinaQMTECH/QMTECH_XC7A75T-100T-200T_Core_Board/tree/main/XC7A100T
- https://github.com/ChinaQMTECH/DB_FPGA_with_RP2040?spm=a2g0o.detail.1000023.1.6f6dDBaeDBaeJl

**Revision History:**

Project 0 - Switch Toggles LEDs
* Pressing SW2 lights D6. Releasing SW2 extinguishes D6.
  - https://photos.app.goo.gl/1gr5Epai7WcX8c126

Project 1 - 24 Switches Toggle 24 LEDs
* 8-Bit LED bars show status of 8-Bit DIP switches
  - https://photos.app.goo.gl/pfgtzYZHUgSeG3YZ7

Project 2 - 7-Segment Displays

- Project_2a
  - Use Switches to Toggle Display Segments on Digits 1-4 simultaneously
    - https://photos.app.goo.gl/rNCxDajvwLQH4UdS7

- Project_2b
  - Great a clock divider to be used for 7-Seg Display segment cycling
    - https://photos.app.goo.gl/ztFPK7gWySNrTYqY8
    
- Project_2c 
  - Use Switches to Toggle Display Segments on Digits 1-4 individually
    - https://photos.app.goo.gl/Dm8aUjjWqoYuQM9HA  

- Project_2d 
  - Use Switches to Toggle Display Segments on Digits 1-4 individually
    - https://photos.app.goo.gl/9WG9ULwq9biyPEaF6
      
- Project_2e
  - Cycle through 0-F on all 4 7-Segment Displays @1Hz
    - https://photos.app.goo.gl/ZjH9NgbedZftRWqP7

Project 3 - OpCodes

- Project_3a
  - 7-Seg Display Digits 1-3 Cycle. Switches 16-23 select OpCode and OpCode selected outputs to 7-Seg digit 4. 
    - https://photos.app.goo.gl/TwP19Rwzj86Ggr3LA
