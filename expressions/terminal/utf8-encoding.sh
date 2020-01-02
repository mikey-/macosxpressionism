#!/usr/bin/env bash

# ---------------- Functions
function terminal_utf8_encoding () {

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} UTF-8 encoding in Terminal... ";
  defaults write com.apple.terminal StringEncodings -array 4;
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

}
