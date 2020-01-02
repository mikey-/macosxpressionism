#!/usr/bin/env bash

# ---------------- Functions

function quit_printer_when_finished () {
  printf "%s" "${tcolours[light_cyan]}├─${teffects[reset]} Automatically quit printer app once the print jobs complete... ";
  defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";
}
