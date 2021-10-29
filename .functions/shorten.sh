#!/bin/sh
shorten () {
  cd "${HOME}/Sites/personal/morse.sh"
  npm run shorten "$1" "$2"
  cd -
}
