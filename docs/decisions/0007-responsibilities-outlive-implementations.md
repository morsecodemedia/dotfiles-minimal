
# ADR-0007 — Responsibilities Outlive Implementations

Status

**Accepted**

---

## Context

Technologies evolve continuously.

Programming languages, inference runtimes, models, package managers, and tooling all change over time.

Architectures built around implementation choices require continual redesign as technology evolves.

---

## Decision

The workstation defines systems according to responsibilities rather than implementations.

Platforms, products, engines, collaborators, and workflows should all be described by the responsibilities they own.

Implementation technologies remain replaceable.

---

## Rationale

Responsibilities evolve slowly.

Implementations evolve rapidly.

Designing around responsibilities provides:

* Stable architecture.
* Replaceable implementations.
* Long-term maintainability.
* Clear ownership.

This principle applies across the entire ecosystem.

---

## Consequences

### Positive

* Platforms survive technology changes.
* Products remain focused.
* Collaborators remain stable as models evolve.

### Tradeoffs

* Architectural discipline becomes more important.
* Additional abstraction is required during design.

---

## Related Decisions

* ADR-0002 — Layered Platform Architecture
* ADR-0008 — Local Intelligence Platform as a Sibling Platform
* ADR-0009 — Intent Over Models
