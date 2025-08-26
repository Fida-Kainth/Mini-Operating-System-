#!/bin/bash
# shutdown.sh - Graceful Shutdown

clear
echo "Shutting down Nucleus OS..."
sleep 1
echo "Saving system state..."
sleep 1
echo "Closing all tasks..."
killall bash 2>/dev/null

sleep 1
echo "Goodbye!"
exit 0
