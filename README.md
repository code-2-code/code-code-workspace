# code-code-workspace

Meta workspace for the split Code Code repositories.

GitHub does not provide a single repository "workspace" that owns multiple
source repositories as one checkout. The practical model is multiple GitHub
repositories under the same owner, plus a local workspace file or Codespaces
configuration when a task needs more than one repository.

Default agent workflow:

1. Open one repository for implementation work whenever possible.
2. Open `code-code-contracts` only when public contracts must change.
3. Use this workspace only for cross-repository release, dependency upgrade, or deployment coordination.

Repositories:

- `code-code-contracts`: protobuf and generated Go/TypeScript contracts.
- `code-code-platform`: platform control-plane and runtime Go services.
- `code-code-console`: console API, console web, and showcase surfaces.
- `code-code-deploy`: Helm charts, image definitions, deployment scripts, and agent image assets.

Clone all repositories:

```bash
./clone.sh
```

Open `code-code.code-workspace` in VS Code when you need a multi-root local
workspace.
