#!/usr/bin/env bash

###############################################################################
# Configuration
###############################################################################

HEURISTIC_NAME="Configuration"

HEURISTIC_CATEGORY="Configuration"

HEURISTIC_WEIGHT=3

HEURISTIC_MATCHES=(
    ".profile"
    ".profile.d/*"
    ".editorconfig"
    ".gitignore"
    ".nvmrc"
)

HEURISTIC_OBSERVATION="Engineering configuration has changed."

HEURISTIC_RECOMMENDATION="Verify workstation behavior before committing."
