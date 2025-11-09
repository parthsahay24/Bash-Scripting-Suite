#!/bin/bash
# maintenance_suite.sh - Interactive system maintenance dashboard
# Author: Parth Sahay

while true; do
    clear
    echo "======================================"
    echo "🛠️  System Maintenance Dashboard"
    echo "======================================"
    echo "1️⃣  Backup System Files"
    echo "2️⃣  Clean & Maintain System"
    echo "3️⃣  Monitor Logs"
    echo "4️⃣  Exit"
    echo "--------------------------------------"
    read -p "👉 Choose an option [1-4]: " choice

    case $choice in
        1) bash auto_backup.sh ;;
        2) bash system_maintenance.sh ;;
        3) bash log_alert.sh ;;
        4) echo "👋 Exiting... Stay productive!"; exit 0 ;;
        *) echo "❌ Invalid choice. Try again."; sleep 1 ;;
    esac
    read -p "Press Enter to continue..."
done
