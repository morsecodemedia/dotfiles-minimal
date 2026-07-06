#!/usr/bin/env bash

# Prevent multiple initialization.
if [[ -n "${WORKSTATION_INITIALIZED:-}" ]]; then
    return
fi

export WORKSTATION_INITIALIZED=1

set -euo pipefail

###############################################################################
# Runtime
###############################################################################

export WORKSTATION_ROOT

WORKSTATION_ROOT="$(
    cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd
)"

# Load workstation context.
eval "$(ctx --env)"

###############################################################################
# Output Helpers
###############################################################################

heading() {

    local title="$1"

    printf "\n%s\n" "$title"

    printf "%*s\n" "${#title}" "" | tr ' ' '='
}

section() {

    printf "\n%s\n" "$1"
    printf "────────────────────────\n"
}

success() {

    printf "✓ %s\n" "$1"
}

warning() {

    printf "⚠ %s\n" "$1"
}

failure() {

    printf "✗ %s\n" "$1"
}

###############################################################################
# Requirement Helpers
###############################################################################

require_git() {

    if ! command -v git >/dev/null 2>&1; then
        failure "Git is required."
        exit 1
    fi
}

require_node() {

    if ! command -v node >/dev/null 2>&1; then
        failure "Node.js is required."
        exit 1
    fi
}
