
# Platform Standards

## Executables

Executables own process execution.

Every executable:

- Starts with `#!/usr/bin/env bash`
- Uses `set -euo pipefail`
- Owns process exit behavior

Executables may source libraries.

---

## Libraries

Libraries provide reusable functionality.

Libraries:

- Start with `#!/usr/bin/env bash`
- Never call `set -e`
- Never call `set -u`
- Never call `set -o pipefail`
- Never mutate shell execution policy

Libraries inherit execution behavior from their caller.

---

## Architecture

The workstation follows layered architecture.

Commands consume engines.

Engines consume knowledge.

Knowledge contains engineering intent.

## Runtime Requirements

NextGen Workstation requires:

- Bash 5.2+
- Git
- jq

The platform intentionally targets a modern Bash runtime.

Compatibility with the macOS system Bash (3.2) is not a design goal.
