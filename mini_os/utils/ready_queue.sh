#!/bin/bash
# ready_queue.sh - Manages the ready queue

READY_QUEUE=()

enqueue_task() {
    READY_QUEUE+=("$1")
}

dequeue_task() {
    local first="${READY_QUEUE[0]}"
    READY_QUEUE=("${READY_QUEUE[@]:1}")
    echo "$first"
}

show_ready_queue() {
    echo "Ready Queue:"
    for task in "${READY_QUEUE[@]}"; do
        echo " - $task"
    done
}
