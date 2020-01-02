#!/usr/bin/env bash

# ---------------- Functions
function terminal_secure_keyboard_entry () {

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Enable Secure Keyboard Entry in Terminal... ";
  defaults write com.apple.terminal SecureKeyboardEntry -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

}
