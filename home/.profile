#!/bin/sh

export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_NDK_HOME="$HOME/Android/Sdk/ndk"
export BUN_INSTALL="$HOME/.bun"
export EDITOR="/usr/bin/nvim"
export BROWSER="/usr/bin/firefox-bin"
export _JAVA_AWT_WM_NONREPARENTING=1
export NVM_DIR="$HOME/.nvm"
export PNPM_HOME="$HOME/.local/share/pnpm"

prepend_path() {
  case ":$PATH:" in
    *":$1:"*) ;;
    *) PATH="$1:$PATH" ;;
  esac
}

prepend_path "$HOME/.cargo/bin"
prepend_path "$HOME/.yarn/bin"
prepend_path "$HOME/go/bin"
prepend_path "$HOME/.foundry/bin"
prepend_path "$HOME/.local/bin"
prepend_path "$HOME/.local/bin/status"
prepend_path "$HOME/.local/bin/tools"
prepend_path "$BUN_INSTALL/bin"
prepend_path "$HOME/.ityfuzz/bin"
prepend_path "$HOME/.claude/local"
prepend_path "$HOME/.opencode/bin"
prepend_path "$PNPM_HOME/bin"

export PATH

export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
unset SSH_AGENT_PID

[ -s "$HOME/.bashrc" ] && \. ~/.bashrc

[ "$(tty)" = "/dev/tty1" ] && exec startx

