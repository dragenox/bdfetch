# bdfetch

A minimal system information fetch script for OpenMediaVault and Debian-based servers.

Designed to work on **minimal appliance-style installs** (no Git required).

---

## Usage

- `bdfetch` → system information (default)
- `bdfetch -s` → system information
- `bdfetch -d [lsblk-args] [devices...]` → disk information (passes arguments directly to `lsblk`)
- `bdfetch -- [lsblk-args] [devices...]` → explicit passthrough mode
- `bdfetch -u` → update bdfetch to the latest version
- `bdfetch -h` → show help

The `-s` flag is the default when no flag is provided.

Note: The `bdfetch -d` (diskfetch) command requires `lsblk`. The `lsblk` utility is provided by `util-linux` and is included by default on most Linux distributions. On minimal or custom systems, `lsblk` may need to be installed separately.

### Examples

```bash
bdfetch
bdfetch -s
bdfetch -d
bdfetch -d -a /dev/sde
bdfetch -- -a /dev/sde
bdfetch -u
bdfetch -h
```

---

## Install (Recommended – zero dependency)

Not all distributions ship with `curl`, `wget`, or `git` by default.  
`bdfetch` itself has no runtime dependencies, but the *installer method* depends on available tools.

Uses whatever downloader is already available (`wget` or `curl`).

### Using wget (requires wget)

```bash
wget -qO- "https://raw.githubusercontent.com/dragenox/bdfetch/main/install-remote.sh?nocache=$(date +%s)" | sh
```
### Using curl (requires curl)

```bash
curl -fsSL https://raw.githubusercontent.com/dragenox/bdfetch/main/install-remote.sh | sh
```
### Using git (requires git)

```bash
git clone https://github.com/dragenox/bdfetch.git
cd bdfetch
./install.sh
```
