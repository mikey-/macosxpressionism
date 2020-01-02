#!/usr/bin/env bash

#export RESET="\e[0m";
#export BOLD="\e[1m";
#export BLINK="\e[5m";
#export BLUE="\e[34m";
#export UNDERLINE="\e[4m";
#export LIGHT_GRAY="\e[37m";
#export LIGHT_CYAN="\e[96m";
#export LIGHT_GREEN="\e[1;32m";

declare -A tcolours;
declare -A teffects;

tcolour+=(        [blue]="\e[34m"   );
tcolour+=(  [light_grey]="\e[37m"   );
tcolour+=(  [light_cyan]="\e[96m"   );
tcolour+=( [light_green]="\e[1;32m" );

teffect+=(      [bold]="\e[1m" );
teffect+=(     [blink]="\e[5m" );
teffect+=(     [reset]="\e[0m" );
teffect+=( [underline]="\e[4m" );

function twrap () {
  local wrappings=''
  for wrapping in $2; do
    wrappings="${wrappings}${t$1[${wrapping}]}"
  done;
  printf "%s" "${wrappings}$3${teffects[reset]}";
}

function tcolour () {
  twrap 'colour' "$1" "$2";
}

function teffect () {
  twrap 'effect' "$1" "$2";
}

function stars () {
  local stars='$(teffect "blink" "✨")';
  printf "%s %s %s" "$stars" "$1" "$stars";
}
