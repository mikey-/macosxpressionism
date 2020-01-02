#!/usr/bin/env bash

function move_app () {
  local XPositon=0;
  local YPositon=0;
  local App=processes

  [ -n "$2" ] && XPositon=$2;
  [ -n "$3" ] && YPosition=$3;
  [ -n "$1" ] && App="process \"${1}\"";

  osascript -l AppleScript -e \
    "tell application \"System Events\" to tell ${App}"
    "  set position of windows to {${XPosition}, ${YPosition}}"
    "end tell";
}
