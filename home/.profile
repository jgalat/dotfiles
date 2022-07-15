#!/bin/sh

# shellcheck source=/dev/null
PATH="$HOME/.cargo/bin:$PATH"
# shellcheck source=/dev/null
PATH="$HOME/.yarn/bin:$PATH"
# shellcheck source=/dev/null
PATH="$HOME/go/bin:$PATH"
# shellcheck source=/dev/null
PATH="$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$PATH"
export PATH

export EDITOR="/usr/bin/nvim"
export BROWSER="/usr/bin/firefox-bin"

[ "$(tty)" = "/dev/tty1" ] && exec startx
