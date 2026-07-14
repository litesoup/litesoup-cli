#!/usr/bin/env bash
set -euo pipefail

REPO_RAW="https://raw.githubusercontent.com/litesoup/litesoup-cli/main"
DEST="/usr/local/bin/litesoup"

# When piped from curl, SCRIPT_DIR is unreliable — download the binary directly.
# When run from a local clone, prefer the local file if it exists next to this script.
_SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-}")" 2>/dev/null && pwd || echo "")"
if [ -n "$_SCRIPT_DIR" ] && [ -f "$_SCRIPT_DIR/litesoup" ]; then
  install -m 0755 "$_SCRIPT_DIR/litesoup" "$DEST"
else
  if ! command -v curl &>/dev/null; then
    echo "error: curl is required to download litesoup-cli" >&2
    exit 1
  fi
  curl -fsSL "${REPO_RAW}/litesoup" -o "$DEST"
  chmod 0755 "$DEST"
fi

echo "litesoup installed to $DEST"
