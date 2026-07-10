#!/usr/bin/env bash

###############################################################################
# Knowledge Engine
#
# Loads and exposes workstation knowledge.
#
# Responsibilities
#
#   - Discover knowledge
#   - Validate JSON
#   - Expose knowledge through a stable API
#
# Non-Responsibilities
#
#   - Matching
#   - Inference
#   - Confidence
#   - Rendering
###############################################################################

###############################################################################
# State
###############################################################################

KNOWLEDGE=()

###############################################################################
# Loading
###############################################################################

load_knowledge() {

    local directory="$1"

    KNOWLEDGE=()

    while IFS= read -r file; do

        jq empty "$file"

        KNOWLEDGE+=("$file")

    done < <(

        find "$directory" \
            -type f \
            -name '*.json' \
            | sort

    )
}

###############################################################################
# Collection
###############################################################################

knowledge_count() {

    printf "%d\n" "${#KNOWLEDGE[@]}"
}

knowledge_items() {

    printf "%s\n" "${KNOWLEDGE[@]-}"
}

###############################################################################
# Metadata
###############################################################################

knowledge_name() {

    jq -r '.heuristic.name' "$1"
}

knowledge_category() {

    jq -r '.heuristic.category' "$1"
}

knowledge_weight() {

    jq -r '.heuristic.weight' "$1"
}

###############################################################################
# Matching
###############################################################################

knowledge_matches() {

    jq -r '
        .heuristic.matches[]
        |
        [
            .type,
            .value
        ]
        |
        @tsv
    ' "$1"
}

###############################################################################
# Findings
###############################################################################

knowledge_findings() {

    jq -r '
        .heuristic.findings[]
    ' "$1"
}

knowledge_recommendations() {

    jq -r '
        .heuristic.recommendations[]
    ' "$1"
}
