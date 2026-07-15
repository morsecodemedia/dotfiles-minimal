
# Engineering Review Engine

Version

**v1.1**

Status

**Active Development**

---

# Mission

The Engineering Review Engine is the engineering prioritization subsystem of NextGen.

Git answers one question:

> **What changed?**

The Review Engine answers three:

> **What deserves my attention first?**
>
> **Why does it matter?**
>
> **What should I do next?**

Review does **not** replace Git.

Git reports repository activity.

Review transforms repository activity into engineering understanding.

The purpose of Review is to reduce engineering uncertainty by helping engineers spend their limited review time where it has the greatest impact.

---

# Philosophy

The Engineering Review Engine transforms repository evidence into engineering priorities.

It is intentionally deterministic.

Every conclusion must be explainable.

Every recommendation must be traceable to evidence.

The goal is not to replace engineering judgment.

The goal is to improve engineering judgment.

---

# Core Principles

## Attention Is Finite

Every line presented to an engineer must justify its existence.

Noise is considered a product defect.

---

## Silence Is Signal

Inactive engineering domains should not appear.

Review never renders empty categories or "None" values.

---

## Prioritize Before Explaining

Review first determines where engineering attention belongs.

Only then does it explain why.

---

## Explain Why, Not Just What

Git already explains what changed.

Review explains why those changes deserve engineering attention.

---

## Recommendations Reduce Context Switching

Recommendations should minimize the number of decisions required after reading the report.

Whenever practical they should recommend concrete engineering actions.

Future versions may recommend commands, workflows, or playbooks.

---

## Engineering Context Is Unique

Repeated engineering observations should collapse into a single explanation.

Review should compress engineering understanding rather than expand repository noise.

---

## The Engine Owns Meaning

The Review Engine owns:

* Classification
* Prioritization
* Deduplication
* Engineering reasoning

The renderer owns presentation.

Presentation should never perform engineering reasoning.

---

# Engineering Domains

Review organizes repository evidence into engineering domains.

Engineering domains represent areas of engineering attention.

They are intentionally independent from repository structure.

## Risk-bearing

Risk-bearing domains influence engineering review order.

Examples include:

* Framework
* Executable
* Dependencies
* Configuration
* Build System

---

## Informational

Informational domains provide supporting engineering context without materially increasing engineering review priority.

Examples include:

* Documentation
* Architecture
* Roadmap
* Assets

Informational domains should never overshadow risk-bearing domains.

---

# Responsibilities

The Engineering Review Engine is responsible for:

* Consuming engineering context.
* Collecting repository evidence.
* Activating engineering knowledge.
* Identifying engineering domains.
* Prioritizing engineering attention.
* Producing engineering context.
* Recommending engineering actions.

The Review Engine intentionally does **not**:

* Replace Git.
* Replace code review.
* Perform static analysis.
* Generate code.
* Launch AI.
* Modify repositories.
* Make implementation decisions.

---

# Inputs

## Context Engine

The Review Engine consumes the Context Engine as its single source of engineering context.

Repository metadata must never be recollected.

---

## Repository Evidence

The Review Engine may collect only repository evidence not already owned by the Context Engine.

Examples include:

* Changed files
* Diff statistics
* Renames
* Insertions
* Deletions

---

## Knowledge Engine

The Review Engine consumes deterministic engineering knowledge.

The Knowledge Engine owns:

* Engineering domains
* Engineering context
* Engineering recommendations
* Matching rules

The Review Engine owns engineering reasoning.

---

# Processing Pipeline

The Engineering Review Engine follows a deterministic pipeline.

```text
Repository Evidence

↓

Knowledge Engine

↓

Engineering Domains

↓

Engineering Focus

↓

Engineering Context

↓

Recommendations
```

Each stage owns exactly one responsibility.

---

# Human Output Contract

The Engineering Review Engine communicates engineering understanding in the following order.

## Summary

High-level engineering state.

---

## Evidence

Repository evidence supporting the review.

---

## Diff Summary

Repository change statistics.

---

## Engineering Focus

Engineering domains requiring attention.

Focus is organized by engineering priority.

Example:

```text
Engineering Focus

Risk-bearing

Primary

• Framework

Additional

• Executable

Informational

Primary

• Documentation
```

Domains with no activity must never be rendered.

---

## Engineering Context

Engineering context explains why each active engineering domain deserves attention.

Context should answer:

> **Why should I care?**

Future versions should evolve context into richer engineering explanations rather than simply describing changed files.

---

## Recommendations

Recommendations describe what an engineer should do next.

Recommendations should:

* Reduce context switching.
* Be immediately actionable.
* Follow engineering review order.

Future versions may include:

* Suggested commands
* Review playbooks
* Domain-specific validation workflows

---

# Product Philosophy

The Engineering Review Engine is not:

* A reporting tool.
* A dashboard.
* A code review assistant.
* Static analysis.

It is an engineering prioritization engine.

The product succeeds when engineers consistently review the highest-impact engineering changes before everything else.

---

# Relationship to NextGen

The Engineering Review Engine consumes deterministic context and deterministic knowledge.

```text
Repository

↓

Context Engine

↓

Knowledge Engine

↓

Engineering Review Engine

↓

Engineer
```

Review exists to transform engineering understanding into engineering priorities.

---

# Future Direction

Future capabilities may include:

* Technology-aware engineering context.
* Dependency summaries.
* Suggested review commands.
* Domain-specific review playbooks.
* Engineering rationale.
* AI enrichment built on deterministic foundations.

Artificial intelligence should enrich engineering understanding rather than replace deterministic reasoning.

---

# Definition of Done

The Engineering Review Engine is complete when:

* Context is consumed exclusively from the Context Engine.
* Engineering knowledge is consumed exclusively from the Knowledge Engine.
* Engineering domains are deterministic.
* Engineering focus is explainable.
* Engineering context is unique.
* Recommendations are actionable.
* Human output minimizes unnecessary noise.
* ShellCheck passes.
* `bash -n` passes.

---

# Guiding Principle

Git tells engineers what changed.

The Engineering Review Engine helps engineers decide what deserves their attention.

Everything else follows from that principle.
