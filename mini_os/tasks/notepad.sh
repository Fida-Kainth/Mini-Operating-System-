#!/bin/bash
# notepad.sh - Simple Notepad

echo "==== Notepad ===="
read -p "Enter filename: " fname
nano "$fname"
