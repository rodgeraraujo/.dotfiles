#!/bin/sh
if [Darwin != $(uname -s)]; then
  echo "This script is for Mac OS X only"
  exit 1
fi

if [$DOTFILES_DIR = ""]; then
  echo "DOTFILES_DIR environment variable is not set"
  exit 1
fi

open -a Terminal.app "$DOTFILES_DIR/terminal/Nikan.terminal"
defaults write com.apple.terminal "Default Window Settings" -string "Nikan"
defaults write com.apple.terminal "Startup Window Settings" -string "Nikan"

echo "Restart Terminal to apply changes"