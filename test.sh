#!/bin/sh

scripts="$(find home -follow -type f -exec xargs grep -E -l "/bin/bash|/bin/sh")"

# if command -v "shellcheck" > /dev/null 2>&1; then
  echo SORETE "${scripts}"
  docker run --rm -v "$PWD:/mnt" koalaman/shellcheck:stable install.sh test.sh "${scripts}"
# else
#   echo "ShellCheck is required."
#   false
# fi
