#!/usr/bin/env bash

###############################################################################
# Matcher Engine
#
# Responsibilities
#
#   - Match evidence against knowledge.
#
# Non-Responsibilities
#
#   - Loading JSON
#   - Inference
#   - Confidence
#   - Rendering
###############################################################################

###############################################################################
# Primitive Matchers
###############################################################################

matches_exact() {

    local evidence="$1"
    local value="$2"

    [[ "$evidence" == "$value" ]]
}

matches_prefix() {

    local evidence="$1"
    local value="$2"

    [[ "$evidence" == "$value"* ]]
}

###############################################################################
# Dispatcher
###############################################################################

matches() {

    local evidence="$1"
    local type="$2"
    local value="$3"

    case "$type" in

        exact)

            matches_exact \
                "$evidence" \
                "$value"

            ;;

        prefix)

            matches_prefix \
                "$evidence" \
                "$value"

            ;;

        *)

            return 1
            ;;

    esac
}
