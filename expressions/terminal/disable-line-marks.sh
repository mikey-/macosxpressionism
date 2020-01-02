#!/usr/bin/env bash

# ---------------- Functions
function disable_line_marks () {

  printf "%s" "${tcolours[light_cyan]}│  └──${teffects[reset]} Disable the line marks... ";
  defaults write com.apple.Terminal ShowLineMarks -int 0
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

}
