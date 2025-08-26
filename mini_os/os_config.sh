#!/bin/bash
# os_config.sh - Initialize System Resources

if [ ! -f config.txt ]; then
    echo "Setting up system for first time..."

    read -p "Enter total RAM (MB): " ram
    read -p "Enter total HDD (GB): " hdd
    read -p "Enter number of CPU cores: " cores

    echo "\$ram \$hdd \$cores" > config.txt
else
    read ram hdd cores < config.txt
fi

echo "[INFO] RAM: \${ram}MB | HDD: \${hdd}GB | Cores: \${cores}"
