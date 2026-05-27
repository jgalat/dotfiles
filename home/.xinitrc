#!/bin/sh

# Single session bus for the whole X session; dies with X (no orphaned bus).
eval "$(dbus-launch --sh-syntax --exit-with-session)"

#shellcheck disable=SC1090
[ -f "$HOME/.xprofile" ] && . ~/.xprofile

# xset dpms 300 &
# xss-lock -- slock &

exec dwm
