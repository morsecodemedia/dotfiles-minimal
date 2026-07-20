
# Image Lab Core Concepts

## Overview

Image Lab is built upon a small set of core concepts that define the platform's vocabulary.

These concepts describe **what** the platform manages rather than **how** it is implemented.

Every workflow, engine, command, and feature should reinforce this shared language.

---

# Identity

An **Identity** is a reusable visual concept that persists across projects.

Identities represent things with continuity rather than individual images.

Examples include:

* Characters
* Brands
* Products
* Locations
* Vehicles
* Creatures
* Props
* Materials
* Styles
* Color palettes

An identity may evolve through multiple versions while remaining the same conceptual asset.

**Identity owns visual meaning.**

---

# Project

A **Project** is a bounded creative effort.

Projects provide context for creative work by assembling identities, references, workflows, and outputs toward a specific goal.

Projects consume identities.

They do not own them.

---

# Reference

A **Reference** is visual evidence that communicates creative intent.

References may define:

* Appearance
* Composition
* Lighting
* Style
* Materials
* Color
* Mood
* Anatomy
* Perspective

Reference images are first-class creative assets.

They inform identities and workflows without replacing them.

---

# Reference Set

A **Reference Set** is a curated collection of references describing a specific aspect of an identity or project.

Examples include:

* Character appearance
* Costume evolution
* Lighting studies
* Material samples
* Architectural inspiration
* Environmental mood

Reference Sets make creative intent reusable.

---

# Workflow

A **Workflow** is a reproducible creative process.

Workflows transform creative intent into visual artifacts.

A workflow may include:

* References
* Identity context
* Generation parameters
* Editing operations
* Post-processing
* Publishing steps

Workflows should produce consistent results while remaining reusable across projects.

---

# Generation

A **Generation** is one execution of a workflow.

Each generation produces one or more artifacts.

Generations document exploration.

They do not define an identity.

---

# Artifact

An **Artifact** is any asset produced during creative work.

Artifacts include:

* Generated images
* Masks
* Layer files
* Metadata
* Previews
* Variations
* Intermediate outputs
* Final renders

Artifacts capture creative progress.

---

# Library

The **Library** is the persistent collection of reusable creative assets.

The Library may contain:

* Identities
* Reference Sets
* Workflows
* Models
* LoRAs
* Embeddings
* Styles
* Materials
* Outputs
* Publications

The Library enables knowledge accumulated in one project to benefit future work.

---

# Publication

A **Publication** is an approved artifact intended for use outside Image Lab.

Examples include:

* Marketing assets
* Album artwork
* Print-ready illustrations
* Web graphics
* Social media content
* Production assets

Publication marks the transition from creative exploration to creative delivery.

---

# Version

A **Version** is a snapshot of an identity at a specific point in its evolution.

Versions preserve creative continuity while allowing identities to improve over time.

Projects may intentionally reference a specific version to ensure visual consistency.

---

# Relationship

A **Relationship** describes how identities connect to one another.

Examples include:

* A character belongs to a world.
* A product belongs to a brand.
* A vehicle belongs to a faction.
* A palette belongs to a visual style.
* A prop belongs to a character.

Relationships transform isolated assets into connected creative systems.

---

# Creative Lifecycle

Creative work progresses through a consistent lifecycle.

```text
Creative Goal
        ↓
    Identity
        ↓
    References
        ↓
     Workflow
        ↓
    Generation
        ↓
     Artifact
        ↓
    Evaluation
        ↓
     Version
        ↓
   Publication
```

This lifecycle emphasizes that identities persist while artifacts accumulate throughout the creative process.

---

# Guiding Principles

The platform's vocabulary is intentionally stable.

Implementations may evolve.

Models may change.

Generation technologies may improve.

These concepts should remain consistent because they describe the enduring responsibilities of Image Lab rather than the technologies used to implement them.

---

# Guiding Principle

> Every artifact expresses an identity.
>
> Every identity outlives its artifacts.
