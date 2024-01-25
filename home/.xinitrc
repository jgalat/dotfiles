#!/bin/sh

for var in $(dbus-launch); do
  export "${var?}"
done

#shellcheck disable=SC1090
[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec dbus-run-session dwm
