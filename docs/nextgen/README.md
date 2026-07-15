
# NextGen

## Mission

NextGen is an engineering cognition platform.

Its purpose is to reduce cognitive friction by transforming repository state into deterministic engineering understanding.

NextGen is designed to help engineers spend more time making decisions and less time gathering information.

It does not replace engineering judgment.

It supports it.

---

# Philosophy

Traditional developer tools answer questions such as:

* What changed?
* Which files were modified?
* Which tests failed?

NextGen focuses on different questions:

* What deserves my attention?
* Why does it matter?
* What should I do next?

Rather than presenting additional information, NextGen attempts to improve engineering decision-making through deterministic reasoning.

---

# Design Principles

## Deterministic Before Probabilistic

Engineering knowledge should be explicit whenever practical.

Deterministic reasoning forms the foundation of the platform.

Artificial intelligence should enrich engineering workflows rather than replace them.

---

## Attention Is Finite

Every piece of output should justify its existence.

Noise is considered a product defect.

---

## Silence Is Signal

Inactive systems should remain silent.

If an engineer does not need to think about something, NextGen should not ask them to.

---

## Explain Why, Not Just What

Git already explains what changed.

NextGen explains why those changes matter.

---

## Platforms Before Products

NextGen is a platform.

Commands are products built on top of the platform.

This distinction allows multiple engineering capabilities to share common infrastructure while remaining independently evolvable.

---

# Architecture

NextGen is organized as a collection of cooperating engines.

```text
Repository

↓

Context Engine

↓

Knowledge Engine

↓

Engineering Engines

↓

Products
```

Each engine has exactly one responsibility.

---

# Core Engines

## Context Engine

Provides deterministic repository context.

Responsibilities include:

* Repository state
* Branch information
* Working tree status
* Engineering metadata

The Context Engine serves as the single source of engineering context.

---

## Knowledge Engine

Provides explicit engineering knowledge.

Responsibilities include:

* Engineering domains
* Engineering context
* Recommendations
* Deterministic heuristics

The Knowledge Engine owns engineering knowledge.

Products consume it.

---

## Engineering Review Engine

Transforms repository evidence into engineering priorities.

Review helps engineers determine:

* What deserves attention.
* Why it deserves attention.
* What should happen next.

Review is intentionally deterministic.

---

# Products

Current products include:

## ctx

Provides engineering context.

## review

Provides engineering review prioritization.

## engineer

Future engineering workflow orchestration.

## doctor

Future workstation health analysis.

Additional products should be built on top of the existing engines whenever practical.

---

# Relationship to the Ecosystem

NextGen is one platform within the Engineering Workstation Ecosystem.

It is intentionally independent from:

* Dotfiles
* Local Intelligence Platform (LIP)
* Image Lab

Future integrations should occur through explicit interfaces rather than direct coupling.

---

# Documentation

Subsystem documentation is organized by engine.

* `CONTEXT.md`
* `KNOWLEDGE.md`
* `REVIEW.md`
* `ENGINEER.md`

Each document describes one subsystem.

This document intentionally describes only the platform.

---

# Long-Term Vision

NextGen should evolve into a deterministic engineering reasoning platform.

Future capabilities should continue following the same philosophy:

* Explainable
* Deterministic
* Low-noise
* Action-oriented

The platform succeeds when engineers consistently make better decisions with less cognitive effort.

---

# Guiding Principle

Git tells engineers what changed.

NextGen helps engineers decide what deserves their attention.

Everything else follows from that principle.
