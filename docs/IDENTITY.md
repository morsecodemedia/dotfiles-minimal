# Identity System

## Mission

The Identity System separates implementation from user experience.

The workstation has one internal implementation.

Users choose how they interact with it.

Identity is considered part of the user experience rather than part of the implementation.

---

# Philosophy

The workstation should expose identity.

It should hide implementation.

Users should remember the name they chose.

Developers should remember the implementation.

The implementation should remain invisible during normal use.

---

# Design Principles

## Identity Is User-Owned

Identity is selected during workstation setup.

It is never hard-coded into the platform.

Different users may interact with identical implementations using different identities.

---

## Stable Implementation

The internal executable remains stable.

User-facing identities remain configurable.

Changing identity should never change behavior.

---

## Separate Responsibilities

Identity affects presentation.

Identity never affects implementation.

Examples include:

* Primary command name
* Shell completions
* Prompt integration
* Helper aliases
* Documentation examples

Identity must never alter engineering behavior.

---

## Human-Centered Design

The workstation should adapt to the engineer.

Engineers should not adapt to implementation details.

Identity is one mechanism for making the workstation feel personal without increasing implementation complexity.

---

# Terminology

| Concept    | Description                                                     |
| ---------- | --------------------------------------------------------------- |
| Ecosystem  | The complete Engineering Workstation ecosystem.                 |
| Platform   | A major subsystem such as Dotfiles, NextGen, LIP, or Image Lab. |
| Product    | A user-facing capability built upon a platform.                 |
| Executable | The internal implementation entry point.                        |
| Identity   | The user-selected command name presented by the workstation.    |
| Service    | A capability exposed by the workstation.                        |

---

# Relationship to the Ecosystem

Identity spans the entire workstation.

It is intentionally independent of:

* Dotfiles
* NextGen
* Local Intelligence Platform
* Image Lab

Every platform should honor the user's selected identity whenever practical.

---

# Future Direction

Future capabilities may include:

* Multiple workstation identities
* Team identity profiles
* Environment-specific identities
* Shared branding across workstation services

Identity should continue affecting presentation only.

Implementation should remain stable.

---

# Guiding Principle

Users should remember their identity.

Developers should remember the implementation.

The workstation should make the distinction invisible.
