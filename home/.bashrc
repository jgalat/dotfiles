#!/bin/bash

GPG_TTY="$(tty)"
export GPG_TTY

export HISTSIZE=1000000
export HISTFILESIZE=1000000

# shellcheck source=home/.config/aliasrc
[ -f "$HOME/.config/aliasrc" ] && . ~/.config/aliasrc
# shellcheck source=home/.config/ps1
[ -f "$HOME/.config/ps1" ] && . ~/.config/ps1
# shellcheck source=/dev/null
[ -f "$HOME/.fzf.bash" ] && . ~/.fzf.bash

# shellcheck source=/dev/null
export NVM_DIR="$HOME/.nvm"
# shellcheck source=/dev/null
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# shellcheck source=/dev/null
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# shellcheck source=/dev/null
[ -s "$HOME/.cargo/env" ] && \. ~/.cargo/env
# shellcheck source=/dev/null
[ -s "$HOME/.ghcup/env" ] && \. "$HOME/.ghcup/env"

# eval "$(pyenv virtualenv-init -)"
eval "$(pyenv init -)"

export PATH="$PATH:/home/jgalat/.ityfuzz/bin"
