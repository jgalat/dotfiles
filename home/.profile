#!/bin/sh

PATH="$HOME/.cargo/bin:$PATH"
PATH="$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$PATH"
export PATH
EDITOR="/usr/bin/vim"
export EDITOR
BROWSER="/usr/bin/brave-bin"
export BROWSER

[ "$(tty)" = "/dev/tty1" ] && exec startx

