#!/bin/sh

EMU_EXE=FAKE08
CORES_PATH=$(dirname "$0")
# removed library path since it doesn't appear to be required anymore :shrug:

###############################

EMU_TAG=$(basename "$(dirname "$0")" .pak)
ROM="$1"
export ROMS_PATH=$(dirname "$1")
HOME=$CORES_PATH
cd "$HOME"
mkdir -p "$SAVES_PATH/$EMU_TAG"

#show shaun's awesome warn prompt
warn

"$CORES_PATH/${EMU_EXE}" "$ROM" &> "$LOGS_PATH/$EMU_TAG.txt"
