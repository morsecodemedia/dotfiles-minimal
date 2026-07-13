# Review

Version

**v1.0**

Status

**In Development**

---

# Mission

Review is an engineering review prioritization engine.

Git answers one question:

> **What changed?**

Review answers three:

> **What deserves my attention first?**
>
> **Why does it matter?**
>
> **What should I do next?**

Review does **not** replace Git.

Review exists to reduce engineering uncertainty by helping engineers spend their limited review time where it matters most.

---

# Philosophy

Review transforms repository evidence into engineering priorities.

It is intentionally deterministic.

Every conclusion must be explainable.

Every recommendation must be traceable to evidence.

The goal is not to replace engineering judgment.

The goal is to improve it.

---

# Core Principles

## Attention is finite.

Every line shown to the engineer must earn its place.

## Silence is signal.

Domains that require no attention should not appear.

Review never renders "None."

## Prioritize before explaining.

Review first identifies where attention belongs.

Only then does it explain why.

## Recommendations reduce context switching.

Recommendations should minimize the number of decisions an engineer must make after reading Review.

Whenever practical, recommendations should be immediately actionable.

## Explain why, not just what.

Git already explains what changed.

Review explains why the change matters.

---

# Engineering Domains

Review classifies repository changes into engineering domains.

Domains represent areas of engineering attention.

## Risk-bearing

Risk-bearing domains influence engineering review priority.

Examples include:

* Framework
* Executable
* Dependencies
* Configuration
* Build System

## Informational

Informational domains provide context without materially increasing engineering risk.

Examples include:

* Documentation
* Architecture
* Roadmap
* Assets

Informational domains should never overshadow risk-bearing domains.

---

# Responsibilities

Review is responsible for:

* Consuming engineering context.
* Collecting repository evidence.
* Identifying engineering domains.
* Prioritizing engineering attention.
* Explaining engineering impact.
* Recommending the next engineering actions.

---

# Non-Goals

Review does **not**:

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

Review consumes the Context Engine as its single source of engineering context.

Repository metadata must never be recollected.

## Repository Evidence

Review may collect repository evidence not already owned by the Context Engine.

Examples include:

* Changed files
* Diff statistics
* Renames
* Insertions
* Deletions

---

# Processing Pipeline

Review follows a deterministic pipeline.

```text
Repository Evidence

↓

Engineering Domains

↓

Review Priorities

↓

Engineering Context

↓

Recommendations
```

Each stage has exactly one responsibility.

---

# Human Output Contract

Review should communicate information in the following order.

## Summary

High-level repository state.

## Review Priorities

Engineering domains requiring attention.

Domains should be grouped by importance.

Example:

```text
Review Priorities

Risk-bearing

Primary

• Framework

Present

• Executable

Informational

Present

• Documentation
```

Domains with no activity must not be rendered.

## Evidence

Repository evidence supporting the review.

## Engineering Context

Explain why each active engineering domain deserves attention.

Context should answer:

> Why should I care?

Whenever possible, context should explain downstream impact rather than simply describing the changed file.

## Recommendations

Recommendations should be actionable.

Recommendations should reduce context switching.

Whenever practical they should suggest specific review activities.

Future versions may also recommend commands.

---

# Product Philosophy

Review is not a reporting tool.

Review is not a dashboard.

Review is not a code review assistant.

Review is an engineering prioritization engine.

The product succeeds when engineers consistently review the highest-impact changes before everything else.

---

# Future Direction

Future versions may include:

* Dependency summaries.
* Engineering context for individual technologies.
* Suggested review commands.
* Review ordering.
* Domain-specific review playbooks.

These enhancements must remain deterministic and evidence-based.

---

# Definition of Done

Review v1.0 is complete when:

* Context is consumed exclusively from the Context Engine.
* Engineering domains are deterministic.
* Review priorities are explainable.
* Recommendations are actionable.
* Human output minimizes unnecessary noise.
* ShellCheck passes.
* `bash -n` passes.

---

# Guiding Principle

Git tells engineers what changed.

Review tells engineers what deserves their attention.

That distinction defines the product.
