#!/usr/bin/env bash

# ---------------- Functions

function language_and_text_formats () {

  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Set language and text formats... ";
  defaults write NSGlobalDomain AppleLanguages -array "en" "nl"
  defaults write NSGlobalDomain AppleLocale -string "en_GB@currency=AUD"
  defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
  defaults write NSGlobalDomain AppleMetricUnits -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
