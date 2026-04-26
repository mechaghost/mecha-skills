#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$repo_dir/skills"
target_dir="${CODEX_SKILLS_DIR:-$HOME/.codex/skills}"

if [[ ! -d "$source_dir" ]]; then
  echo "No skills directory found at $source_dir" >&2
  exit 1
fi

mkdir -p "$target_dir"
echo "Syncing skills from $source_dir"
echo "Target: $target_dir"

changed_any=0

for skill_dir in "$source_dir"/*; do
  [[ -d "$skill_dir" ]] || continue
  [[ -f "$skill_dir/SKILL.md" ]] || {
    echo "Skipping $(basename "$skill_dir"): missing SKILL.md"
    continue
  }

  name="$(basename "$skill_dir")"
  dest="$target_dir/$name"
  mkdir -p "$dest"

  echo
  echo "Skill: $name"

  if command -v rsync >/dev/null 2>&1; then
    output="$(rsync -a --delete --itemize-changes "$skill_dir"/ "$dest"/)"
    if [[ -n "$output" ]]; then
      changed_any=1
      printf '%s\n' "$output" | sed 's/^/  /'
    else
      echo "  unchanged"
    fi
  else
    tmp="$(mktemp -d)"
    cp -R "$skill_dir"/. "$tmp"/
    if diff -qr "$tmp" "$dest" >/dev/null 2>&1; then
      echo "  unchanged"
    else
      changed_any=1
      rm -rf "$dest"
      mkdir -p "$dest"
      cp -R "$tmp"/. "$dest"/
      echo "  updated"
    fi
    rm -rf "$tmp"
  fi
done

echo
if [[ "$changed_any" -eq 1 ]]; then
  echo "Sync complete."
else
  echo "Sync complete. No changes."
fi
