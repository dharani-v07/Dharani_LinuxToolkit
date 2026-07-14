#!/bin/bash

# ============================================
# Module 7: Network Information
# Author: Dharani V
# Description: Display network information
# ============================================

LOG_FILE="$(dirname "$0")/../logs/network_info.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

echo "================================"
echo "   Network Information"
echo "================================"
echo "1. Show IP address"
echo "2. Show network interfaces"
echo "3. Ping a host"
echo "4. Show DNS info"
echo "================================"
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "IP Address Info:"
        echo "--------------------------------"
        hostname -I
        curl -s ifconfig.me
        echo ""
        log_message "INFO: IP address displayed"
        ;;
    2)
        echo "Network Interfaces:"
        echo "--------------------------------"
        ip addr show
        log_message "INFO: Network interfaces displayed"
        ;;
    3)
        read -p "Enter host to ping: " host
        if [ -z "$host" ]; then
            echo "Error: Host cannot be empty!"
            log_message "ERROR: Empty host entered"
            exit 1
        fi
        echo "Pinging $host..."
        echo "--------------------------------"
        ping -c 4 "$host"
        log_message "INFO: Ping to $host completed"
        ;;
    4)
        read -p "Enter domain for DNS lookup: " domain
        if [ -z "$domain" ]; then
            echo "Error: Domain cannot be empty!"
            log_message "ERROR: Empty domain entered"
            exit 1
        fi
        echo "DNS Info for $domain:"
        echo "--------------------------------"
        nslookup "$domain"
        log_message "INFO: DNS lookup for $domain completed"
        ;;
    *)
        echo "Error: Invalid choice!"
        log_message "ERROR: Invalid choice entered"
        exit 1
        ;;
esac
