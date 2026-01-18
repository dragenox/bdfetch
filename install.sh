#!/bin/sh
set -e

INSTALL_PATH="/usr/local/bin/bdfetch"

echo "[+] Installing bdfetch..."
sudo cp bdfetch "$INSTALL_PATH"
sudo chmod +x "$INSTALL_PATH"

echo "[✓] Installed to $INSTALL_PATH"
echo "Run: bdfetch"
