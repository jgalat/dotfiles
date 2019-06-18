#!/bin/sh

REPOSITORY="$(dirname "$(realpath "${0}")")"

install_suckless() {
  echo "Installing suckless software..."

  cd "${REPOSITORY}/suckless"
  for suckless_item in *; do
    [ -e "${suckless_item}" ] || break
    cd "${suckless_item}"
    
    printf "Building %s..." "${suckless_item}"
    if make > /dev/null 2>&1; then
      echo "OK"
    else
      echo "FAILED"
      false
    fi

    printf "Installing %s..." "${suckless_item}"
    if make install > /dev/null 2>&1; then
      echo "OK"
    else
      echo "FAILED"
      false
    fi

    make clean > /dev/null 2>&1
    cd "${REPOSITORY}/suckless"
  done
  cd "${REPOSITORY}"
}

install_home() {
  echo "Installing config files..."
  [ -z "${HOME}" ] && (echo "\$HOME isn't defined" && false)

  cd "${REPOSITORY}/home"
  config_files="$(find . -follow | sed -n '1!p' | cut -c3-)"
  for file in $config_files; do
    printf "%s..." "${file}"
    if [ -d "${file}" ]; then
      if [ ! -d "${HOME}/${file}" ]; then
        mkdir --parents "${HOME}/${file}"
      fi
    elif [ -f "${file}" ]; then
      if [ -f "${HOME}/${file}" ]; then
        cd "${HOME}"
        cp --parents "${file}" "${REPOSITORY}/home.b"
        rm -r "${HOME:?}/${file:?}"
        cd "${REPOSITORY}/home"
      fi
      ln -sf "${REPOSITORY}/home/${file}" "${HOME}/${file}"
    else
      echo "${file} is something else..."
    fi
    echo "DONE"
  done
  cd "${REPOSITORY}"
}

install() {
  if [ "$(id -u)" -ne 0 ]; then
    install_home
    echo "Super user is required to install suckless software."
    if command -v "sudo" > /dev/null 2>&1; then
      sudo "${0}"
    fi
  else
    install_suckless
  fi
}

set -e

install 
