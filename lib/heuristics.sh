#!/usr/bin/env bash

###############################################################################
# Heuristic Engine
###############################################################################

set -euo pipefail

HEURISTIC_NAMES=()
HEURISTIC_CATEGORIES=()
HEURISTIC_WEIGHTS=()
HEURISTIC_OBSERVATIONS=()
HEURISTIC_RECOMMENDATIONS=()

###############################################################################
# Registration
###############################################################################

register_heuristic() {

    local json="$1"

    HEURISTIC_NAMES+=(
        "$(jq -r '.heuristic.name' "$json")"
    )

    HEURISTIC_CATEGORIES+=(
        "$(jq -r '.heuristic.category' "$json")"
    )

    HEURISTIC_WEIGHTS+=(
        "$(jq -r '.heuristic.weight' "$json")"
    )

    HEURISTIC_OBSERVATIONS+=(
        "$(jq -r '.heuristic.observations[]' "$json")"
    )

    HEURISTIC_RECOMMENDATIONS+=(
        "$(jq -r '.heuristic.recommendations[]' "$json")"
    )
}

###############################################################################
# Loading
###############################################################################

load_heuristics() {

    local directory="$1"

    HEURISTIC_NAMES=()
    HEURISTIC_CATEGORIES=()
    HEURISTIC_WEIGHTS=()
    HEURISTIC_OBSERVATIONS=()
    HEURISTIC_RECOMMENDATIONS=()

    local file

    while IFS= read -r file; do

        register_heuristic "$file"

    done < <(
        find "$directory" \
            -name '*.json' \
            | sort
    )
}

###############################################################################
# Diagnostics
###############################################################################

heuristic_count() {

    printf "%d\n" "${#HEURISTIC_NAMES[@]}"
}
