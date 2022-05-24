#!/bin/sh

EMU_EXE=FAKE08
CORES_PATH=$(dirname "$0")
export LD_LIBRARY_PATH=$CORES_PATH:$LD_LIBRARY_PATH

###############################

EMU_TAG=$(basename "$(dirname "$0")" .pak)
ROM="$1"
HOME=$CORES_PATH
cd "$HOME"

# Launch a menu, explaining to the user that the game won't be auto-saved
if [ ! -f ./initial-warning-done ]; then
  show okay.png
  say "PICO-8 is a standalone app,"$'\n'" IT WILL NOT BE AUTO-SAVED"$'\n'"when powering off!"$'\n'
  confirm only
  touch ./initial-warning-done
fi

"$CORES_PATH/${EMU_EXE}" "$ROM" &> "$LOGS_PATH/$EMU_TAG.txt"
