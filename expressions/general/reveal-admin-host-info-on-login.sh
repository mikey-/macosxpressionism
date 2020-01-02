#!/usr/bin/env bash

# ---------------- Functions

function reveal_admin_host_info_on_login () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Reveal admin host info in the login window... ";
  sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
