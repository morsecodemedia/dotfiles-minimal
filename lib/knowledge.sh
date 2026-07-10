#!/usr/bin/env bash

###############################################################################
# Knowledge Engine
#
# Loads and exposes workstation knowledge.
#
# Responsibilities
#
#   - Discover knowledge
#   - Validate knowledge
#   - Expose a stable API
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

    mapfile -t KNOWLEDGE < <(
        find "$directory" \
            -type f \
            -name '*.json' \
            | sort
    )

    local file

    for file in "${KNOWLEDGE[@]}"; do
        jq empty "$file" >/dev/null
    done
}

###############################################################################
# Collection
###############################################################################

knowledge_count() {

    printf '%d\n' "${#KNOWLEDGE[@]}"
}

knowledge_items() {

    printf '%s\n' "${KNOWLEDGE[@]}"
}

###############################################################################
# Metadata
###############################################################################

knowledge_name() {

    local file="$1"

    jq -r '.heuristic.name' "$file"
}

knowledge_category() {

    local file="$1"

    jq -r '.heuristic.category' "$file"
}

knowledge_weight() {

    local file="$1"

    jq -r '.heuristic.weight' "$file"
}

###############################################################################
# Matching
###############################################################################

knowledge_matches() {

    local file="$1"

    jq -r '
        .heuristic.matches[]
        |
        [
            .type,
            .value
        ]
        |
        @tsv
    ' "$file"
}

###############################################################################
# Findings
###############################################################################

knowledge_findings() {

    local file="$1"

    jq -r '
        .heuristic.findings[]
    ' "$file"
}

knowledge_recommendations() {

    local file="$1"

    jq -r '
        .heuristic.recommendations[]
    ' "$file"
}
