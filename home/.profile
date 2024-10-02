#!/bin/sh

export FLYCTL_INSTALL="/home/jgalat/.fly"
export ANDROID_HOME="$HOME/Android/Sdk"
export BUN_INSTALL="$HOME/.bun"
export EDITOR="/usr/bin/nvim"
export BROWSER="/usr/bin/firefox-bin"
export _JAVA_AWT_WM_NONREPARENTING=1

# shellcheck source=/dev/null
PATH="$HOME/.cargo/bin:$PATH"
# shellcheck source=/dev/null
PATH="$HOME/.yarn/bin:$PATH"
# shellcheck source=/dev/null
PATH="$HOME/go/bin:$PATH"
# shellcheck source=/dev/null
PATH="$FLYCTL_INSTALL/bin:$PATH"
# shellcheck source=/dev/null
PATH="$HOME/.foundry/bin:$PATH"
# shellcheck source=/dev/null
PATH="$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$PATH"
# shellcheck source=/dev/null
PATH=$BUN_INSTALL/bin:$PATH

export PATH

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[ "$(tty)" = "/dev/tty1" ] && exec startx
