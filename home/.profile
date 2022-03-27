#!/bin/sh

PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.yarn/bin:$PATH"
PATH="$HOME/go/bin:$PATH"
PATH="$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$PATH"
export PATH

export EDITOR="/usr/bin/nvim"
export BROWSER="/usr/bin/firefox-bin"

[ "$(tty)" = "/dev/tty1" ] && exec startx

. "$HOME/.cargo/env"
