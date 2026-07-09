#!/usr/bin/env bash

###############################################################################
# Executable
###############################################################################

HEURISTIC_NAME="Executable"

HEURISTIC_CATEGORY="Executable"

HEURISTIC_WEIGHT=5

HEURISTIC_MATCHES=(
    "bin/*"
)

HEURISTIC_OBSERVATION="Executable behavior has changed."

HEURISTIC_RECOMMENDATION="Review executable changes before committing."
