# Agent Rules

- Prefer working in one split repository at a time.
- Do not modify multiple repositories unless the task explicitly requires a cross-repository release or dependency upgrade.
- Contract changes must start in `code-code-contracts`.
- Downstream repositories should consume released contract versions rather than editing generated files.
- Use this workspace repository for coordination only; do not put product/runtime source code here.
