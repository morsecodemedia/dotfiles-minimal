#!/usr/bin/env bash

rule_shell_configuration() {

    if [[ "$CTX_PROJECT_TYPE" != "Shell Configuration" ]]; then
        return
    fi

    if [[ ! -f "$CTX_ROOT/docs/WORKSTATION_PHILOSOPHY.md" ]]; then
        warning "WORKSTATION_PHILOSOPHY.md is missing"
    fi

    if [[ ! -f "$CTX_ROOT/docs/ROADMAP.md" ]]; then
        warning "ROADMAP.md is missing"
    fi
}
