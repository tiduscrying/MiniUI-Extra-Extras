#!/bin/sh

EMU_TAG=FBA
EMU_EXE=fbalpha

ROM="$1"

EMU_DIR=$(dirname "$0")
mkdir -p "$BIOS_PATH/$EMU_TAG"
mkdir -p "$SAVES_PATH/$EMU_TAG"
HOME="$USERDATA_PATH"
cd "$HOME"
needs-swap
say "Loading!"
picoarch "$EMU_DIR/${EMU_EXE}_libretro.so" "$ROM" &> "$LOGS_PATH/$EMU_TAG.txt"
