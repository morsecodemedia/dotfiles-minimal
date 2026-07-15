# Engineering Workstation

An opinionated engineering workstation focused on reducing cognitive friction, improving engineering decision-making, and building a local-first development environment.

This repository has evolved beyond a traditional dotfiles collection. It is now the foundation of a larger engineering ecosystem composed of independent but complementary platforms.

## Mission

The goal of this workstation is not to automate engineering.

The goal is to eliminate unnecessary friction so engineering effort can be spent solving problems instead of managing tools.

Every subsystem exists to answer a different question:

* **What is my current state?**
* **What deserves my attention?**
* **What should I do next?**
* **How can repetitive work be delegated?**

The workstation should help engineers make better decisions, not simply provide more information.

## Ecosystem

### Dotfiles

The foundation of the workstation.

Responsible for:

* Shell configuration
* Environment management
* Runtime configuration
* Tool installation
* Personal preferences

### NextGen

The engineering cognition platform.

Responsible for reducing engineering friction through deterministic tooling and engineering knowledge.

Current subsystems include:

* Context Engine
* Engineering Review Engine
* Knowledge Engine
* Engineering Workflows

### Local Intelligence Platform (LIP)

A local-first intelligence platform built around specialized engineering and creative personas.

Rather than interacting directly with language models, work is delegated to purpose-built collaborators such as:

* Engineer
* Architect
* Analyst
* Auditor
* Writer

Model selection is considered an implementation detail. Personas remain stable while models evolve over time.

### Image Lab

A local creative environment for concept exploration and visual thinking.

Image Lab exists to support experimentation, ideation, mood boards, concept art, and communication with human artists—not to replace them.

## Design Principles

The workstation is guided by several core principles:

* Attention is finite.
* Silence is signal.
* Deterministic systems before probabilistic systems.
* Build platforms before products.
* Explain why, not just what.
* Reduce context switching whenever possible.
* Human judgment remains the final authority.

## Repository Structure

This repository is organized around independent platforms.

```text
docs/

    ECOSYSTEM.md

    dotfiles/

    nextgen/

    lip/

    image-lab/
```

Each subsystem owns its own documentation, architecture, roadmap, and implementation details.

## Current Status

The engineering workstation is under active development.

Current focus areas include:

* Engineering Review Engine
* Documentation architecture
* Local Intelligence Platform
* Creative tooling
* Engineering workflows

## Documentation

The documentation is organized by subsystem.

Start here:

* `docs/ECOSYSTEM.md`

From there, navigate into the subsystem that matches your area of interest.

## Philosophy

Git tells engineers what changed.

The workstation helps engineers decide what deserves their attention.

That distinction defines this project.
