#!/usr/bin/env bash

function close_system_preferences () {
  # tcolour "light_cyan" "├─";
  # printf "Closing any open System Preferences panes... ";
  osascript -e 'tell application "System Preferences" to quit';
  # tcolour "light_green" "✓"
}
