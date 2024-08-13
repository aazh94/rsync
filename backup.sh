#!/bin/bash

SOURCE_DIR="$HOME/"

DEST_DIR="/tmp/backup/"

rsync -a --checksum --exclude '/.*' --progress "$SOURCE_DIR" "$DEST_DIR"

if [ $? -eq 0 ]; then
    logger "Backup completed successfully"
else
    logger "Backup failed"
fi
