#!/usr/bin/env bash

function ask_for_admin () {
  echo "Please enter your Administrator password";
  sudo -v
  print "Updating existing sudo timestamp for next 120 seconds";
  while true; do
    sudo -n true;
    sleep 120;
    kill -0 "$$" || exit;
  done 2>/dev/null &
}

function set_computer_name () {
    printf "Setting this computer's name... ";
    sudo scutil --set ComputerName "$1"
    sudo scutil --set HostName "$1"
    sudo scutil --set LocalHostName "$1"
    sudo defaults write\
 /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$1";
    tcolour "light_green" "✓"
}

function close_system_preferences () {
  printf "Closing any open System Preferences panes... ";
  osascript -e 'tell application "System Preferences" to quit';
  tcolour "light_green" "✓"
}

function rebuild_spotlight_index () {
  printf "%s" "Load new settings before rebuilding the index... ";
  killall mds > /dev/null 2>&1
  printf "%s" "✓\n";

  printf "%s" "Make sure indexing is enabled for the main volume... ";
  sudo mdutil -i on / > /dev/null
  printf "%s" "✓\n";

  printf "%s" "Rebuild the index from scratch... ";
  sudo mdutil -E / > /dev/null
  printf "%s" "✓\n";
}

function kill_environment () {

  sudo mdutil -i on / > /dev/null
  killall mds > /dev/null 2>&1
  killall Finder
  killall Dock
  killall SystemUIServer
  killall Terminal

}
