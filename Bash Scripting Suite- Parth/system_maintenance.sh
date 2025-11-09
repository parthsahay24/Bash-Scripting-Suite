#!/bin/bash
# system_maintenance.sh - System update and cleanup script
# Author: Parth Sahay
# Description: Updates system, removes junk files, and logs disk usage.

LOG_FILE="$HOME/maintenance.log"
TEMP_DIR="/tmp"

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "[$(date)] 🧹 Starting cleanup..." | tee -a "$LOG_FILE"

if rm -rf ${TEMP_DIR:?}/*; then
    echo -e "${GREEN}✅ Temporary files removed.${NC}"
else
    echo -e "${RED}❌ Error cleaning /tmp directory.${NC}"
fi

echo "[$(date)] 💾 Disk usage:" >> "$LOG_FILE"
df -h >> "$LOG_FILE"

echo -e "${GREEN}🕒 Maintenance completed! Log saved to $LOG_FILE${NC}"
