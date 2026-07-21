#!/bin/bash
# ============================================
# Module 1: Package Installation
# Author: Dharani V
# Description: Install packages using apt
# ============================================

DRY_RUN=false; [[ "$1" == "--dry-run" ]] && DRY_RUN=true

LOG_FILE="$(dirname "$0")/../logs/package_install.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

install_package() {
    local package=$1
    echo "Checking if $package is already installed..."
    if dpkg -l | grep -q "^ii  $package "; then
        echo "$package is already installed!"
        log_message "INFO: $package is already installed"
    else
        echo "Installing $package..."
        $DRY_RUN && echo "Would install: $package" || sudo apt install -y "$package"
        if [ $? -eq 0 ]; then
            echo "$package installed successfully!"
            log_message "SUCCESS: $package installed"
        else
            echo "Failed to install $package!"
            log_message "ERROR: Failed to install $package"
        fi
    fi
}

echo "================================"
echo "   Package Installation"
echo "================================"
read -p "Enter package name to install: " package_name

if [ -z "$package_name" ]; then
    echo "Error: Package name cannot be empty!"
    log_message "ERROR: Empty package name"
    exit 1
fi

install_package "$package_name"
