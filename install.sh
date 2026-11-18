#!/usr/bin/env bash
# usage: ./install.sh <host-dir>
# Upgrades the .lore/ at the host directory (it also makes one if absent).
# To install, copy the .lore/ directory; this script is the upgrade path.
# It refreshes what lore ships (lore.sh, README.md), seeds what is absent
# (items/ and INDEX.md, via lore.sh init), and never touches items or an
# existing INDEX.md. Re-running changes nothing.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target="${1:?usage: install.sh <host-dir>}"
[ -d "$target" ] || { echo "no such host dir: $target" >&2; exit 1; }

dest="$target/.lore"
mkdir -p "$dest"
# Source and destination can be the same file (./install.sh .): skip the copy.
[ "$REPO_DIR/.lore/lore.sh" -ef "$dest/lore.sh" ] ||
  cp -f "$REPO_DIR/.lore/lore.sh" "$dest/lore.sh"
chmod +x "$dest/lore.sh"
[ "$REPO_DIR/.lore/README.md" -ef "$dest/README.md" ] ||
  cp -f "$REPO_DIR/.lore/README.md" "$dest/README.md"
"$dest/lore.sh" init

echo "installed $dest"
