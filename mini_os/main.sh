#!/bin/bash
# main.sh - Main Shell Controller

# Load system configuration
source os_config.sh
source utils/ready_queue.sh

while true; do
    echo -e "\n\033[1;34m======== Lagers Operating System =========\033[0m"
    echo -e "\033[1;32m1. Calculator"
    echo "2. Notepad"
    echo "3. Clock"
    echo "4. File Creator"
    echo "5. Shutdown OS\033[0m"
    echo -e "\033[1;34m=======================================\033[0m"
    
    read -p "Choose an option: " choice

    case $choice in
    1) gnome-terminal -- bash -c "bash tasks/calculator.sh; exec bash" ;;
    2) gnome-terminal -- bash -c "bash tasks/notepad.sh; exec bash" ;;
    3) gnome-terminal -- bash -c "bash tasks/clock.sh; exec bash" ;;
    4) gnome-terminal -- bash -c "bash tasks/file_creator.sh; exec bash" ;;
    5) bash shutdown.sh; exit 0 ;;
    *) echo -e "\033[1;31mInvalid option.\033[0m" ;;
esac

done

