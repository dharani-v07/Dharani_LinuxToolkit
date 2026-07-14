# Linux System Administration Toolkit

**Author:** Dharani V  
**College:** Dr. N.G.P. Arts and Science College, Coimbatore  
**Program:** BCA  
**Internship:** EduPyramids, SINE, IIT Bombay  
**Date:** July 2026  

---

## Project Overview

The Linux System Administration Toolkit is a menu-driven Bash shell
script application developed as part of the EduPyramids Internship
under the Spoken Tutorial Project, IIT Bombay. This toolkit provides
system administrators and Linux users with a unified interface to
perform common administrative tasks efficiently.

---

## Objectives

- Build a complete menu-driven Linux utility toolkit
- Develop modular and reusable Bash shell scripts
- Automate common Linux system administration tasks
- Apply Linux concepts learned through Spoken Tutorial methodology
- Practice professional software engineering and documentation

---

## Software Prerequisites

- Ubuntu 24.04 LTS
- Bash 5.0 or higher
- sudo privileges
- Internet connection (for package management modules)
- curl (for network module)

---

## Folder Structure
Dharani_LinuxToolkit/
├── README.md
├── main.sh
├── modules/
│   ├── package_install.sh
│   ├── package_remove.sh
│   ├── system_update.sh
│   ├── disk_usage.sh
│   ├── memory_monitor.sh
│   ├── cpu_monitor.sh
│   ├── network_info.sh
│   ├── cron_job.sh
│   ├── log_analysis.sh
│   └── system_health.sh
├── logs/
├── screenshots/
├── documentation/
├── testcases/
└── reports/

---

## Installation Steps

1. Clone the repository:
git clone https://github.com/dharani-v07/Dharani_LinuxToolkit.git

2. Navigate to project folder:
cd Dharani_LinuxToolkit

3. Make all scripts executable:
chmod +x main.sh modules/*.sh

4. Run the toolkit:
./main.sh

---

## Usage Instructions

Run the main script:
./main.sh

A menu will appear with 10 options. Enter the number
corresponding to the module you want to use and
follow the on-screen instructions.

---

## Module Descriptions

### 1. Package Installation
Installs any package using apt. Checks if package
is already installed before proceeding.

### 2. Package Removal
Removes installed packages using apt. Verifies
package exists before attempting removal.

### 3. System Updates
Provides options to update package list, upgrade
packages, full upgrade, and auto-remove unused packages.

### 4. Disk Usage Monitor
Displays disk usage information including overall
usage, specific partition, directory size, and
top 5 largest directories.

### 5. Memory Monitor
Shows RAM and swap usage, detailed memory info,
top memory consuming processes, and swap details.

### 6. CPU Monitor
Displays CPU model, usage, top CPU consuming
processes, and load average information.

### 7. Network Information
Shows IP addresses, network interfaces, ping
utility, and DNS lookup functionality.

### 8. Cron Job Manager
Lists, adds, and removes cron jobs. Also displays
common cron job format examples.

### 9. Log Analysis
Analyzes system logs including last 20 lines,
keyword search, authentication logs, and error logs.

### 10. System Health Report
Generates a complete system health report including
CPU, memory, disk, and network information.

---

## Sample Outputs

### Memory Monitor Output:
           total        used        free
Mem:           7.8Gi       2.0Gi       4.3Gi
Swap:          4.0Gi          0B       4.0Gi

### Disk Usage Output:
Filesystem      Size  Used Avail Use%
/dev/sda2        49G   13G   34G  28%

### Quick System Status:
Hostname   : dharani-v-Ubuntu
Uptime     : up 5 hours, 56 minutes
CPU Load   : 0.53
RAM Used   : 2.0Gi / 7.8Gi
Disk Used  : 13G / 49G

---

## Learning Outcomes

- Comfortable working in Ubuntu Linux environment
- Effective use of Linux command-line utilities
- Developed modular Bash shell scripts
- Integrated multiple scripts into menu-driven application
- Input validation and error handling in Bash
- Automated common Linux administrative tasks
- Professional documentation practices

---

## References

- Spoken Tutorial Project, IIT Bombay
- EduPyramids, SINE, IIT Bombay
- Ubuntu Official Documentation
- GNU Bash Manual
- Linux man pages
