#!/bin/bash
# kernel_mode.sh - Enter Kernel Mode for task management

source utils/ready_queue.sh

echo "===== Kernel Mode ====="
echo "1. View Running Tasks"
echo "2. Kill Task by Name"
echo "3. Exit Kernel Mode"
read -p "Choose an option: " opt

case $opt in
    1)
        show_ready_queue
        ;;
    2)
        read -p "Enter script name to kill (e.g., tasks/calculator.sh): " kill_name
        pkill -f "$kill_name"
        echo "$kill_name killed."
        ;;
    3)
        echo "Exiting Kernel Mode."
        ;;
    *)
        echo "Invalid option."
        ;;
esac
