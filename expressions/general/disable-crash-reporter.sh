#!/usr/bin/env bash

# ---------------- Functions

function disable_crash_reporter () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Disable the crash reporter... ";
  defaults write com.apple.CrashReporter DialogType -string "none"
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
