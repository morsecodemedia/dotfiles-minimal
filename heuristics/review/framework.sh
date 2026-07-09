#!/usr/bin/env bash

###############################################################################
# Framework
###############################################################################

HEURISTIC_NAME="Framework"

HEURISTIC_CATEGORY="Framework"

HEURISTIC_WEIGHT=5

HEURISTIC_MATCHES=(
    "lib/*"
)

HEURISTIC_OBSERVATION="Shared framework behavior has changed."

HEURISTIC_RECOMMENDATION="Validate downstream workstation commands."
