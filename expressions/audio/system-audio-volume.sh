#!/usr/bin/env bash

# ----------------- Functionality

function disable_audio_on_boot () {
  #printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Disable audio on boot... ";
  sudo nvram SystemAudioVolume=" ";
  #printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
