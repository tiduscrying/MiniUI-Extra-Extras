#!/bin/sh

EMU_EXE=FAKE08
CORES_PATH=$(dirname "$0")
export LD_LIBRARY_PATH=$CORES_PATH:$LD_LIBRARY_PATH

###############################

EMU_TAG=$(basename "$(dirname "$0")" .pak)
ROM="$1"
HOME=$CORES_PATH
cd "$HOME"
warn
"$CORES_PATH/${EMU_EXE}" "$ROM" &> "$LOGS_PATH/$EMU_TAG.txt"
