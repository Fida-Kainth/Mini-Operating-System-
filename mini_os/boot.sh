#!/bin/bash
# boot.sh - OS Bootloader

clear
echo -e "\033[1;34mInitializing Lagers OS...\033[0m"
sleep 1

for i in {1..3}; do
    echo -ne "\033[1;33m.\033[0m"
    sleep 1
done

clear
echo -e "\033[1;32m===============================================\033[0m"
echo -e "\033[1;36m      ✨ Welcome to Lagers Operating System ✨     \033[0m"
echo -e "\033[1;34m        A Custom Linux Terminal-Based OS        \033[0m"
echo -e "\033[1;32m===============================================\033[0m"
sleep 2

bash main.sh

