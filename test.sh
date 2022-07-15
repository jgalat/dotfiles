#!/bin/sh

root_scripts="install.sh test.sh"
scripts="$(find home -follow -type f | xargs grep -E -l "/bin/bash|/bin/sh" | xargs)"

if command -v "shellcheck" > /dev/null 2>&1; then
  shellcheck ${root_scripts} ${scripts}
else
  echo "ShellCheck is required."
  false
fi
