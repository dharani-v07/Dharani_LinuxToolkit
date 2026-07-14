#!/bin/bash

# ============================================
# Module 8: Cron Job Creation
# Author: Dharani V
# Description: Manage cron jobs
# ============================================

LOG_FILE="$(dirname "$0")/../logs/cron_job.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

echo "================================"
echo "   Cron Job Manager"
echo "================================"
echo "1. List all cron jobs"
echo "2. Add a new cron job"
echo "3. Remove a cron job"
echo "4. Show cron job examples"
echo "================================"
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "Current Cron Jobs:"
        echo "--------------------------------"
        crontab -l 2>/dev/null || echo "No cron jobs found!"
        log_message "INFO: Cron jobs listed"
        ;;
    2)
        echo "Cron Format: minute hour day month weekday command"
        echo "Example: 0 9 * * * /home/user/script.sh"
        echo "--------------------------------"
        read -p "Enter cron schedule (e.g. 0 9 * * *): " schedule
        read -p "Enter command to run: " command
        if [ -z "$schedule" ] || [ -z "$command" ]; then
            echo "Error: Schedule and command cannot be empty!"
            log_message "ERROR: Empty schedule or command"
            exit 1
        fi
        (crontab -l 2>/dev/null; echo "$schedule $command") | crontab -
        if [ $? -eq 0 ]; then
            echo "Cron job added successfully!"
            log_message "SUCCESS: Cron job added - $schedule $command"
        else
            echo "Failed to add cron job!"
            log_message "ERROR: Failed to add cron job"
        fi
        ;;
    3)
        echo "Current Cron Jobs:"
        crontab -l 2>/dev/null || echo "No cron jobs found!"
        echo "--------------------------------"
        read -p "Enter exact cron job line to remove: " cronjob
        if [ -z "$cronjob" ]; then
            echo "Error: Cron job cannot be empty!"
            log_message "ERROR: Empty cron job entered"
            exit 1
        fi
        crontab -l | grep -v "$cronjob" | crontab -
        echo "Cron job removed successfully!"
        log_message "SUCCESS: Cron job removed - $cronjob"
        ;;
    4)
        echo "Cron Job Examples:"
        echo "--------------------------------"
        echo "* * * * *        Every minute"
        echo "0 * * * *        Every hour"
        echo "0 9 * * *        Every day at 9 AM"
        echo "0 9 * * 1        Every Monday at 9 AM"
        echo "0 9 1 * *        Every 1st of month at 9 AM"
        echo "*/5 * * * *      Every 5 minutes"
        log_message "INFO: Cron examples displayed"
        ;;
    *)
        echo "Error: Invalid choice!"
        log_message "ERROR: Invalid choice entered"
        exit 1
        ;;
esac
