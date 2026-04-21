#!/usr/bin/env bash
# Install every skill in this repo into ~/.claude/skills as a symlink.
# Safe to re-run: existing symlinks are refreshed.
# If a target exists as a real file or directory, it's moved aside with .bak.<timestamp>.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

mkdir -p "$TARGET_DIR"

installed=0
for dir in "$REPO_DIR"/*/; do
  [[ -f "${dir}SKILL.md" ]] || continue
  skill="$(basename "$dir")"
  link="$TARGET_DIR/$skill"
  src="${dir%/}"

  if [[ -L "$link" ]]; then
    rm "$link"
  elif [[ -e "$link" ]]; then
    backup="${link}.bak.$(date +%s)"
    echo "backing up existing $link -> $backup"
    mv "$link" "$backup"
  fi

  ln -s "$src" "$link"
  echo "installed: $skill -> $link"
  installed=$((installed + 1))
done

echo
echo "$installed skill(s) installed to $TARGET_DIR"
