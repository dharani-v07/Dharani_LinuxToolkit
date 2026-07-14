#!/bin/bash

# ============================================
# Module 4: Disk Usage Monitor
# Author: Dharani V
# Description: Monitor disk usage
# ============================================

LOG_FILE="$(dirname "$0")/../logs/disk_usage.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

echo "================================"
echo "   Disk Usage Monitor"
echo "================================"
echo "1. Show all disk usage"
echo "2. Show specific partition usage"
echo "3. Show directory size"
echo "4. Show top 5 largest directories"
echo "================================"
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "Overall Disk Usage:"
        echo "--------------------------------"
        df -h
        log_message "INFO: Overall disk usage displayed"
        ;;
    2)
        read -p "Enter partition (e.g. /dev/sda1 or /): " partition
        if [ -z "$partition" ]; then
            echo "Error: Partition cannot be empty!"
            log_message "ERROR: Empty partition entered"
            exit 1
        fi
        echo "Disk Usage for $partition:"
        echo "--------------------------------"
        df -h "$partition"
        log_message "INFO: Disk usage for $partition displayed"
        ;;
    3)
        read -p "Enter directory path (e.g. /home): " dirpath
        if [ ! -d "$dirpath" ]; then
            echo "Error: Directory does not exist!"
            log_message "ERROR: Invalid directory $dirpath"
            exit 1
        fi
        echo "Size of $dirpath:"
        echo "--------------------------------"
        du -sh "$dirpath"
        log_message "INFO: Directory size for $dirpath displayed"
        ;;
    4)
        echo "Top 5 Largest Directories in /:"
        echo "--------------------------------"
        sudo du -h / --max-depth=1 2>/dev/null | sort -rh | head -5
        log_message "INFO: Top 5 largest directories displayed"
        ;;
    *)
        echo "Error: Invalid choice!"
        log_message "ERROR: Invalid choice entered"
        exit 1
        ;;
esac
