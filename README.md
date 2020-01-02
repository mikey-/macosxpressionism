
# macOS Expressionism

Expressions of subjective perspectives on macOS preferences, which distort a
default environment, for emotional suitability :P

## [Expressionism](https://en.wikipedia.org/wiki/Expressionism) for macOS

I use this system of scripts to adapt, adopt, create, enable and store, a
variety of macOS configurations. With it, I can produce an enjoyable
environment for myself, while I use my computer.

It's cute, it's fun, it's nice :)

## Acknowledgments

**A lot** of the commands to used to set macOS preferences come from:
-   [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
-   [kevinSuttle/macOS-Defaults](https://github.com/kevinSuttle/macOS-Defaults)
-   [@notrab/friendly-os-x-defaults](https://medium.com/@notrab/friendly-os-x-defaults-d7f0cc39f2b3)

🙏🏽 Thank you so much for sharing 🙏🏽

## Expressions

Below describes how this system  subjective perspectives are used to distort
Here's how I use this system.

### Preferences

This system can configure the following preferences:

-   [Audio](expressions/audio)
    -   Disable audio on system boot
-   [Dock](expressions/dock)
    -   Various (details to come)
-   [Finder and Files](expressions/finder)
    -   Various (details to come)
-   [General](expressions/general)
    -   Disable crash reporter
    -   Disable hibernation
    -   Enable scrollbar when scrolling
    -   Install X Code CTL
    -   Quit Printer App when printing is finished
    -   Reveal admin host info on login
    -   Set screen capture file type to PNG
-   [Internationalisation and Localisation](expressions/in18n-l10n)
    -   Set language and text formats
-   [Inputs](expressions/inputs)
    -   Various (details to come)
-   [Security](expressions/security)
    -   Allow unsigned apps to be run
    -   Require password after display turns off    
-   [Spotlight](expressions/spotlight)
    -   Customise indexing order
    -   Disable indexing for volumes
-   [Terminal App](expressions/terminal)
    -   Disable line marks
    -   Enable 'Focus Follows Mouse'
    -   Enable secure keyboard entry
    -   Set encoding to UTF-8

### Helpers

This system provides access to a variety of helper functions and variables.

To make use of such variables and functions, include the following line within
a script: `source ../lib/helpers/init.sh`

The helper script: *init.sh* uses the `source` command to load other functions,
such as:
-   [System](lib/helpers/system.sh)
-   [Files](lib/helpers/files.sh)
-   [Text and Colours](expressions/text.sh)

*init.sh* simply ensures helper files are loaded in a specific order.

### Automations

This system provides access to a variety of functions which wrap AppleScript
commands. So far, this is used to

-   [Close System Preferences](lib/automation/close-system-preferences.sh)
-   [Move an application](lib/automation/move-app.sh) to the top X:0 and Y:0

## Todo

There's a lot of work to do here, I hope to improve this repo significantly in
due time. Here are some quick notes I jotted down a long time ago:

-   [ ] Rather than loading all expressions from a static list
in the macos.sh file, load linked files from an *enabled* or *expression.d*
directory, or something like that
-   [ ] Don't assume this system always runs on a laptop
    -   Maybe use `$(sysctl -n hw.model)`
-   [ ] Consider the following alternative to mapping capslock to control:
``` shell
# Set ProductID of Internal Keyboard
ProductID="$(ioreg -r -c AppleEmbeddedKeyboard | grep ProductID | tr -d '| "')"
VendorID="$( ioreg -r -c AppleEmbeddedKeyboard | grep VendorID  | tr -d '| "')"
defaults -currentHost write \
    -g com.apple.keyboard.modifiermapping.${VendorID}-${ProductID}-0 \
    -array-add
      '<dict>'\
        '<key>HIDKeyboardModifierMappingDst</key>'\
        '<integer>-1</integer>'\
        '<key>HIDKeyboardModifierMappingSrc</key>'\
        '<integer>0</integer>'\
      '<dict>';
```

## Wasting Time

All of the Expressionism stuff aside, I do feel as though system and
environment customisation is a medium for self expression, as is the automation
of such customisation. Furthermore, the description of the automation (such as
this README), is also medium for self expression. To me, it's not a waste of
time :) It's just a cool, fun and human thing to do :)
