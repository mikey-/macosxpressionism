#!/usr/bin/env bash

# Functions for working with files
function file_exists () {
  [ -f "${1}" -a -r "${1}" ] && return;
  [ -d "${1}" -a -r "${1}" ] && return;
  false;
}
