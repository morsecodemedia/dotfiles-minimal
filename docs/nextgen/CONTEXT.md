# Context Engine

## Mission

The Context Engine is the first engine within the NextGen platform.

Its purpose is to establish a deterministic understanding of the current engineering environment.

The Context Engine is the single source of engineering context.

Every product within NextGen consumes the Context Engine instead of independently collecting repository state.

---

# Philosophy

The Context Engine exists to eliminate redundant engineering discovery.

It answers three questions:

1. Where am I?
2. What is the current engineering state?
3. What immediate engineering context should every product share?

The Context Engine intentionally performs no engineering reasoning.

It establishes shared understanding.

Other engines perform interpretation.

---

# Design Principles

## Collect Once

Engineering context should be collected exactly once.

Every downstream product consumes the same context.

This guarantees consistency while reducing duplicated implementation.

---

## Deterministic

The Context Engine should always produce the same output for the same engineering state.

Repository context should never depend on artificial intelligence or probabilistic reasoning.

---

## Infer Before Asking

Repository information should be inferred whenever practical.

Configuration should exist only when inference is impossible.

---

## Own Context, Not Data

The Context Engine owns engineering context.

It does not own data managed by other systems.

Examples include:

* Git owns repository history.
* Node owns runtime versions.
* Task providers own task state.

The Context Engine orchestrates providers.

It does not replace them.

---

## Stable Interface

The Context Engine is a platform API.

Consumers should never collect engineering context independently.

Breaking changes require a major version increment.

---

# Responsibilities

The Context Engine is responsible for:

* Repository discovery
* Repository classification
* Runtime discovery
* Engineering state
* Repository metadata
* Environment metadata
* Stable machine interfaces

The Context Engine is intentionally unaware of:

* Engineering knowledge
* Engineering priorities
* Recommendations
* Artificial intelligence

Those responsibilities belong to downstream engines.

---

# Consumers

Current consumers include:

* Review Engine
* Engineer
* Doctor
* Plan

Future consumers include:

* Local Intelligence Platform
* Future workstation products

The Context Engine should remain reusable by every engineering capability.

---

# Outputs

The Context Engine exposes multiple interfaces.

## Human Output

Provides a concise engineering overview.

Typical information includes:

* Repository
* Current Focus
* Runtime
* Engineering Artifacts
* Engineering Health
* Next Steps
* Environment

Human output is intended for engineers.

---

## Environment Contract

Provides shell variables for workstation commands.

Examples include:

```text
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

This interface is intended for shell consumers.

---

## JSON Contract

Provides a stable machine interface.

Machine consumers should rely on the JSON contract rather than parsing human output.

The schema is versioned independently from presentation.

---

# Providers

The Context Engine gathers information through providers.

Current providers include:

* Git
* Task provider
* Runtime provider

Future providers may include:

* Docker
* Python
* Go
* Cloud environments

Providers own data collection.

The Context Engine owns orchestration.

---

# Relationship to Other Engines

The Context Engine performs no engineering interpretation.

Its responsibility ends once engineering state has been established.

Example pipeline:

```text
Repository

↓

Context Engine

↓

Knowledge Engine

↓

Engineering Review Engine

↓

Products
```

Every downstream engine consumes the same deterministic context.

---

# Long-Term Vision

The Context Engine should remain intentionally small.

Future workstation capabilities should consume context rather than extending it.

The Context Engine succeeds when every engineering product begins from the same shared understanding.

---

# Guiding Principle

The Context Engine establishes engineering reality.

Every other engine reasons about it.
