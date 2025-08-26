cat << 'EOF' > ~/mini_os/utils/memory_manager.sh
#!/bin/bash
# memory_manager.sh - Simulates memory allocation for tasks

MAX_RAM=1024   # Set your maximum system RAM (in MB) here
USED_RAM=0

allocate_memory() {
    local task_ram=$1
    if [ $((USED_RAM + task_ram)) -le $MAX_RAM ]; then
        USED_RAM=$((USED_RAM + task_ram))
        echo "Allocated $task_ram MB for task. Total used RAM: $USED_RAM MB"
    else
        echo "Not enough memory. Task cannot be started."
        return 1
    fi
}

free_memory() {
    local task_ram=$1
    USED_RAM=$((USED_RAM - task_ram))
    echo "Freed $task_ram MB. Total used RAM: $USED_RAM MB"
}

EOF
