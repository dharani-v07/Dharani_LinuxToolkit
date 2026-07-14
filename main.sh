#!/bin/bash

# ============================================
# Linux System Administration Toolkit
# Author: Dharani V
# College: Dr. N.G.P. Arts and Science College
# Description: Main menu driven application
# ============================================

while true; do
    clear
    echo "================================================"
    echo "   Linux System Administration Toolkit"
    echo "   Author: Dharani V"
    echo "================================================"
    echo "  1.  Package Installation"
    echo "  2.  Package Removal"
    echo "  3.  System Updates"
    echo "  4.  Disk Usage Monitor"
    echo "  5.  Memory Monitor"
    echo "  6.  CPU Monitor"
    echo "  7.  Network Information"
    echo "  8.  Cron Job Manager"
    echo "  9.  Log Analysis"
    echo "  10. System Health Report"
    echo "  0.  Exit"
    echo "================================================"
    read -p "Enter your choice (0-10): " choice

    case $choice in
        1) bash modules/package_install.sh ;;
        2) bash modules/package_remove.sh ;;
        3) bash modules/system_update.sh ;;
        4) bash modules/disk_usage.sh ;;
        5) bash modules/memory_monitor.sh ;;
        6) bash modules/cpu_monitor.sh ;;
        7) bash modules/network_info.sh ;;
        8) bash modules/cron_job.sh ;;
        9) bash modules/log_analysis.sh ;;
        10) bash modules/system_health.sh ;;
        0)
            echo "Thank you for using Linux System Administration Toolkit!"
            echo "Goodbye Dharani! 👋"
            exit 0
            ;;
        *)
            echo "Error: Invalid choice! Please enter 0-10."
            ;;
    esac

    echo ""
    read -p "Press Enter to return to main menu..."
done
