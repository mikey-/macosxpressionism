#!/usr/bin/env bash

# ---------------- Functions

function enable_scrollbar_when_scrolling () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Only show scroll bars when scrolling... ";
  defaults write NSGlobalDomain AppleShowScrollBars -string WhenScrolling
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
