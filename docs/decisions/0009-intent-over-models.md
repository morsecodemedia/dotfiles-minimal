
# ADR-0009 — Intent Over Models

Status

**Accepted**

---

## Context

Most AI tooling exposes implementation details directly to users.

Users are expected to choose language models, inference providers, and runtime configurations before accomplishing useful work.

This places implementation concerns ahead of user intent.

---

## Decision

The Engineering Workstation exposes intent rather than models.

Users express what they want to accomplish.

The platform determines which collaborator, workflow, runtime, and model best satisfies that intent.

Models remain implementation details.

---

## Rationale

Users naturally think in terms of problems rather than implementations.

Examples include:

* Engineer
* Architect
* Analyst
* Writer

rather than:

* Qwen
* DeepSeek
* Llama
* Whatever comes next

Responsibilities remain stable.

Models evolve.

---

## Consequences

### Positive

* Stable user experience.
* Replaceable model implementations.
* Simplified workflows.
* Reduced cognitive overhead.

### Tradeoffs

* Runtime orchestration becomes more sophisticated.
* Model selection becomes platform responsibility.

---

## Related Decisions

* ADR-0006 — Deterministic Before Probabilistic
* ADR-0007 — Responsibilities Outlive Implementations
* ADR-0010 — Engineering Organization Model
