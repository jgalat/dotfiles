#!/bin/sh

PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.yarn/bin:$PATH"
PATH="$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$PATH"
export PATH

export EDITOR="/usr/bin/vim"
export BROWSER="/usr/bin/firefox-bin"

[ "$(tty)" = "/dev/tty1" ] && exec startx

