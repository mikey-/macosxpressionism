#!/usr/bin/env bash

# ---------------- Functions

function install_xcode_clt () {
  xcode-select -p || xcode-select --install;
}
