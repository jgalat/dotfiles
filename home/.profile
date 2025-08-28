#!/bin/sh

export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_NDK_HOME="$HOME/Android/Sdk/ndk"
export BUN_INSTALL="$HOME/.bun"
export EDITOR="/usr/bin/nvim"
export BROWSER="/usr/bin/firefox-bin"
export _JAVA_AWT_WM_NONREPARENTING=1
export NVM_DIR="$HOME/.nvm"

# shellcheck source=/dev/null
PATH="$HOME/.cargo/bin:$PATH"
# shellcheck source=/dev/null
PATH="$HOME/.yarn/bin:$PATH"
# shellcheck source=/dev/null
PATH="$HOME/go/bin:$PATH"
# shellcheck source=/dev/null
PATH="$HOME/.foundry/bin:$PATH"
# shellcheck source=/dev/null
PATH="$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$PATH"
# shellcheck source=/dev/null
PATH=$BUN_INSTALL/bin:$PATH
# shellcheck source=/dev/null
PATH="$HOME/.ityfuzz/bin:$PATH"
# shellcheck source=/dev/null
PATH="$HOME/.claude/local:$PATH"

export PATH

[ -s "$HOME/.bashrc" ] && \. ~/.bashrc

[ "$(tty)" = "/dev/tty1" ] && exec startx

