
# ADR-0011 — Engineering Workstation Documentation Architecture

Status

**Accepted**

---

## Context

As the Engineering Workstation evolved into multiple platforms, documentation became increasingly difficult to navigate.

Documents accumulated around topics rather than ownership, leading to duplication and unclear responsibility.

---

## Decision

Documentation is organized according to the architecture of the ecosystem.

Root documentation owns ecosystem-wide concepts.

Each platform owns its own documentation.

Each engine owns its own design.

Historical decisions are recorded independently.

---

## Rationale

Documentation should mirror architecture.

Every document should answer exactly one question.

Every document should have exactly one owner.

This improves discoverability while reducing duplication.

---

## Consequences

### Positive

* Clear documentation ownership.
* Consistent navigation.
* Reduced duplication.
* Easier long-term maintenance.

### Tradeoffs

* Requires ongoing documentation discipline.
* Architectural changes may require documentation restructuring.

---

## Related Decisions

* ADR-0002 — Layered Platform Architecture
* ADR-0007 — Responsibilities Outlive Implementations
