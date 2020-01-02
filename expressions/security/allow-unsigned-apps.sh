#!/usr/bin/env bash

# ---------------- Functions

function allow_unsigned_apps () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Allow apps which were installed from the web to launch... ";
  defaults write com.apple.LaunchServices LSQuarantine -bool false;
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
