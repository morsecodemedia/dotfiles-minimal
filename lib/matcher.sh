#!/usr/bin/env bash

###############################################################################
# Matcher
#
# Matches evidence against implementation-agnostic knowledge definitions.
#
# Responsibilities
#
#   - Exact matching
#   - Prefix matching
#
# Non-Responsibilities
#
#   - Loading knowledge
#   - Inference
#   - Confidence
#   - Rendering
###############################################################################


###############################################################################
# Matchers
###############################################################################

matches_exact() {

    local evidence="$1"
    local expected="$2"

    [[ "$evidence" == "$expected" ]]
}

matches_prefix() {

    local evidence="$1"
    local prefix="$2"

    [[ "$evidence" == "$prefix"* ]]
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
