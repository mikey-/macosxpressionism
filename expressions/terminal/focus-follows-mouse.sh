#!/usr/bin/env bash

# ---------------- Functions
function termina_focus_follows_mouse () {

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Enable 'focus follows mouse' for Terminal and all X11 apps... ";
  defaults write com.apple.terminal FocusFollowsMouse -bool true;
  defaults write org.x.X11 wm_ffm -bool true;
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

}
