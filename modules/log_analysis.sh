#!/bin/bash

# ============================================
# Module 9: Log Analysis
# Author: Dharani V
# Description: Analyze system log files
# ============================================

LOG_FILE="$(dirname "$0")/../logs/log_analysis.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

echo "================================"
echo "   Log Analysis"
echo "================================"
echo "1. Show last 20 system log lines"
echo "2. Search keyword in system log"
echo "3. Show authentication logs"
echo "4. Show error logs"
echo "================================"
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "Last 20 System Log Lines:"
        echo "--------------------------------"
        sudo tail -n 20 /var/log/syslog
        log_message "INFO: Last 20 syslog lines displayed"
        ;;
    2)
        read -p "Enter keyword to search: " keyword
        if [ -z "$keyword" ]; then
            echo "Error: Keyword cannot be empty!"
            log_message "ERROR: Empty keyword entered"
            exit 1
        fi
        echo "Searching for '$keyword' in system log:"
        echo "--------------------------------"
        sudo grep -i "$keyword" /var/log/syslog | tail -20
        log_message "INFO: Keyword search for $keyword completed"
        ;;
    3)
        echo "Authentication Logs:"
        echo "--------------------------------"
        sudo tail -n 20 /var/log/auth.log
        log_message "INFO: Authentication logs displayed"
        ;;
    4)
        echo "Error Logs:"
        echo "--------------------------------"
        sudo grep -i "error" /var/log/syslog | tail -20
        log_message "INFO: Error logs displayed"
        ;;
    *)
        echo "Error: Invalid choice!"
        log_message "ERROR: Invalid choice entered"
        exit 1
        ;;
esac
