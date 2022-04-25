# MiniUI-Extras
### _Extra Retroarch cores for MiniUI on the Miyoo Mini_ ###
Utilizing the very convenient modularity of MiniUI's structure, we can add a lot of RetroArch cores that already work in Onion!
This initial batch is really only the cores I made for myself based on the systems I wanted to play. Additional cores may be provided upon request (or PR). 

![stinky](https://github.com/tiduscrying/MiniUI-Extras/raw/main/screenshot_000.png) ![stinky2](https://github.com/tiduscrying/MiniUI-Extras/raw/main/screenshot_001.png) ![stinky3](https://github.com/tiduscrying/MiniUI-Extras/raw/main/screenshot_002.png)

Cores are provided AS-IS as I am not the one who compiled them and I will likely not be making any changes to cores in order to get things working. DO REMEMBER to not pester shauninman, the creator of MiniUI, about any of these cores as they are provided unofficially. 

## Installation
- Download the latest release and extract the contents of the zip file to the root of your MiniUI SD card
- Transfer your ROM files into the appropriate folders (don't forget BIOS files for the cores that need them!)
- Eject your SD, insert it into your Miyoo Mini and enjoy! 🎉

## Included Cores (So far)
| System | PAK name | Core | Default ROM Folder | ROM Extensions | Requires BIOS? |
| ------ | -------- | ---- | ------------------ | -------------- |--------------- |
| CPS3 | `CPS3.pak` | `fbalpha2012_cps3_libretro.so` | \Roms\Capcom Play System III (CPS3) | `.zip`,`.chd` | No |
| Doom | `DOOM.pak` | `prboom_libretro.so` | \Roms\Doom (DOOM) | `.wad` | No |
| Final Burn Alpha (2012) | `FBA.pak`  | `fbalpha2012_libretro.so` | \Roms\Final Burn Alpha (FBA) | `.zip`,`.chd` | `neogeo.zip` |
| Atari Lynx | `LYNX.pak` | `handy_libretro.so` | \Roms\Atari Lynx (LYNX) | `.zip`,`.lnx` | `lynxboot.img` |
| NeoGeo Pocket/Pocket Color | `NGP.pak` | `mednafen_ngp_libretro.so` | \Roms\NeoGeo Pocket Color (NGP) | `.zip`,`.ngp`,`.ngc` | No |
| NEC SuperGrafx | `SGFX.pak` | `mednafen_supergrafx_libretro.so` | \Roms\SuperGrafx (SGFX) | `.pce`,`.zip` | No |
| Bandai WonderSwan/WonderSwan Color | `WSC.pak` | `mednafen_wswan_libretro.so` | \Roms\WonderSwan Color (WSC) | `.ws`,`.wsc`,`.zip` | No

## Notes
- If colors are distorted when first launching a ROM, try changing the display filter or scaling.
- Large NeoGeo ROMs take _awhile_ to load, so if you see a black screen
