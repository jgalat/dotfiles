#!/bin/bash

GPG_TTY="$(tty)"
export GPG_TTY

export HISTSIZE=10000
export HISTFILESIZE=10000

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jgalat/google/google-cloud-sdk/path.bash.inc' ]; then . '/home/jgalat/google/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/jgalat/google/google-cloud-sdk/completion.bash.inc' ]; then . '/home/jgalat/google/google-cloud-sdk/completion.bash.inc'; fi

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
