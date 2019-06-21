#!/bin/sh

export $(dbus-launch)
#shellcheck disable=SC1090
[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec dwm
