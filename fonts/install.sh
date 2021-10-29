#!/bin/bash

if [$DOTFILES_DIR = ""]; then
  echo "DOTFILES_DIR environment variable is not set"
  exit 1
fi

case "$(uname -s)" in

Darwin)
    find $DOTFILES_DIR/fonts -name \*.tff -exec cp -prv '{}' '~/Library/Fonts' \;
	;;
*)
	echo "This script is for Mac OS X only"
    exit 1
	;;
esac