#!/usr/bin/env bash

# allow globs to see dotfiles
shopt -s dotglob

# get reference to script directory as starting point
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# suppress echos from pushd and popd for clean output
pushd () {
  command pushd "$@" > /dev/null
}

popd () {
  command popd > /dev/null
}

# recursive loop over files, creating mirrored directories and linking
# only files. Avoids accidentally adding new files to dotfiles repo
# if they are created and inserted into a symlinked directory later
tryfiles () {
  local path="$1"
  if [ -d "${DIR}/${path}" ]; then
    pushd "${DIR}/${path}" || return
    mkdir -p "${HOME}/${path}"
    for f in *; do
      local newpath="${path}/${f}"
      tryfiles "${newpath}"
    done
    popd || return
  else
    if [ -e "${HOME}/${path}" ]; then
      printf "File Exists, Skipping: %s\\n" "${HOME}/${path}"
    else
      ln -sfn "${DIR}/${path}" "$HOME/${path}"
      printf "Linking: %s/%s\\n" "${DIR}" "${path}"
    fi
  fi
}

# main loop, ignoring some key files
for x in *; do
  if [ "$x" != ".git" ] && [ "$x" != "." ] && [ "$x" != ".." ] && [ "$x" != "install.sh" ]&& [ "$x" != "uninstall.sh" ] && [ "$x" != "README.md" ]; then
    tryfiles "$x"
  fi
done

