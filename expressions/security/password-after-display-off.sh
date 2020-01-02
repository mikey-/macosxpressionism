#!/usr/bin/env bash

# ---------------- Functions

function password_after_display_off () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Configure password prompt after screen saver/display sleep... ";
  defaults write com.apple.screensaver askForPassword -int 1;
  defaults write com.apple.screensaver askForPasswordDelay -int 0;
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
