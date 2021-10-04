# Microprocessor systems in telecommunications
  Learning material and examples for course TK402 at FE Tuzla

# Software requirements
  For this course you need to have:
  - Linux operating system (Ubuntu),
  - Code editor (Geany,Vim,etc...)

# Hardware requirements
For this course we will need following components:
- STM32F407 Disco Board (https://www.st.com/en/evaluation-tools/stm32f4discovery.html)
- USB 2.0 to TTL UART Serial Converter CP2102 (https://www.ebay.com/itm/1PCS-6Pin-USB-2-0-to-TTL-UART-Serial-Converter-CP2102-STC-Replace-Ft232/284022352349?hash=item42210d29dd:g:1y4AAOSwLTZfbBhs)
- Wire jumpers [MM,FF,MF] (https://www.ebay.com/itm/40PCS-20cm-2-54MM-FF-FM-MM-Dupont-wire-jumper-cables-male-to-female-For-Arduino/312724733910?hash=item48cfd8bfd6:g:05sAAOSwlbZdSZ6E)

# Toolchain setup

1. Install editor of your choice. We will be using Geany. To install geany run following commands in the terminal
```
sudo apt-get update
```
```
sudo apt-get install geany
```

2. Open geany and go to the Edit->Preferences->Tools. Change the line

```
x-terminal-emulator -e "/bin/sh %c"
```
to

```
gnome-terminal -x "/bin/sh" %c
```

Save the changes and inside the terminal run the following command:
```
sudo apt-get install libvte-dev
```

After this, restart the geany and in the left bottom corner you should see the tab **Terminal**.

3. Clone the [GitHub repository](https://github.com/semir-t/msut).
4. Download the file and extract it to the cloned github repository.
5. Copy the udev rules by executing following command
```
sudo cp docs/49-stlinkv2.rules /etc/udev/rules.d/
```
```
udevadm control --reload-rules && udevadm trigger
```
6. Change the directory to examples/LAB01/blink-soft-circle/ and runk the following command
```
make
```

You should see following output:
```
arm-none-eabi-objcopy -O ihex main.elf main.hex
arm-none-eabi-objcopy -O binary main.elf main.bin
ls -l main.bin
-rwxrwxr-x 1 student student 3484 Nov 5 13:23 main.bin
``` 

7. Install the Linux system libraries
```
sudo apt-get install build-essential git flex bison libgmp3-dev libmpfr-dev
```
```
sudo apt-get install libncurses5-dev libhidapi-hidraw0
```
```
sudo apt-get install libmpc-dev autoconf texinfo libtool libftdi-dev
```
```
sudo apt-get install libusb-1.0-0-dev zlib1g zlib1g-dev python-yaml
```
```
sudo apt-get install libc6-i386
```

8. Connect you STM32 Disco board

9. Run the following command
```
make upload
```
You should see following output:
```
      -------------------------------------------------------------------
                        STM32CubeProgrammer v2.6.0                  
      -------------------------------------------------------------------

ST-LINK SN  : 066DFF505252836687075844
ST-LINK FW  : V2J37M26
Board       : STM32F4DISCOVERY
Voltage     : 2,90V
SWD freq    : 4000 KHz
Connect mode: Normal
Reset mode  : Software reset
Device ID   : 0x413
Revision ID : Rev Y
Device name : STM32F405xx/F407xx/F415xx/F417xx
Flash size  : 1 MBytes (default)
Device type : MCU
Device CPU  : Cortex-M4



Memory Programming ...
Opening and parsing file: main.bin
  File          : main.bin
  Size          : 3148 Bytes
  Address       : 0x08000000 


Erasing memory corresponding to segment 0:
Erasing internal memory sector 0
Download in Progress:


File download complete
Time elapsed during download operation: 00:00:00.357
      -------------------------------------------------------------------
                        STM32CubeProgrammer v2.6.0                  
      -------------------------------------------------------------------

ST-LINK SN  : 066DFF505252836687075844
ST-LINK FW  : V2J37M26
Board       : STM32F4DISCOVERY
Voltage     : 2,90V
SWD freq    : 4000 KHz
Connect mode: Normal
Reset mode  : Software reset
Device ID   : 0x413
Revision ID : Rev Y
Device name : STM32F405xx/F407xx/F415xx/F417xx
Flash size  : 1 MBytes (default)
Device type : MCU
Device CPU  : Cortex-M4


Hard reset is performed

```
10. You should see LEDs turning On and Off on your disco board.

11. Install the picocom by running following command in terminal
```
sudo apt-get install picocom
```
