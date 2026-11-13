#!/usr/bin/env bash
# Re-sync designs/ from upstream VoltAgent/awesome-design-md and report added/removed sites.
set -euo pipefail
SKILL_DIR="$(cd "$(dirname "$0")/.." && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

git clone --depth 1 -q https://github.com/VoltAgent/awesome-design-md.git "$TMP/repo"

old=$(ls "$SKILL_DIR/designs" | sort)
new=$(ls "$TMP/repo/design-md" | sort)

rm -rf "$SKILL_DIR/designs"
mkdir -p "$SKILL_DIR/designs"
for d in "$TMP/repo/design-md"/*/; do
  n=$(basename "$d")
  [ -f "$d/DESIGN.md" ] || continue
  mkdir -p "$SKILL_DIR/designs/$n"
  cp "$d/DESIGN.md" "$SKILL_DIR/designs/$n/"
done

echo "Synced $(ls "$SKILL_DIR/designs" | wc -l) designs (upstream $(git -C "$TMP/repo" rev-parse --short HEAD))."
echo "Added:";   comm -13 <(echo "$old") <(echo "$new") | sed 's/^/  + /'
echo "Removed:"; comm -23 <(echo "$old") <(echo "$new") | sed 's/^/  - /'
echo "Update the index table in SKILL.md for any added/removed sites."
