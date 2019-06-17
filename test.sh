#!/bin/sh

root_scripts="install.sh test.sh"
scripts="$(find home -follow -type f)"

if [ -n "$(command -v "shellcheck")" ]; then
  error_count=0
  for script in $root_scripts $scripts; do
    head="$(head -n 1 "${script}")"
    if [ "${head}" = "#!/bin/sh" ] || [ "${head}" = "#!/bin/bash" ]; then
      echo "shellcheck ${script}"
      shellcheck "${script}"
      error_count="$((error_count + $?))"
    fi
  done

  [ "${error_count}" -eq 0 ]
else
  echo "ShellCheck is required."
  false
fi
