#!/bin/bash

# ============================================
# Module 2: Package Removal
# Author: Dharani V
# Description: Remove packages using apt
# ============================================

LOG_FILE="$(dirname "$0")/../logs/package_remove.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

remove_package() {
    local package=$1
    echo "Checking if $package is installed..."
    if dpkg -l | grep -q "^ii  $package "; then
        echo "Removing $package..."
        sudo apt remove -y "$package"
        if [ $? -eq 0 ]; then
            echo "$package removed successfully!"
            log_message "SUCCESS: $package removed"
        else
            echo "Failed to remove $package!"
            log_message "ERROR: Failed to remove $package"
        fi
    else
        echo "$package is not installed!"
        log_message "INFO: $package not found"
    fi
}

echo "================================"
echo "   Package Removal"
echo "================================"
read -p "Enter package name to remove: " package_name

if [ -z "$package_name" ]; then
    echo "Error: Package name cannot be empty!"
    log_message "ERROR: Empty package name"
    exit 1
fi

remove_package "$package_name"
