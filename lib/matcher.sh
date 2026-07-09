#!/usr/bin/env bash

###############################################################################
# Matcher
#
# Matches evidence against shell glob patterns.
#
# Responsibilities:
#
#   - Match evidence
#   - Return success or failure
#
# Non-Responsibilities:
#
#   - JSON
#   - Knowledge
#   - Inference
#   - Confidence
#   - Rendering
###############################################################################

set -euo pipefail

###############################################################################
# Matching
###############################################################################

matches_pattern() {

    local evidence="$1"
    local pattern="$2"

    case "$evidence" in

        $pattern)
            return 0
            ;;

        *)
            return 1
            ;;

    esac
}

matches_any_pattern() {

    local evidence="$1"

    shift

    local pattern

    for pattern in "$@"; do

        if matches_pattern "$evidence" "$pattern"; then
            return 0
        fi

    done

    return 1
}
