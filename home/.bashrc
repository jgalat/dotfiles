#!/bin/bash

GPG_TTY="$(tty)"
export GPG_TTY

# shellcheck disable=SC1090
[ -f "$HOME/.config/aliasrc" ] && . ~/.config/aliasrc
# shellcheck disable=SC1090
[ -f "$HOME/.config/ps1" ] && . ~/.config/ps1
# shellcheck disable=SC1090
[ -f "$HOME/.fzf.bash" ] && . ~/.fzf.bash

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
