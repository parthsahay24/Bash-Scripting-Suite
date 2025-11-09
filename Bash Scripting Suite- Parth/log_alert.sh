#!/bin/bash
# log_alert.sh - Log monitoring with simple alerts
# Author: Parth Sahay
# Description: Checks for critical issues in maintenance logs and alerts user.

LOG_FILE="$HOME/maintenance.log"
ALERT_FILE="$HOME/alert_report.txt"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "❌ No log file found at $LOG_FILE"
    exit 1
fi

echo "🔍 Scanning logs for issues..."

if grep -iE "error|fail|critical|denied" "$LOG_FILE" > "$ALERT_FILE"; then
    echo "⚠️  Alerts found! Check $ALERT_FILE"
else
    echo "✅ No issues detected."
fi
