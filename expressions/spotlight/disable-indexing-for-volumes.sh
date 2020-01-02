#!/usr/bin/env bash


function disable_indexing_for_volumes () {

  printf "%s" "${tcolours[light_cyan]}│  ├─${teffects[reset]} Disable Spotlight indexing for any volume that gets mounted... ";
  # sudo mdutil -i off "/Volumes/foo" to stop indexing a particular volume.
  sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"
  printf "%s" "${tcolours[light_green]}✓${teffects[reset]}\n";

}
