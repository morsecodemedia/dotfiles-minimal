
# Review v1.0

## Mission

Transform repository changes into explainable engineering confidence.

The Review Engine consumes the Context Engine and repository evidence to answer one question:

> **How confident should an engineer be before continuing?**

Review does **not** replace Git.

Review is not a code review tool. Git already shows what changed. Review exists to prioritize engineering attention by identifying the changes most likely to have meaningful downstream impact, while minimizing noise and reducing context switching.
---

# Philosophy

The Review Engine exists to reduce engineering uncertainty.

It transforms raw repository evidence into engineering judgment using deterministic heuristics.

Every conclusion must be explainable.

Every recommendation must be traceable to evidence.

---

# Responsibilities

The Review Engine is responsible for:

* Consuming the Context Engine.
* Collecting repository evidence.
* Classifying engineering change categories.
* Producing engineering observations.
* Calculating engineering confidence.
* Recommending the next engineering action.

---

# Non-Goals

The Review Engine does **not**:

* Replace Git.
* Replace code review.
* Generate code.
* Launch AI.
* Modify repositories.
* Make implementation decisions.

---

# Inputs

## Context Engine

The Review Engine consumes the Context Engine as its single source of engineering context.

Repository metadata must never be recollected.

## Repository Evidence

The Review Engine may collect only repository evidence that is not already owned by the Context Engine.

Examples include:

* Changed files
* Diff statistics
* Rename detection
* Insertions
* Deletions

---

# Processing Pipeline

The Review Engine follows a deterministic pipeline.

```text
Evidence

↓

Change Categories

↓

Engineering Observations

↓

Engineering Confidence

↓

Recommendations
```

Each stage has exactly one responsibility.

---

# Human Output Contract

The human interface renders information in the following order.

## Summary

Executive summary of repository activity.

## Change Categories

Engineering categories affected by the current changes.

Examples include:

* Executable
* Framework
* Configuration
* Documentation
* Dependencies
* Build System
* Tests
* Assets

## Evidence

Raw repository evidence supporting the review.

## Diff Summary

Repository diff statistics.

## Engineering Observations

Deterministic engineering conclusions derived from the evidence.

## Engineering Confidence

Overall engineering confidence.

Confidence Levels:

* Very High
* High
* Medium
* Low
* Very Low

## Recommendations

Exactly one or more actionable engineering recommendations.

Recommendations are derived from observations.

---

# JSON Contract

```json
{
  "summary": [],
  "categories": [],
  "evidence": [],
  "diff": {},
  "observations": [],
  "confidence": {
    "level": "",
    "score": 0
  },
  "recommendations": []
}
```

The JSON contract is considered stable within major versions.

---

# Heuristic Contract

The Review Engine consumes engineering heuristics.

Each heuristic contributes:

* Category
* Weight
* Observation
* Recommendation

The Review Engine owns:

* Evaluation
* Confidence calculation
* Rendering

Heuristics own engineering knowledge.

---

# Definition of Done

Review v1.0 is complete when:

* Context Engine is the only source of repository context.
* Repository evidence is deterministic.
* Engineering observations are explainable.
* Confidence is deterministic.
* Human output is complete.
* JSON output is complete.
* ShellCheck passes.
* `bash -n` passes.

---

# Status

Version

**v1.0**

Status

**In Development**
