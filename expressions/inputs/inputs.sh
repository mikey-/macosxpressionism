#!/usr/bin/env bash

function input_prefs () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Input Settings... ";

  # printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Checking for Magic Keyboard... ";
  # BTK_BATTERY_PERCENT=$(ioreg -c AppleBluetoothHIDKeyboard |grep '"BatteryPercent" =');
  # RESULT=$?;
  # printf "${tcolours[light_green]}✓${teffects[reset]}\n";
  # if [ $RESULT -eq 0 ]; then
  #   printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Found Magic Keyboard, configuring stuff... ";
  #   # Add Magic Keyboard battery to PS1
  #   printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
  # elif [ $RESULT -eq 1 ]; then
  #   printf "%s" "${tcolours[light_cyan]}│  └─${teffects[reset]} No Magic Keyboard found, moving on\n";
  # fi

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Reduce key repeat interval... ";
  defaults write NSGlobalDomain KeyRepeat -int 0.02;
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Increase key repeat trigger interval... ";
  defaults write NSGlobalDomain InitialKeyRepeat -int 12;
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Disable automatic capitalization ... ";
  defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Assigning caps lock key to control...";
  hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x7000000E0}]}'
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

  # printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Checking for Magic Trackpad... ";
  # MTP_BATTERY_PERCENT="$(ioreg -c BNBTrackpadDevice | grep '"BatteryPercent" =')";
  # RESULT=$?;
  # printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
  # if [ $RESULT -eq 0 ]; then
  #   printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Found Magic Trackpad, configuring stuff... ";
  #   # Add Magic Trackpad battery to PS1
  #   printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
  # elif [ $RESULT -eq 1 ]; then
  #   printf "%s" "${tcolours[light_cyan]}│  └─${teffects[reset]} No Magic Trackpad found, moving on\n"
  # fi
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Setting defaults for built-in trackpad\n";
  printf "%s" "${tcolours[light_cyan]}│  └─${teffects[reset]} Enable tap to click for this user and for the login screen... ";
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
  defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
  defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

}
