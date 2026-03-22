#!/usr/bin/env bash
# Instala ffmpg-mov-to-mp4: crea un enlace simbólico en /usr/local/bin como ffmpg-mov-2-mp4
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE="${SCRIPT_DIR}/ffmpg-mov-to-mp4.sh"
DEST="/usr/local/bin/ffmpg-mov-2-mp4"

if [[ ! -f "$SOURCE" ]]; then
  echo "Error: ffmpg-mov-to-mp4.sh not found at ${SOURCE}" >&2
  exit 1
fi

chmod +x "$SOURCE"

if [[ ! -d "/usr/local/bin" ]]; then
  echo "Creating /usr/local/bin..."
  sudo mkdir -p /usr/local/bin
fi

sudo ln -sf "$SOURCE" "$DEST"
echo "Symbolic link created: ${DEST} -> ${SOURCE}"
echo "Run: ffmpg-mov-2-mp4 /path/to/file.mov"
