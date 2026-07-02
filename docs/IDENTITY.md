# Workstation Identity

## Philosophy

The workstation has an internal executable.

The user chooses its public identity.

Examples:

- morse
- leaf
- forge
- ng

The identity is configured during first-run setup, not at build time.

The executable remains constant.

The identity is user-defined.


## Identity Controls

The identity determines:

- Primary command name
- Shell completions
- Helper aliases
- Prompt integration
- Documentation examples

The identity does not determine implementation.

## Terminology

| Concept | Description |
|----------|-------------|
| Project | NextGen Workstation |
| Executable | The internal CLI binary (currently `ng`) |
| Identity | The user-selected command name (for example: `morse`, `leaf`) |
| Service | A capability exposed by the workstation (for example: `ai`, `ctx`, `doctor`) |

## Design Principle

Users should remember their identity.

Developers should remember the executable.

The implementation should be invisible.
