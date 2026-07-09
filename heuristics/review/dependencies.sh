#!/usr/bin/env bash

###############################################################################
# Dependencies
###############################################################################

HEURISTIC_NAME="Dependencies"

HEURISTIC_CATEGORY="Dependencies"

HEURISTIC_WEIGHT=4

HEURISTIC_MATCHES=(
    "package.json"
    "package-lock.json"
    "pnpm-lock.yaml"
    "yarn.lock"
    "go.mod"
    "go.sum"
    "Cargo.toml"
)

HEURISTIC_OBSERVATION="Project dependencies have changed."

HEURISTIC_RECOMMENDATION="Run project validation before committing."
