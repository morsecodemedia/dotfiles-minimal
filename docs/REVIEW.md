# Review v1.0

## Mission

Transform repository state into engineering observations.

The review workflow consumes the Context Engine and repository changes to help engineers understand the impact of their work.

---

# Responsibilities

- Consume Context Engine.
- Analyze repository changes.
- Classify engineering scope.
- Produce engineering observations.
- Recommend the next engineering action.

---

# Non-Goals

Review does not:

- Replace Git.
- Generate code.
- Launch AI.
- Modify repositories.
- Make implementation decisions.

---

# Human Output

Engineering Review

Summary

Scope

Files

Diff Summary

Engineering Observations

Recommendations

---

# JSON Contract

Summary

Scope

Files

Observations

Recommendations

---

# Definition of Done

- Consume ctx only.
- No duplicated repository context.
- Human output.
- JSON output.
- ShellCheck clean.
- bash -n clean.
