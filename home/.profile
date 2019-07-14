#!/bin/sh

PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH
EDITOR="/usr/bin/vim"
export EDITOR

[ "$(tty)" = "/dev/tty1" ] && exec startx
