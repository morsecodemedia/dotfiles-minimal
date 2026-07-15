
# ADR-0008 — Local Intelligence Platform as a Sibling Platform

Status

**Accepted**

---

## Context

Artificial intelligence capabilities initially appeared to be a natural extension of NextGen.

As the workstation evolved, it became clear that deterministic engineering reasoning and intelligent collaboration solve fundamentally different problems.

Coupling them would reduce the long-term flexibility of both systems.

---

## Decision

The Local Intelligence Platform (LIP) is established as an independent platform within the Engineering Workstation Ecosystem.

NextGen and LIP collaborate through explicit interfaces.

Neither platform owns the responsibilities of the other.

---

## Rationale

NextGen owns deterministic engineering reasoning.

LIP owns intelligent collaboration.

Maintaining this separation allows both platforms to evolve independently while remaining complementary.

The workstation benefits from deterministic engineering foundations and optional intelligent enrichment.

---

## Consequences

### Positive

* Independent platform evolution.
* Clear architectural ownership.
* Replaceable AI implementations.
* Stable engineering foundations.

### Tradeoffs

* Cross-platform integration requires explicit interfaces.
* Some capabilities require collaboration between platforms.

---

## Related Decisions

* ADR-0002 — Layered Platform Architecture
* ADR-0006 — Deterministic Before Probabilistic
* ADR-0009 — Intent Over Models
