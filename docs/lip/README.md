
# Local Intelligence Platform

## Mission

The Local Intelligence Platform (LIP) provides purpose-built intelligent collaborators that augment human capability through local-first artificial intelligence.

LIP is intentionally designed around responsibilities rather than language models.

Models, runtimes, and providers are considered implementation details.

Collaborators remain stable while implementations evolve.

---

# Philosophy

The workstation does not expose models.

The workstation exposes intent.

Users should never need to ask:

> Which model should I use?

Instead they should ask:

> Who should help me solve this problem?

LIP exists to make intelligent collaboration feel natural rather than technological.

---

# Design Principles

## Responsibilities Before Implementations

Every collaborator is defined by the responsibility it owns.

Model selection is an implementation detail.

---

## Local First

Engineering, creative work, and experimentation should remain available without requiring cloud services.

Cloud capabilities may enrich local workflows but should not replace them.

---

## Human Judgment Remains Authoritative

LIP assists.

It does not decide.

Engineering judgment, creative direction, and business decisions remain human responsibilities.

---

## Collaboration Over Conversation

LIP is organized as an organization of collaborators rather than a collection of chatbots.

Multiple collaborators may contribute to solving a single problem.

Future versions may coordinate multiple collaborators through engineering councils.

---

## Platforms Before Personas

LIP is a platform.

Collaborators are products built upon the platform.

The platform owns:

* Runtime
* Model lifecycle
* Persona management
* Workflow orchestration
* Shared memory
* Prompt libraries

Collaborators consume those capabilities.

---

# Core Capabilities

The Local Intelligence Platform is responsible for:

* Persona management
* Workflow orchestration
* Runtime management
* Model management
* Prompt libraries
* Shared memory
* Local inference
* Future cloud integrations

The platform intentionally avoids coupling itself to any single inference runtime or model family.

---

# Relationship to the Engineering Workstation

LIP is one platform within the Engineering Workstation Ecosystem.

It operates alongside:

* Dotfiles
* NextGen
* Image Lab

LIP intentionally consumes ecosystem capabilities rather than replacing them.

For example:

* NextGen provides deterministic engineering understanding.
* LIP provides probabilistic reasoning and collaboration.

The two systems complement one another.

---

# Relationship to NextGen

NextGen owns deterministic engineering reasoning.

LIP consumes deterministic engineering understanding when appropriate.

Example workflow:

```text
Repository

↓

Context Engine

↓

Knowledge Engine

↓

Engineering Review Engine

↓

Engineer Persona
```

The Local Intelligence Platform should enrich deterministic engineering reasoning rather than replace it.

---

# Current Organization

The platform is organized into departments.

Examples include:

Engineering

* Engineer
* Architect
* Auditor

Business

* Analyst
* Writer

Creative

* Artist
* Director

Operations

* Researcher
* Librarian

Each collaborator owns one responsibility.

Responsibilities should overlap as little as practical.

---

# Current Documentation

Organization

* `ORGANIZATION.md`

Collaborators

* `PERSONAS.md`

Workflow Orchestration

* `WORKFLOWS.md`

Additional documentation will evolve alongside the platform.

---

# Long-Term Vision

The Local Intelligence Platform should eventually feel less like interacting with artificial intelligence and more like collaborating with a well-organized team.

Future capabilities may include:

* Engineering councils
* Collaborative reasoning
* Shared memory
* Specialized local runtimes
* Creative collaboration
* Research orchestration
* Autonomous implementation workflows

These capabilities should continue following the same philosophy:

Responsibilities remain stable.

Implementations remain replaceable.

---

# Guiding Principle

The Local Intelligence Platform does not expose artificial intelligence.

It exposes intelligent collaborators organized around human intent.
