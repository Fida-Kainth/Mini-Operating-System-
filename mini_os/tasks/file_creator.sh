#!/bin/bash
# file_creator.sh - File Creation Utility

echo "==== File Creator ===="
read -p "Enter filename to create: " fname
touch "$fname"
echo "$fname created successfully."
read -p "Press enter to return to main menu"
