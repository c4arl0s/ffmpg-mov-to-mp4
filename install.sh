#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE="${REPO_DIR}/ffmpg-mov-to-mp4.sh"
LINK="/usr/local/bin/ffmpg-mov-2-mp4"

if [ ! -f "$SOURCE" ]; then
  echo "Error: source script not found: ${SOURCE}" >&2
  exit 1
fi

if [ -w "$(dirname "$LINK")" ] 2>/dev/null; then
  ln -sf "$SOURCE" "$LINK"
else
  sudo ln -sf "$SOURCE" "$LINK"
fi

echo "Symlink created: ${LINK} -> ${SOURCE}"
