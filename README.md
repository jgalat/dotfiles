# .dotfiles [![Build Status](https://travis-ci.com/jgalat/.dotfiles.svg?branch=master)](https://travis-ci.com/jgalat/.dotfiles)
My dotfiles including patched versions of `dmenu`, `dwm` and `st`.

## Installation
Installation can be done by running `./install.sh`.

The script will create a symbolic link for each file found in the `home` folder. If a file already exists in `$HOME`, it will back it up in `home.b`.

The script will also build the software found in the `suckless` folder and install it (for the last bit it will require superuser permissions).

## Testing
Tests can be run with `./test.sh`.
[ShellCheck](https://www.shellcheck.net/) is required.