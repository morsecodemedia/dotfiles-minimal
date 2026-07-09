#!/usr/bin/env bash

###############################################################################
# Knowledge Loader
#
# Loads workstation knowledge definitions from JSON.
#
# Responsibilities:
#
#   - Discover JSON knowledge files
#   - Validate JSON
#   - Return knowledge file paths
#
# Non-Responsibilities:
#
#   - Matching
#   - Inference
#   - Confidence
#   - Rendering
###############################################################################

set -euo pipefail

###############################################################################
# State
###############################################################################

KNOWLEDGE_FILES=()

###############################################################################
# Loading
###############################################################################

load_knowledge() {

    local directory="$1"

    KNOWLEDGE_FILES=()

    while IFS= read -r file; do

        #
        # Ensure the JSON is valid before accepting it.
        #
        jq empty "$file"

        KNOWLEDGE_FILES+=("$file")

    done < <(

        find "$directory" \
            -type f \
            -name '*.json' \
            | sort

    )
}

###############################################################################
# Accessors
###############################################################################

knowledge_count() {

    printf "%d\n" "${#KNOWLEDGE_FILES[@]}"
}

knowledge_files() {

    printf "%s\n" "${KNOWLEDGE_FILES[@]}"
}
