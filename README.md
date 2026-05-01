# code-code-workspace

Meta workspace for the split Code Code repositories.

GitHub does not provide nested repository folders under a personal account.
This repository is the project directory: it contains the split source
repositories as Git submodules and includes a VS Code multi-root workspace file.

Default agent workflow:

1. Open one repository for implementation work whenever possible.
2. Open `code-code-contracts` only when public contracts must change.
3. For cross-repository changes, land work in this order:
   `code-code-contracts` -> `code-code-platform-session` -> owning focused
   service/UI repository -> `code-code-deploy` -> this workspace pointer
   repository.
4. Use this workspace only for cross-repository release, dependency upgrade, or deployment coordination.
5. Treat `code-code-platform` and `code-code-console` as read-only migration
   references; new implementation work belongs in the focused repositories.

Repositories:

- `code-code-contracts`: protobuf and generated Go/TypeScript contracts.
- `code-code-platform`: aggregate platform control-plane and runtime Go services kept for migration.
- `code-code-platform-catalog`: focused model, support, and CLI runtime catalog services.
- `code-code-platform-auth-network`: focused auth, OAuth, egress, and network policy services.
- `code-code-platform-provider`: focused provider catalog, connection, observability, and orchestration services.
- `code-code-platform-agent-runtime`: focused AgentSession, AgentRun, timeline, and runtime orchestration services.
- `code-code-platform-session`: focused session persistence and platform domain helper packages.
- `code-code-platform-profile`: focused profile configuration service.
- `code-code-platform-notifications`: focused notification dispatcher and callback services.
- `code-code-console`: aggregate console API, console web, and showcase surfaces kept for migration.
- `code-code-console-api`: focused console BFF and chat HTTP services.
- `code-code-console-web`: focused React console and showcase web workspaces.
- `code-code-showcase-api`: focused showcase-facing HTTP API.
- `code-code-deploy`: Helm charts, image definitions, deployment scripts, and agent image assets.

Clone the whole project directory:

```bash
git clone --recurse-submodules https://github.com/code-2-code/code-code-workspace.git
```

If you already cloned it without submodules:

```bash
./clone.sh
```

Open `code-code.code-workspace` in VS Code when you need a multi-root local
workspace.
