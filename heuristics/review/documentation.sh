#!/usr/bin/env bash

###############################################################################
# Documentation
###############################################################################

HEURISTIC_NAME="Documentation"

HEURISTIC_CATEGORY="Documentation"

HEURISTIC_WEIGHT=1

HEURISTIC_MATCHES=(
    "README.md"
    "PLAN.md"
    "ROADMAP.md"
    "ARCHITECTURE.md"
    "docs/*"
)

HEURISTIC_OBSERVATION="Documentation has changed."

HEURISTIC_RECOMMENDATION="Proofread documentation before committing."
