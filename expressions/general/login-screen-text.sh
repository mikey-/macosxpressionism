#!/usr/bin/env bash

# ---------------- Functions

function login_screen_text () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Configure login screen text... ";
  defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText -string "Hello! Welcome to tha MikeBook Pro! You should login I guess? (^:";
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
