cat << 'EOF' > ~/mini_os/utils/interrupt_handler.sh
#!/bin/bash
# interrupt_handler.sh - Manages simulated interrupts (pause/resume)

pause_task() {
    local task_name=$1
    echo "Pausing $task_name..."
    kill -STOP $(cat ~/mini_os/tasks/$task_name.pid)
}

resume_task() {
    local task_name=$1
    echo "Resuming $task_name..."
    kill -CONT $(cat ~/mini_os/tasks/$task_name.pid)
}

# Handle pause and resume actions
case "$1" in
    pause)
        pause_task "$2"
        ;;
    resume)
        resume_task "$2"
        ;;
    *)
        echo "Usage: $0 {pause|resume} <task_name>"
        ;;
esac
EOF
