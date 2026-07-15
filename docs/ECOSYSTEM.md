
# Engineering Workstation Ecosystem

## Mission

Build an opinionated engineering workstation that reduces cognitive friction through deterministic tooling, thoughtful automation, and purpose-built local intelligence.

The workstation exists to help engineers spend more time making decisions and less time managing tools.

It is designed around capabilities rather than technologies.

Individual tools, models, and implementations may evolve over time.

The responsibilities of each subsystem should remain stable.

---

# Ecosystem Philosophy

The workstation is composed of independent platforms.

Each platform has a single mission.

Platforms collaborate through well-defined interfaces while remaining independently evolvable.

This allows the workstation to continuously improve without tightly coupling unrelated systems.

---

# Ecosystem Layers

## Foundation

The foundation prepares and configures the workstation.

It establishes a consistent runtime environment and shared operating conventions.

Current foundation components include:

* Operating System
* Homebrew
* Dotfiles
* Shell Runtime
* tmux
* Shared Configuration

The foundation should never contain engineering knowledge.

Its responsibility ends once the workstation is operational.

---

## Platforms

Platforms provide long-lived capabilities.

Each platform owns a specific area of responsibility.

### Dotfiles

Mission

Provide a consistent and portable workstation environment.

Responsibilities

* Shell configuration
* Runtime configuration
* Environment variables
* Aliases
* Tool installation
* Personal preferences

---

### NextGen

Mission

Reduce engineering cognitive friction.

NextGen transforms repository state into engineering understanding using deterministic reasoning.

Responsibilities

* Context Engine
* Engineering Review Engine
* Knowledge Engine
* Engineering Workflows
* Future engineering capabilities

NextGen intentionally prioritizes deterministic reasoning before probabilistic reasoning.

---

### Local Intelligence Platform (LIP)

Mission

Provide purpose-built intelligent collaborators.

LIP is not a collection of language models.

LIP is an organization composed of specialized roles.

Examples include:

* Engineer
* Architect
* Analyst
* Auditor
* Writer

Each role owns responsibilities.

Models are considered replaceable implementation details.

---

### Image Lab

Mission

Support visual thinking.

Image Lab exists to accelerate ideation, concept exploration, and communication.

It is intended to complement human creativity rather than replace it.

Typical use cases include:

* Concept exploration
* Mood boards
* Tattoo ideation
* Horror concept art
* Story visualization
* Creative experimentation

---

# Products

Products are user-facing capabilities built upon platforms.

Examples include:

## NextGen

* ctx
* review
* engineer
* doctor

## LIP

Future examples include:

* Engineer
* Architect
* Analyst
* Auditor
* Writer

Products should remain focused.

Each product should solve one problem exceptionally well.

---

# Platform Relationships

```text
Engineering Workstation

├── Foundation
│   ├── Operating System
│   ├── Homebrew
│   ├── Dotfiles
│   └── Shared Runtime
│
├── Platform
│   ├── NextGen
│   ├── Local Intelligence Platform
│   └── Image Lab
│
└── Products
    ├── ctx
    ├── review
    ├── engineer
    ├── doctor
    ├── Engineer
    ├── Architect
    ├── Analyst
    ├── Auditor
    └── Writer
```

Platforms are peers.

Products consume platforms.

Platforms should not become tightly coupled.

---

# Engineering Principles

The workstation is guided by several principles.

## Attention is finite.

Reduce unnecessary cognitive load.

## Silence is signal.

Do not render information that requires no action.

## Explain why, not just what.

Facts without context rarely improve decisions.

## Deterministic before probabilistic.

Engineering knowledge should be explicit whenever practical.

Artificial intelligence should enrich engineering judgment rather than replace it.

## Responsibilities outlive implementations.

Platforms, products, and collaborators should be defined by their responsibilities.

Technologies remain replaceable.

---

# Long-Term Vision

The workstation should eventually feel less like a collection of developer tools and more like a cohesive engineering operating environment.

Every subsystem should contribute toward one objective:

Helping engineers consistently make better decisions.

---

# Documentation

Subsystem documentation is organized independently.

* `dotfiles/`
* `nextgen/`
* `lip/`
* `image-lab/`

Each subsystem owns its own architecture, implementation, roadmap, and product documentation.

This document intentionally describes only the ecosystem.
