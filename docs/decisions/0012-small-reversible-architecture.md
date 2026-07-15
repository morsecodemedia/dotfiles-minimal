
# ADR-0012 — Small, Reversible Architecture

Status

**Accepted**

---

## Context

Large architectural rewrites introduce significant risk and reduce confidence during development.

Throughout the development of the Engineering Workstation, the highest-quality architectural improvements emerged through incremental implementation rather than large up-front redesigns.

---

## Decision

Architectural evolution occurs through small, reversible changes.

Large refactors are performed only after architecture has been validated through implementation.

Migration should favor:

* Introduce
* Dual-write
* Migrate consumers
* Remove legacy

rather than immediate replacement.

---

## Rationale

Incremental architecture:

* Reduces implementation risk.
* Simplifies debugging.
* Improves confidence.
* Encourages continuous validation.

Architecture should be earned through working software.

---

## Consequences

### Positive

* Safer migrations.
* Easier rollback.
* Continuous validation.
* Higher implementation confidence.

### Tradeoffs

* Temporary duplication during migration.
* Longer transition periods for major changes.

---

## Related Decisions

* ADR-0002 — Layered Platform Architecture
* ADR-0003 — Context as the Single Source of Engineering Context
* ADR-0005 — Engineering Review Prioritization
