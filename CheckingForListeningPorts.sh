#!/bin/bash

# Check if a remote server is provided as a command-line argument
if [ -z "$1" ]; then
    echo "Usage: $0 <remote_server>"
    exit 1
fi

remote_server="$1"

echo "Checking for listening ports on $remote_server:"

# Check common ports using nc (netcat)
for port in {1..1024}; do
    timeout 1 nc -zvw1 "$remote_server" "$port" &>/dev/null
    if [ $? -eq 0 ]; then
        echo "Port $port is open"
    fi
done

echo "Port check completed."

