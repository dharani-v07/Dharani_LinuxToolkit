#!/bin/bash

# ============================================
# Module 10: System Health Report
# Author: Dharani V
# Description: Generate system health report
# ============================================

LOG_FILE="$(dirname "$0")/../logs/system_health.log"
REPORT_FILE="$(dirname "$0")/../reports/system_health_report.txt"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

generate_report() {
    echo "================================" | tee -a "$REPORT_FILE"
    echo "   System Health Report" | tee -a "$REPORT_FILE"
    echo "   Generated: $TIMESTAMP" | tee -a "$REPORT_FILE"
    echo "================================" | tee -a "$REPORT_FILE"

    echo "" | tee -a "$REPORT_FILE"
    echo "--- System Information ---" | tee -a "$REPORT_FILE"
    echo "Hostname: $(hostname)" | tee -a "$REPORT_FILE"
    echo "OS: $(lsb_release -d | cut -f2)" | tee -a "$REPORT_FILE"
    echo "Kernel: $(uname -r)" | tee -a "$REPORT_FILE"
    echo "Uptime: $(uptime -p)" | tee -a "$REPORT_FILE"

    echo "" | tee -a "$REPORT_FILE"
    echo "--- CPU Information ---" | tee -a "$REPORT_FILE"
    echo "CPU: $(lscpu | grep 'Model name' | cut -d: -f2 | xargs)" | tee -a "$REPORT_FILE"
    echo "Cores: $(nproc)" | tee -a "$REPORT_FILE"
    echo "Load Average: $(cat /proc/loadavg)" | tee -a "$REPORT_FILE"

    echo "" | tee -a "$REPORT_FILE"
    echo "--- Memory Information ---" | tee -a "$REPORT_FILE"
    free -h | tee -a "$REPORT_FILE"

    echo "" | tee -a "$REPORT_FILE"
    echo "--- Disk Usage ---" | tee -a "$REPORT_FILE"
    df -h | tee -a "$REPORT_FILE"

    echo "" | tee -a "$REPORT_FILE"
    echo "--- Network Information ---" | tee -a "$REPORT_FILE"
    echo "IP Address: $(hostname -I)" | tee -a "$REPORT_FILE"

    echo "" | tee -a "$REPORT_FILE"
    echo "--- Top 5 CPU Processes ---" | tee -a "$REPORT_FILE"
    ps aux --sort=-%cpu | head -6 | tee -a "$REPORT_FILE"

    echo "" | tee -a "$REPORT_FILE"
    echo "--- Top 5 Memory Processes ---" | tee -a "$REPORT_FILE"
    ps aux --sort=-%mem | head -6 | tee -a "$REPORT_FILE"

    echo "" | tee -a "$REPORT_FILE"
    echo "================================" | tee -a "$REPORT_FILE"
    echo "   End of Report" | tee -a "$REPORT_FILE"
    echo "================================" | tee -a "$REPORT_FILE"
}

echo "================================"
echo "   System Health Report"
echo "================================"
echo "1. Generate full health report"
echo "2. Show quick system status"
echo "3. View last generated report"
echo "================================"
read -p "Enter your choice (1-3): " choice

case $choice in
    1)
        echo "Generating System Health Report..."
        > "$REPORT_FILE"
        generate_report
        echo ""
        echo "Report saved to: $REPORT_FILE"
        log_message "SUCCESS: System health report generated"
        ;;
    2)
        echo "Quick System Status:"
        echo "--------------------------------"
        echo "Hostname   : $(hostname)"
        echo "Uptime     : $(uptime -p)"
        echo "CPU Load   : $(cat /proc/loadavg | awk '{print $1}')"
        echo "RAM Used   : $(free -h | awk '/Mem/{print $3}') / $(free -h | awk '/Mem/{print $2}')"
        echo "Disk Used  : $(df -h / | awk 'NR==2{print $3}') / $(df -h / | awk 'NR==2{print $2}')"
        echo "IP Address : $(hostname -I)"
        log_message "INFO: Quick system status displayed"
        ;;
    3)
        if [ -f "$REPORT_FILE" ]; then
            cat "$REPORT_FILE"
            log_message "INFO: Last report viewed"
        else
            echo "No report found! Please generate one first."
            log_message "ERROR: No report file found"
        fi
        ;;
    *)
        echo "Error: Invalid choice!"
        log_message "ERROR: Invalid choice entered"
        exit 1
        ;;
esac
