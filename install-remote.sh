#!/bin/sh
set -e

BIN_URL="https://raw.githubusercontent.com/dragenox/bdfetch/main/bdfetch"
INSTALL_PATH="/usr/local/bin/bdfetch"

echo "[+] Downloading bdfetch..."
curl -fsSL "$BIN_URL" -o "$INSTALL_PATH"

chmod +x "$INSTALL_PATH"

echo "[✓] Installed bdfetch to $INSTALL_PATH"
echo "Run: bdfetch"
