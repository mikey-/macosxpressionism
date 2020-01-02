#!/usr/bin/env bash

# TODO: Split this file into a single file for each dock preference
#       into it's own file

# ---------------- Functions

# Split into dock prefs file
function dock_prefs () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Time to configure the Dock and Mission Control and stuff!";
  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Set the icon size of Dock items to 36 pixels... ";
  defaults write com.apple.dock tilesize -int 36
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Autohide dock... ";
  defaults write com.apple.dock autohide -bool true;
  defaults write com.apple.dock autohide-time-modifier -float 0.5;
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Don’t show recent applications in Dock... ";
  defaults write com.apple.dock show-recents -bool false
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Minimize windows into their application’s icon... ";
  defaults write com.apple.dock minimize-to-application -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Enable highlight hover effect for the grid view of a stack (Dock)... ";
  defaults write com.apple.dock mouse-over-hilite-stack -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Show indicator lights for open applications in the Dock... ";
  defaults write com.apple.dock show-process-indicators -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Don’t group windows by application in Mission Control... ";
  defaults write com.apple.dock expose-group-by-app -bool false
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Don’t automatically rearrange Spaces based on most recent use... ";
  defaults write com.apple.dock mru-spaces -bool false
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Speed up Mission Control animations... ";
  defaults write com.apple.dock expose-animation-duration -float 0.1
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Disable Dashboard... ";
  defaults write com.apple.dashboard mcx-disabled -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  └─${teffects[reset]} Don’t show Dashboard as a Space... ";
  defaults write com.apple.dock dashboard-in-overlay -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
