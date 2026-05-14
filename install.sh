#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
install -m 0755 "$SCRIPT_DIR/litesoup" /usr/local/bin/litesoup
echo "litesoup installed to /usr/local/bin/litesoup"
