#!/bin/bash
# auto_backup.sh - Automated system backup script
# Author: Parth Sahay
# Description:compressed backups of important directories.

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/SystemBackups"
LOG_FILE="$HOME/maintenance.log"
DATE=$(date '+%Y-%m-%d_%H-%M-%S')
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

mkdir -p "$BACKUP_DIR"

echo -e "${YELLOW}🔄 Starting system backup...${NC}"
if tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2>>"$LOG_FILE"; then
    echo -e "${GREEN}✅ Backup successful!${NC}"
    echo "[$DATE] Backup created: $BACKUP_FILE" >> "$LOG_FILE"
else
    echo -e "${RED}❌ Backup failed. Check log for details.${NC}"
    echo "[$DATE] Backup failed for $SOURCE_DIR" >> "$LOG_FILE"
fi
