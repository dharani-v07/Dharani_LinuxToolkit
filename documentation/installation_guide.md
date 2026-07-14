# Installation Guide
# Linux System Administration Toolkit
**Author:** Dharani V

---

## Prerequisites

Before installing, make sure you have:
- Ubuntu 24.04 LTS
- Internet connection
- sudo privileges
- Git installed

To install Git:
sudo apt install git -y

---

## Installation Steps

### Step 1: Clone the Repository
git clone https://github.com/dharani-v07/Dharani_LinuxToolkit.git

### Step 2: Navigate to Project Folder
cd Dharani_LinuxToolkit

### Step 3: Make Scripts Executable
chmod +x main.sh modules/*.sh

### Step 4: Install Required Dependencies
sudo apt install curl -y

### Step 5: Run the Toolkit
./main.sh

---

## Usage Guide

### Main Menu
When you run main.sh, a menu appears:
================================================
Linux System Administration Toolkit
Author: Dharani V

Package Installation
Package Removal
System Updates
Disk Usage Monitor
Memory Monitor
CPU Monitor
Network Information
Cron Job Manager
Log Analysis
System Health Report
Exit
================================================


### Running Individual Modules
You can also run modules independently:
cd modules
./package_install.sh
./memory_monitor.sh
./system_health.sh

---

## Module Usage

### Module 1: Package Installation
Enter package name to install: curl

### Module 2: Package Removal
Enter package name to remove: curl

### Module 3: System Updates

Update package list only
Upgrade all packages
Full upgrade
Auto remove unused packages


### Module 4: Disk Usage Monitor

Show all disk usage
Show specific partition usage
Show directory size
Show top 5 largest directories


### Module 5: Memory Monitor

Show RAM and Swap usage
Show detailed memory info
Show top 5 memory consuming processes
Show swap details


### Module 6: CPU Monitor

Show CPU info
Show CPU usage
Show top 5 CPU consuming processes
Show CPU load average


### Module 7: Network Information

Show IP address
Show network interfaces
Ping a host
Show DNS info


### Module 8: Cron Job Manager

List all cron jobs
Add a new cron job
Remove a cron job
Show cron job examples


### Module 9: Log Analysis

Show last 20 system log lines
Search keyword in system log
Show authentication logs
Show error logs


### Module 10: System Health Report

Generate full health report
Show quick system status
View last generated report


---

## Log Files

All module activities are logged in the logs/ folder:
logs/
├── package_install.log
├── package_remove.log
├── system_update.log
├── disk_usage.log
├── memory_monitor.log
├── cpu_monitor.log
├── network_info.log
├── cron_job.log
├── log_analysis.log
└── system_health.log

---

## Troubleshooting

### Permission Denied Error:
chmod +x main.sh modules/*.sh

### curl Not Found:
sudo apt install curl -y

### sudo Not Available:
su - root
apt install sudo -y
usermod -aG sudo username

### Git Push Authentication Failed:
- Generate new Personal Access Token on GitHub
- Use token as password when pushing

---

## Contact

**Author:** Dharani V
**Email:** dhagok9702@gmail.com
**GitHub:** https://github.com/dharani-v07
