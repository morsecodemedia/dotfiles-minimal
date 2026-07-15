
# ADR-0002 — Layered Platform Architecture

Status

**Accepted**

---

## Context

As the workstation evolved, responsibilities expanded beyond shell configuration.

Engineering tooling, intelligent collaborators, and creative workflows required independent evolution while remaining cohesive as a single workstation.

A monolithic architecture would tightly couple unrelated capabilities and reduce long-term maintainability.

---

## Decision

Organize the workstation as layered platforms.

```text
Foundation

↓

Platforms

↓

Products
```

Foundation prepares the workstation.

Platforms provide reusable capabilities.

Products expose user-facing functionality.

---

## Rationale

Layered architecture:

* Establishes clear ownership.
* Reduces coupling.
* Encourages reuse.
* Allows platforms to evolve independently.
* Keeps products focused on one responsibility.

---

## Consequences

### Positive

* Clear architectural boundaries.
* Reusable platform capabilities.
* Easier long-term evolution.
* Simpler documentation ownership.

### Tradeoffs

* Requires stronger architectural discipline.
* Introduces additional abstraction compared to a monolithic repository.

---

## Related Decisions

* ADR-0003 — Context as the Single Source of Engineering Context
* ADR-0007 — Responsibilities Outlive Implementations
* ADR-0008 — Local Intelligence Platform as a Sibling Platform
