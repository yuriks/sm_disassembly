# sm_disassembly
 A relocatable disassembly of Super Metroid (SNES) based on P.JBoy's bank logs.

 Assembles with asar v1.81: https://github.com/RPGHacker/asar/releases/tag/v1.81

 This project was released when it was considered "usable" but more work is planned.


## Getting Started
 1. Have python3 installed. Windows users may also need to setup their PATH environment variable so python can be accessed from anywhere.
 2. If you're on Linux, mark tools/asar-standalone as executable.
 3. Place your original, unheadered Super Metroid NTSC ROM in the root directory and name it `Super Metroid.sfc`.
 4. Run `create_data.bat` on Windows or `create_data.sh` on Linux to extract assets from your original ROM.
 5. Run `build_rom.bat` on Windows or `build_rom.sh` on Linux to assemble the ROM from source.


## Contributing
 Feel free to contribute to the project by creating an issue, opening a pull request, or contacting me directly.


## Using with SMART
This can be used to build a base ROM containing all of your ASM modifications, and use SMART to
edit and manage data for you.

1. In SMART, use `smart_project/` as the project directory. "Load from ROM" from a vanilla ROM
   and save to XML. Alternatively, bring your own project and rename it to match.
2. Edit `main.asm` and make sure options `ANCHOR_LABELS` and `KEEP_SMART_DEPS` are enabled.
3. Run `build_smart.cmd`. This will also automatically update your `project.xml` freespace
   configuration. (Existing ranges will be replaced!)
4. Open or restart SMART so it will pick up the new `project.xml`.
5. Run "Tools -> Scan ROM for freespace". This ensures space used by data imported by SMART is
   made available for exporting too. (It is normal to get allocation failure errors or messages
   before this step.)
6. "Load from XML", and edit. To export to ROM just use "Save to ROM" as normal.


## Special Thanks
 This project relies heavily on P.JBoy's bank logs: https://patrickjohnston.org/bank/index.html

 Originally created with DiztinGUIsh: https://github.com/IsoFrieze/DiztinGUIsh
