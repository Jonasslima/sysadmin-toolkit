## SysAdmin Automation Toolkit

A lightweight bash scripting toolkit designed for automated system diagnostic checks and log maintenance on Linux environments.

## Features
- **System Diagnostics:** Captures system uptime, memory usage (`free -h`), and root disk space (`df -h`).
- **Network Validation:** Tests internet connectivity silently using Cloudflare DNS (`1.1.1.1`).
- **Automated Logging:** Logs execution history with timestamps to `/tmp/health_check.log`.

## How to Use
1. Clone this repository:
   ```bash
   git clone [https://github.com/Jonasslima/sysadmin-toolkit.git](https://github.com/Jonasslima/sysadmin-toolkit.git)
   cd sysadmin-toolkit

Tech Stack
OS: Arch Linux
Package Manager: pacman
Language: Bash

