#!/usr/bin/env bash

# ---------------- Functions

function screencapture-type-png () {
  defaults write com.apple.screencapture type -string "png"
}
