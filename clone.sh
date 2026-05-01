#!/usr/bin/env bash
set -euo pipefail

workspace_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${workspace_dir}"

while IFS= read -r repo; do
  [ -n "${repo}" ] || continue
  name="${repo##*/}"
  if [ -d "${name}/.git" ]; then
    printf '[workspace] %s already exists\n' "${name}"
    continue
  fi
  gh repo clone "${repo}" "${name}"
done < repos.txt
