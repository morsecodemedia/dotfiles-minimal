
# Image Lab Engines

## Overview

Image Lab is implemented as a collection of independent engines.

Each engine owns a single responsibility.

Engines collaborate through clearly defined interfaces while remaining independently evolvable.

Architecture defines **what** the platform is.

Engines define **how** the platform fulfills those responsibilities.

---

# Identity Engine

## Purpose

Owns the lifecycle of reusable visual identities.

## Owns

* Identity definitions
* Metadata
* Version history
* Relationships
* Identity lifecycle
* Canonical reference selection

## Consumes

* Reference Sets
* User input
* Project context

## Produces

* Identity records
* Identity versions
* Identity metadata

## Does Not Own

* Image generation
* Workflow execution
* Asset persistence

---

# Project Engine

## Purpose

Establishes the creative context for a project.

## Owns

* Project metadata
* Creative goals
* Identity assignments
* Workflow selection
* Output targets

## Consumes

* Identities
* Workflows
* References

## Produces

* Project context
* Creative scope

## Does Not Own

* Identity definitions
* Generation
* Asset cataloging

---

# Reference Engine

## Purpose

Manages reusable visual references.

## Owns

* Reference images
* Reference Sets
* Mood boards
* Style references
* Material references
* Composition references

## Consumes

* User assets
* Identity associations

## Produces

* Structured visual guidance

## Does Not Own

* Identity lifecycle
* Image generation

---

# Workflow Engine

## Purpose

Defines reproducible creative workflows.

## Owns

* Workflow definitions
* Generation parameters
* Runtime configuration
* Processing pipelines

## Consumes

* Project context
* Identity context
* References

## Produces

* Executable workflow plans

## Does Not Own

* GPU execution
* Identity management
* Asset cataloging

---

# Generation Engine

## Purpose

Executes image generation workflows.

## Owns

* Runtime execution
* Job scheduling
* GPU utilization
* Queue management
* Runtime adapters

## Consumes

* Workflow plans

## Produces

* Generated artifacts

## Does Not Own

* Creative intent
* Identities
* References
* Project management

Generation is intentionally isolated from creative decision-making.

---

# Evaluation Engine

## Purpose

Supports creative review and selection.

## Owns

* Comparisons
* Ratings
* Favorites
* Approvals
* Candidate selection

## Consumes

* Generated artifacts

## Produces

* Selected artifacts
* Creative decisions

## Does Not Own

* Image generation
* Identity definitions

---

# Catalog Engine

## Purpose

Persists reusable creative assets.

## Owns

* Storage
* Indexing
* Search
* Retrieval
* Metadata persistence

## Consumes

* Platform assets

## Produces

* Persistent collections

## Does Not Own

* Identity behavior
* Workflow behavior
* Generation logic

The Catalog Engine catalogs assets.

It does not define them.

---

# Publishing Engine

## Purpose

Prepares approved assets for external use.

## Owns

* Export
* Format conversion
* Naming
* Optimization
* Packaging
* Delivery

## Consumes

* Approved artifacts

## Produces

* Published assets

## Does Not Own

* Creative workflows
* Image generation
* Identity management

---

# Engine Relationships

```text
Identity Engine
        │
        ▼
 Project Engine
        │
        ├──────────────┐
        ▼              ▼
Reference Engine   Workflow Engine
        │              │
        └──────┬───────┘
               ▼
      Generation Engine
               ▼
      Evaluation Engine
               ▼
        Catalog Engine
               ▼
      Publishing Engine
```

Each engine owns a single responsibility.

No engine should duplicate another engine's ownership.

---

# Design Principles

All Image Lab engines follow the same architectural principles:

* Own one responsibility.
* Consume explicit inputs.
* Produce explicit outputs.
* Prefer composition over coupling.
* Separate creative intent from execution.
* Keep implementations replaceable.

The goal is a platform whose architecture remains stable as models, runtimes, and creative technologies evolve.
