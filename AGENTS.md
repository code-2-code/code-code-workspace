# Agent Rules

- Prefer working in one split repository at a time.
- Do not modify multiple repositories unless the task explicitly requires a cross-repository release or dependency upgrade.
- When a cross-repository change is required, update repositories in this order:
  `code-code-contracts` -> `code-code-platform-session` -> the owning focused service/UI repository -> `code-code-deploy` -> this workspace pointer repository.
- Contract changes must start in `code-code-contracts`.
- Downstream repositories should consume released contract versions rather than editing generated files.
- Use this workspace repository for coordination only; do not put product/runtime source code here.
- Deployment/image boundary changes belong in `code-code-deploy`; follow its `AGENTS.md` official baseline before changing Helm, Dockerfile, Bake, or CI behavior.
- Split repositories should stay source-owner scoped. Do not reintroduce old aggregate monorepo paths or cross-repo copies when a submodule, versioned dependency, release artifact, or explicit BuildKit context is the real boundary.
- Treat `code-code-platform` and `code-code-console` as read-only migration references. Do not add new feature work, new CI wiring, or new dependencies to those aggregate repositories.
