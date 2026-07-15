
# ADR-0006 — Deterministic Before Probabilistic

Status

**Accepted**

---

## Context

Modern engineering workflows increasingly incorporate artificial intelligence.

While AI excels at synthesis, creativity, and exploration, it remains probabilistic and cannot consistently provide deterministic engineering truth.

Allowing probabilistic reasoning to become the primary source of engineering understanding would reduce predictability and make workstation behavior difficult to explain.

---

## Decision

The Engineering Workstation adopts deterministic reasoning as the foundation of engineering understanding.

Artificial intelligence is permitted only to enrich deterministic understanding.

Artificial intelligence must never replace deterministic engineering knowledge where explicit knowledge can reasonably exist.

---

## Rationale

Deterministic systems provide:

* Repeatability
* Explainability
* Stability
* Predictability

Artificial intelligence provides:

* Exploration
* Creativity
* Research
* Synthesis

The workstation should combine both strengths while preserving deterministic engineering behavior.

---

## Consequences

### Positive

* Engineering behavior remains explainable.
* AI becomes an accelerator rather than a dependency.
* Engineering knowledge remains explicit.

### Tradeoffs

* Some engineering knowledge must be authored rather than inferred.
* AI cannot become the authoritative source of engineering truth.

---

## Related Decisions

* ADR-0004 — Knowledge Owns Engineering Meaning
* ADR-0008 — Local Intelligence Platform as a Sibling Platform
* ADR-0009 — Intent Over Models
