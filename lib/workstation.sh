#!/usr/bin/env bash

set -euo pipefail

# Load workstation context.
eval "$(ctx --env)"

heading() {
    printf "\n%s\n" "$1"

    local length=${#1}

    printf "%*s\n" "$length" "" | tr ' ' '='
}

section() {
    printf "\n%s\n" "$1"
    printf "────────────────────────\n"
}
