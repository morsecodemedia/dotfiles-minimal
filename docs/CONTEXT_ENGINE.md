# Context Engine v1.0

*This document is a contract, not a tutorial.*

The Context Engine is the foundation of the NextGen Workstation platform.

It is the single source of truth for engineering context.

All workstation workflows consume the Context Engine instead of directly querying Git, the filesystem, runtime environments, or other providers.

Examples include:

- review
- engineer
- doctor
- plan
- AI providers
- Future Go CLI

---

# Philosophy

The Context Engine exists to reduce the cognitive overhead of software engineering.

It should answer three questions immediately:

1. What project am I in?
2. What is the current engineering state?
3. What should I do next?

The Context Engine gathers information once and exposes it through stable interfaces.

Consumers should never duplicate collection logic.

---

# Design Principles

## Collect once. Consume everywhere.

The Context Engine is responsible for collecting engineering state.

Consumers use the exported APIs instead of querying Git or other providers directly.

---

## Infer before asking.

Repository information should be inferred whenever possible.

Configuration should only be required when inference is impossible.

---

## Own workflows, not data.

The Context Engine owns engineering workflows.

It does not own data managed by other tools.

Examples:

- Git owns repository history.
- Todo owns task state.
- Node/NVM owns runtime versions.

The Context Engine orchestrates providers instead of replacing them.

---

## Stable API

The Context Engine is considered a public API.

Breaking changes require a major version increment.

---

# Human Output Contract

The Context Engine renders information in the following order.

## Repository

- Name
- Type
- Profile
- Root
- Branch
- Working Tree
- Modified
- Untracked
- Staged
- Tracking
- Commits

## Current Focus

The active engineering task supplied by the configured task provider.

## Runtime

- Shell
- Node
- npm

## Engineering Artifacts

Repository documents useful during engineering.

Examples include:

- README
- PLAN
- ROADMAP
- Architecture
- AI documentation

## Engineering Health

Evaluated engineering observations.

Health reports issues.

It does not recommend actions.

## Next Steps

Recommended engineering actions.

Recommendations are generated from the current engineering state.

## Environment

- Host
- tmux

---

# JSON Contract

The JSON output is intended for machine consumers.

```json
{
  "repository": {
    "name": "",
    "type": "",
    "profile": "",
    "framework": "",
    "root": "",
    "branch": "",
    "working_tree": "",
    "modified": 0,
    "untracked": 0,
    "staged": 0,
    "changed": 0,
    "tracking": "",
    "ahead": 0,
    "behind": 0
  },
  "runtime": {
    "shell": "",
    "node": "",
    "npm": ""
  },
  "engineering": {
    "current_focus": "",
    "health": [],
    "recommendations": []
  },
  "environment": {
    "host": "",
    "tmux": false
  }
}
```

The JSON schema is considered stable within major versions.

---

# Environment Contract

The environment output is intended for Bash consumers.

```
CTX_ROOT

CTX_PROJECT_NAME
CTX_PROJECT_TYPE
CTX_PROJECT_PROFILE
CTX_PROJECT_FRAMEWORK

CTX_BRANCH

CTX_WORKING_TREE

CTX_MODIFIED
CTX_UNTRACKED
CTX_STAGED
CTX_CHANGED

CTX_TRACKING_BRANCH
CTX_AHEAD
CTX_BEHIND

CTX_CURRENT_FOCUS

CTX_NODE
CTX_NPM
CTX_SHELL

CTX_HOST
CTX_TMUX
```

`CTX_CHANGED` is retained as an aggregate value for convenience.

Consumers requiring detailed state should use:

- CTX_MODIFIED
- CTX_UNTRACKED
- CTX_STAGED

---

# Providers

The Context Engine consumes information from providers.

Current providers include:

- Git
- Todo
- Node

Future providers may include:

- Docker
- Go
- Python
- AI

The Context Engine owns orchestration.

Providers own implementation.

---

# Responsibilities

The Context Engine is responsible for:

- Repository detection
- Repository classification
- Runtime discovery
- Engineering state
- Health evaluation
- Recommendations
- Stable machine interfaces

The Context Engine is **not** responsible for:

- Source control
- Task management
- AI interaction
- Project generation
- Implementation planning

Those responsibilities belong to downstream workflows.

---

# Versioning

Breaking changes require a major version.

Examples include:

- Removing fields
- Renaming fields
- Reordering machine interfaces
- Changing field semantics

Additive changes may occur within minor versions.

---

# Status

Current Version

**v1.0**

Status

**Frozen**

The Context Engine should evolve cautiously.

New workstation features should consume the Context Engine instead of extending it whenever possible.
