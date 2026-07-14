# Module Descriptions
# Linux System Administration Toolkit
**Author:** Dharani V

---

## Module 1: Package Installation
**Script:** modules/package_install.sh
**Description:** Installs any package using apt package manager.
Checks if package is already installed before proceeding.

**Key Commands Used:**
- `dpkg -l` — check if package exists
- `sudo apt install -y` — install package
- `$?` — check command success/failure

---

## Module 2: Package Removal
**Script:** modules/package_remove.sh
**Description:** Removes installed packages using apt.
Verifies package exists before attempting removal.

**Key Commands Used:**
- `dpkg -l` — verify package is installed
- `sudo apt remove -y` — remove package
- `$?` — check command success/failure

---

## Module 3: System Updates
**Script:** modules/system_update.sh
**Description:** Provides 4 options to keep system updated.

**Key Commands Used:**
- `sudo apt update` — refresh package list
- `sudo apt upgrade -y` — upgrade packages
- `sudo apt full-upgrade -y` — full upgrade
- `sudo apt autoremove -y` — remove unused packages

---

## Module 4: Disk Usage Monitor
**Script:** modules/disk_usage.sh
**Description:** Monitors disk usage across filesystem.

**Key Commands Used:**
- `df -h` — show filesystem usage
- `du -sh` — show directory size
- `sort -rh` — sort by size
- `head -5` — show top 5 results

---

## Module 5: Memory Monitor
**Script:** modules/memory_monitor.sh
**Description:** Monitors RAM and swap memory usage.

**Key Commands Used:**
- `free -h` — show RAM and swap
- `cat /proc/meminfo` — detailed memory info
- `ps aux --sort=-%mem` — sort by memory
- `swapon --show` — show swap details

---

## Module 6: CPU Monitor
**Script:** modules/cpu_monitor.sh
**Description:** Monitors CPU usage and performance.

**Key Commands Used:**
- `lscpu` — CPU information
- `top -bn1` — CPU usage snapshot
- `ps aux --sort=-%cpu` — sort by CPU
- `cat /proc/loadavg` — load average

---

## Module 7: Network Information
**Script:** modules/network_info.sh
**Description:** Displays network configuration and connectivity.

**Key Commands Used:**
- `hostname -I` — show local IP
- `curl ifconfig.me` — show public IP
- `ip addr show` — network interfaces
- `ping -c 4` — test connectivity
- `nslookup` — DNS lookup

---

## Module 8: Cron Job Manager
**Script:** modules/cron_job.sh
**Description:** Manages scheduled cron jobs.

**Key Commands Used:**
- `crontab -l` — list cron jobs
- `crontab -` — update crontab
- `grep -v` — remove specific job

---

## Module 9: Log Analysis
**Script:** modules/log_analysis.sh
**Description:** Analyzes system log files.

**Key Commands Used:**
- `tail -n 20` — show last 20 lines
- `grep -i` — case insensitive search
- `sudo cat /var/log/syslog` — system logs
- `sudo cat /var/log/auth.log` — auth logs

---

## Module 10: System Health Report
**Script:** modules/system_health.sh
**Description:** Generates complete system health report.

**Key Commands Used:**
- `hostname` — system hostname
- `lsb_release -d` — OS details
- `uname -r` — kernel version
- `uptime -p` — system uptime
- `tee` — display and save output
- `nproc` — number of processors
