#!/bin/bash

# Backup Configuration
SOURCE="$HOME/linux-automated-backup/source-files"
DEST="$HOME/linux-automated-backup/backups"

# Current Date and Time
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup File Name
BACKUP_FILE="$DEST/backup-$DATE.tar.gz"

# Backup Function
create_backup() {

    echo "================================"
    echo "     AUTOMATED BACKUP SYSTEM"
    echo "================================"

    if [ ! -d "$SOURCE" ]; then
        echo "ERROR: Source folder not found!"
        return 1
    fi

    mkdir -p "$DEST"

    if tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then
        echo "SUCCESS: Backup created!"
        echo "Backup Location: $BACKUP_FILE"
    else
        echo "ERROR: Backup failed!"
        return 1
    fi
}

# Run Backup Function
create_backup
