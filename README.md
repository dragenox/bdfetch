# bdfetch

A minimal system information fetch script for OpenMediaVault and Debian-based servers.

Designed to work on **minimal appliance-style installs** (no Git required).

---

## Install (Recommended – zero dependency)

Uses whatever downloader is already available (`wget` or `curl`).

### Using `wget` (default on OMV)

```bash
wget -qO- "https://raw.githubusercontent.com/dragenox/bdfetch/main/install-remote.sh?nocache=$(date +%s)" | sh
```
### Using `curl` (needs apt or yarn to be installed)

```bash
curl -fsSL https://raw.githubusercontent.com/dragenox/bdfetch/main/install-remote.sh | sh
```
### Using `git` (needs apt/yarn and git installed)

```bash
git clone https://github.com/dragenox/bdfetch.git
cd bdfetch
./install.sh
```
