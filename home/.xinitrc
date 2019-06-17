#!/bin/sh

#shellcheck disable=SC1090
[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec dwm
