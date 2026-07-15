# Dotfiles Architecture

## Mission

The Dotfiles platform establishes the engineering workstation foundation.

Its purpose is to create a predictable, portable, and reproducible runtime environment upon which the remainder of the ecosystem depends.

Dotfiles intentionally owns environment configuration.

It does not own engineering workflows.

---

# Philosophy

The workstation foundation should disappear into the background.

Engineers should spend time solving problems rather than configuring environments.

The platform should optimize for:

* Consistency
* Predictability
* Portability
* Simplicity
* Low maintenance

---

# Architectural Layers

The Dotfiles platform is responsible for the lowest software layer within the Engineering Workstation Ecosystem.

```text
Engineering Workstation

↓

Dotfiles

↓

Shared Runtime

↓

Platforms

↓

Products
```

Every higher-level platform assumes the runtime established by Dotfiles.

---

# Runtime Standards

The workstation intentionally targets a modern shell runtime.

Current requirements include:

* Bash 5.2+
* Git
* jq

Additional tooling should be introduced only when it provides clear engineering value.

Every dependency must justify its existence.

---

# Executable Standards

Executables own process execution.

Every executable:

* Begins with the platform shebang.
* Defines its execution policy.
* Owns process exit behavior.
* May consume shared libraries.

Executables should remain thin.

Whenever practical, reusable behavior belongs in libraries.

---

# Library Standards

Libraries provide reusable functionality.

Libraries:

* Never define shell execution policy.
* Never call `set -e`.
* Never call `set -u`.
* Never call `set -o pipefail`.
* Never terminate the calling process.

Libraries inherit execution behavior from their caller.

Libraries should own behavior rather than orchestration.

---

# Runtime Ownership

The Dotfiles platform owns:

* Shell configuration
* Runtime initialization
* Environment variables
* Shell conventions
* Shared aliases
* Shared functions
* Runtime discovery

The platform intentionally does not own:

* Engineering reasoning
* Repository analysis
* Artificial intelligence
* Business workflows

Those responsibilities belong to higher-level platforms.

---

# Relationship to NextGen

Dotfiles establishes runtime.

NextGen establishes engineering understanding.

Neither platform should duplicate the responsibilities of the other.

```text
Dotfiles

↓

Runtime

↓

NextGen

↓

Engineering Understanding
```

---

# Relationship to the Local Intelligence Platform

The Dotfiles platform prepares the operating environment required by the Local Intelligence Platform.

LIP owns:

* Persona management
* Runtime orchestration
* Model management

Dotfiles owns only the operating foundation.

---

# Future Direction

Future work may include:

* Runtime optimization
* Cross-platform portability
* Installation improvements
* Runtime validation
* Platform bootstrapping

Implementation details should remain secondary to maintaining a stable engineering environment.

---

# Guiding Principle

The best workstation foundation is the one engineers rarely have to think about.

When Dotfiles succeeds, every higher-level platform becomes easier to build.
