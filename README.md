# Linux Automated Backup System

## Project Overview
A Bash-based project that automatically creates compressed backups of Linux files and folders.

## Features
- Automatic backup creation
- Date and time in backup filename
- TAR and GZIP compression
- Backup verification
- Restore support
- Success and error messages

## Technologies
- Linux Ubuntu
- Bash Scripting
- TAR
- GZIP
- Git and GitHub

## Project Structure

- backup.sh
- variables.sh
- functions.sh
- source-files/
- backups/

## How to Run

Make the script executable:

    chmod +x backup.sh

Run the backup:

    ./backup.sh

## How to Restore

    mkdir -p restore-test
    tar -xzf backups/backup-FILENAME.tar.gz -C restore-test/

## Project Status
Version 1.0 - Completed and Tested.
