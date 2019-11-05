#! /usr/bin/env bash

# DESCRIPTION
# Installs App Store software.

# EXECUTION
# Homebrew
if ! command -v mas > /dev/null; then
  printf "ERROR: Mac App Store CLI (mas) can't be found.\n"
  printf "       Please ensure Homebrew and mas (i.e. brew install mas) have been installed first."
  exit 1
fi

#1password7
mas install 1333542190

# Magnet
mas install 441258766

# Wipr
mas install 1320666476

# Telegram
mas install 747648890

# iMovie
mas install 408981434

# Keynote
mas install 409183694

# Numbers
mas install 409203825

# Pages
mas install 409201541

# XCode
mas install 497799835

