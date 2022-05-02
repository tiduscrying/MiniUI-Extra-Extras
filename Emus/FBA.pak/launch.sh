#!/bin/sh

EMU_EXE=fbalpha
CORES_PATH=$(dirname "$0")

###############################

EMU_TAG=$(basename "$(dirname "$0")" .pak)
ROM="$1"
mkdir -p "$BIOS_PATH/$EMU_TAG"
mkdir -p "$SAVES_PATH/$EMU_TAG"
HOME="$USERDATA_PATH"
cd "$HOME"

if [ $(stat -c%s "$ROM") -gt 10000000 ] ; then
	needs-swap
	show okay.png
	say "Large ROM detected!"$'\n'"Loading with swap-file. Please wait."
	confirm
fi

picoarch "$CORES_PATH/${EMU_EXE}_libretro.so" "$ROM" &> "$LOGS_PATH/$EMU_TAG.txt"