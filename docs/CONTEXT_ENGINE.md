# Context Engine

## Purpose

The Context Engine is the single source of truth for workstation state.

Consumers never inspect Git, Node, tmux, or the repository directly.

Instead they consume the Context Engine.

```
ctx --json
```

## Responsibilities

- Detect repository
- Detect project type
- Detect runtime
- Detect workstation
- Detect engineering health

## Consumers

- review
- plan
- doctor
- ai

## Principle

Collect once.

Consume everywhere.
