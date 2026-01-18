#!/bin/sh
set -e

BIN_URL="https://raw.githubusercontent.com/dragenox/bdfetch/main/bdfetch"
INSTALL_PATH="/usr/local/bin/bdfetch"

echo "[+] Installing bdfetch..."

if command -v curl >/dev/null 2>&1; then
    echo "[+] Using curl"
    curl -fsSL "$BIN_URL" -o "$INSTALL_PATH"
elif command -v wget >/dev/null 2>&1; then
    echo "[+] Using wget"
    wget -qO "$INSTALL_PATH" "$BIN_URL"
else
    echo "[!] Neither curl nor wget found"
    echo "    Please install one of them and retry."
    exit 1
fi

chmod +x "$INSTALL_PATH"

echo "[✓] Installed bdfetch to $INSTALL_PATH"
echo "Run: bdfetch"
