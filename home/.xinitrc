#!/bin/sh

for var in $(dbus-launch); do
  export "${var?}"
done

#shellcheck disable=SC1090
[ -f "$HOME/.xprofile" ] && . ~/.xprofile

xset dpms 300 &
xss-lock -- slock &

exec dbus-run-session dwm
