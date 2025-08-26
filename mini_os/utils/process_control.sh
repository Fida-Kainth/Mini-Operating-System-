#!/bin/bash
# process_control.sh - Handles process management

start_process() {
    local task_script=$1
    local task_name=$(basename "$task_script" .sh)

    echo "Starting $task_name..."
    bash "$task_script" &
    local pid=$!

    # Create tasks directory if it doesn't exist
    mkdir -p ~/mini_os/tasks
    echo "$pid" > ~/mini_os/tasks/"$task_name".pid
}

stop_process() {
    local task_name=$1
    local pid_file=~/mini_os/tasks/"$task_name".pid

    if [[ -f "$pid_file" ]]; then
        local pid=$(cat "$pid_file")
        echo "Stopping $task_name (PID: $pid)..."
        kill "$pid"
        rm -f "$pid_file"
    else
        echo "$task_name is not running."
    fi
}

# Handle command-line arguments
case "$1" in
    start)
        start_process "$2"
        ;;
    stop)
        stop_process "$2"
        ;;
    *)
        echo "Usage: $0 {start|stop} <task_script or task_name>"
        ;;
esac

