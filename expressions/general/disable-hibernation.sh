#!/usr/bin/env bash

# ---------------- Functions

function disable_hibernation () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Disable hibernation... ";
  sudo pmset -a hibernatemode 0
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
