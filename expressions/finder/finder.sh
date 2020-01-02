#!/usr/bin/env bash

# TODO: Split this file into a single file for each finder preference
#       into it's own file

# ---------------- Functions

# Split into finder and prefs file
function finder_prefs () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Finder and other things to do with files... ";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Set sidebar icon size to small... ";
  defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Expand save panel by default... ";
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Save screenshots in PNG format... ";
  defaults write com.apple.screencapture type -string "png"
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Set ${HOME} as the default location for new Finder windows... ";
  defaults write com.apple.finder NewWindowTarget -string "PfLo"
  defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Show hidden files by default... ";
  defaults write com.apple.finder AppleShowAllFiles -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_gray]}│  ├─${teffects[reset]} Show all files in Finder... ";
  defaults write com.apple.finder AppleShowAllFiles YES;
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Show all filename extensions... ";
  defaults write NSGlobalDomain AppleShowAllExtensions -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Show status bar... ";
  defaults write com.apple.finder ShowStatusBar -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Show path bar... ";
  defaults write com.apple.finder ShowPathbar -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} ... ";
  defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Search the current folder by default... ";
  defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Disable the warning when changing a file extension... ";
  defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Avoid creating .DS_Store files on network or USB volumes... ";
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Use Column view in all Finder windows by default... ";
  defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Show the /Volumes folder... ";
  sudo chflags nohidden /Volumes
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  └─${teffects[reset]} Disable the warning before emptying the Trash... ";
  defaults write com.apple.finder WarnOnEmptyTrash -bool false
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
