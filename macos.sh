#!/usr/bin/env bash

# ----------------- Functionality
source lib/helpers/init.sh

# Initial tasks and introduction
acknowledgments
warning
close_system_preferences
ask_for_admin

set_computer_name 'mikeBookPro'
disable_audio_on_boot
login_screen_text
password_after_display_off
disable_hibernation
allow_unsigned_apps
enable_scrollbar_when_scrolling
quit_printer_when_finished
disable_app_auto_kill
diable_crash_reporter
reveal_admin_host_info_on_login
language_and_text_formats
terminal_prefs
finder_and_file_prefs
dock_prefs
input_prefs
spotlight_prefs
install_xcode_clt
kill_environment

exit;

# ---------------- Functions
function acknowledgments () {

  stars "🙏🏽 First, some acknowledgments 🙏🏽"

  teffect "underline bold" "A lot"
  echo "of the commands to set macOS defaults settings come from:";

  tcolour "light_cyan" "├─";
  tcolour "blue" $(teffect "bold underline" "https://github.com/mathiasbynens/dotfiles\n");

  tcolour "light_cyan" "├─";
  tcolour "blue" $(teffect "bold underline" "https://github.com/kevinSuttle/macOS-Defaults\n");

  tcolour "light_cyan" "├─";
  tcolour "blue" $(teffect "bold underline" "https://medium.com/@notrab/friendly-os-x-defaults-d7f0cc39f2b3\n");

  stars "🙏🏽 Thank you so much for sharing 🙏🏽"

}

function warning () {

  echo " Now, please be warned: By continuing, your:";
  echo "💀-------------------------------------------------------💀";
  echo " | ☠️ System preferences & macOS Defaults will be set ☠️ |";
  echo "💀------------------------+------------------------------💀";
  echo "                          #";
  echo "                          ####";
  echo "                             #";
  echo "💀---------------------------+---------------------------------💀";
  echo " | ☠️ To do this, you will have to enter you admin password ☠️ |";
  echo "💀---------------------------+---------------------------------💀";
  echo "                             #";
  echo "                             #";
  echo "                             #";
  echo "💀---------------------------+---------------------------------💀";
  echo " | ☠️ To do this, you will have to enter you admin password ☠️ |";
  echo "💀---------------------------+---------------------------------💀";
  echo "                             #";
  echo "                             #";
  echo "                             #";
  read -r -p "\
💀----------------+----------------💀
| ☠️ Press any key to continue ☠️ |
💀----------------+----------------💀
";
  echo "";

}
