#!/bin/bash

# ============================================
# Module 5: Memory Monitor
# Author: Dharani V
# Description: Monitor RAM and Swap memory
# ============================================

LOG_FILE="$(dirname "$0")/../logs/memory_monitor.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

echo "================================"
echo "   Memory Monitor"
echo "================================"
echo "1. Show RAM and Swap usage"
echo "2. Show detailed memory info"
echo "3. Show top 5 memory consuming processes"
echo "4. Show swap details"
echo "================================"
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "RAM and Swap Usage:"
        echo "--------------------------------"
        free -h
        log_message "INFO: RAM and swap usage displayed"
        ;;
    2)
        echo "Detailed Memory Info:"
        echo "--------------------------------"
        cat /proc/meminfo
        log_message "INFO: Detailed memory info displayed"
        ;;
    3)
        echo "Top 5 Memory Consuming Processes:"
        echo "--------------------------------"
        ps aux --sort=-%mem | head -6
        log_message "INFO: Top 5 memory processes displayed"
        ;;
    4)
        echo "Swap Details:"
        echo "--------------------------------"
        swapon --show
        log_message "INFO: Swap details displayed"
        ;;
    *)
        echo "Error: Invalid choice!"
        log_message "ERROR: Invalid choice entered"
        exit 1
        ;;
esac
