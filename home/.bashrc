#!/bin/bash

GPG_TTY="$(tty)"
export GPG_TTY

# shellcheck disable=SC1090
[ -f "$HOME/.config/aliasrc" ] && . ~/.config/aliasrc
