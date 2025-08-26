#!/bin/bash
# scheduler.sh - Simulates multilevel scheduling

source os_config.sh
source utils/ready_queue.sh

schedule_tasks() {
    while true; do
        if [ ${#READY_QUEUE[@]} -eq 0 ]; then
            sleep 1
            continue
        fi

        for task in "${READY_QUEUE[@]}"; do
            echo "[Scheduler] Running task: $task"
            gnome-terminal -- bash -c "bash $task; exec bash" &
            sleep $TIME_SLICE
        done
    done
}

schedule_tasks
