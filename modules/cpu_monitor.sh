#!/bin/bash

# ============================================
# Module 6: CPU Monitor
# Author: Dharani V
# Description: Monitor CPU usage and info
# ============================================

LOG_FILE="$(dirname "$0")/../logs/cpu_monitor.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

echo "================================"
echo "   CPU Monitor"
echo "================================"
echo "1. Show CPU info"
echo "2. Show CPU usage"
echo "3. Show top 5 CPU consuming processes"
echo "4. Show CPU load average"
echo "================================"
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "CPU Information:"
        echo "--------------------------------"
        lscpu | grep -E "Model name|CPU\(s\)|Thread|Core|Socket|MHz"
        log_message "INFO: CPU info displayed"
        ;;
    2)
        echo "Current CPU Usage:"
        echo "--------------------------------"
        top -bn1 | grep "Cpu(s)"
        log_message "INFO: CPU usage displayed"
        ;;
    3)
        echo "Top 5 CPU Consuming Processes:"
        echo "--------------------------------"
        ps aux --sort=-%cpu | head -6
        log_message "INFO: Top 5 CPU processes displayed"
        ;;
    4)
        echo "CPU Load Average:"
        echo "--------------------------------"
        uptime
        cat /proc/loadavg
        log_message "INFO: CPU load average displayed"
        ;;
    *)
        echo "Error: Invalid choice!"
        log_message "ERROR: Invalid choice entered"
        exit 1
        ;;
esac
