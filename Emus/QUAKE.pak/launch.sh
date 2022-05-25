#!/bin/sh

EMU_EXE=tyrquake

###############################

CORES_PATH=$(dirname "$0")
EMU_TAG=$(basename "$(dirname "$0")" .pak)
ROM="$1"
mkdir -p "$BIOS_PATH/$EMU_TAG"
mkdir -p "$SAVES_PATH/$EMU_TAG"
HOME="$USERDATA_PATH"
cd "$HOME"

# Launch a menu, explaining to the user that the game won't be auto-saved
if [ ! -f "$LOGS_PATH/$EMU_TAG-warning-done" ]; then
  show okay.png
  say "This game is not compatible"$'\n'"with save states."$'\n'"It will not be auto-saved"$'\n'"when powering off."$'\n'
  confirm only
  touch "$LOGS_PATH/$EMU_TAG-warning-done"
fi

picoarch "$CORES_PATH/${EMU_EXE}_libretro.so" "$ROM" &> "$LOGS_PATH/$EMU_TAG.txt"