#!/bin/sh

PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH

[ "$(tty)" = "/dev/tty1" ] && exec startx
