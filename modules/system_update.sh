#!/bin/bash

# ============================================
# Module 3: System Updates
# Author: Dharani V
# Description: Update and upgrade the system
# ============================================

LOG_FILE="$(dirname "$0")/../logs/system_update.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

echo "================================"
echo "   System Updates"
echo "================================"
echo "1. Update package list only"
echo "2. Upgrade all packages"
echo "3. Full upgrade"
echo "4. Auto remove unused packages"
echo "================================"
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "Updating package list..."
        sudo apt update
        if [ $? -eq 0 ]; then
            echo "Package list updated successfully!"
            log_message "SUCCESS: Package list updated"
        else
            echo "Failed to update package list!"
            log_message "ERROR: Failed to update package list"
        fi
        ;;
    2)
        echo "Upgrading all packages..."
        sudo apt upgrade -y
        if [ $? -eq 0 ]; then
            echo "All packages upgraded successfully!"
            log_message "SUCCESS: All packages upgraded"
        else
            echo "Failed to upgrade packages!"
            log_message "ERROR: Failed to upgrade packages"
        fi
        ;;
    3)
        echo "Performing full upgrade..."
        sudo apt full-upgrade -y
        if [ $? -eq 0 ]; then
            echo "Full upgrade completed successfully!"
            log_message "SUCCESS: Full upgrade completed"
        else
            echo "Failed to perform full upgrade!"
            log_message "ERROR: Failed to perform full upgrade"
        fi
        ;;
    4)
        echo "Removing unused packages..."
        sudo apt autoremove -y
        if [ $? -eq 0 ]; then
            echo "Unused packages removed successfully!"
            log_message "SUCCESS: Unused packages removed"
        else
            echo "Failed to remove unused packages!"
            log_message "ERROR: Failed to remove unused packages"
        fi
        ;;
    *)
        echo "Error: Invalid choice!"
        log_message "ERROR: Invalid choice entered"
        exit 1
        ;;
esac
