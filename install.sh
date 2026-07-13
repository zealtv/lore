#!/usr/bin/env bash
# usage: ./install.sh <host-dir>
# Lays down a .lore/ at the host directory — a sanctioned standalone install
# for scopes not delivered by any bundle. Idempotent: re-running repairs
# lore.sh and README.md and re-seeds missing trays (via lore.sh init); it
# never touches items.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target="${1:?usage: install.sh <host-dir>}"
[ -d "$target" ] || { echo "no such host dir: $target" >&2; exit 1; }

dest="$target/.lore"
mkdir -p "$dest"
cp -f "$REPO_DIR/.lore/lore.sh" "$dest/lore.sh"
chmod +x "$dest/lore.sh"
cp -f "$REPO_DIR/README.md" "$dest/README.md"
"$dest/lore.sh" init

echo "installed $dest"
