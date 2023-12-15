#!/bin/bash

# Check if a port number is provided as a command-line argument
if [ -z "$1" ]; then
    echo "Usage: $0 <port_number>"
    exit 1
fi

port_to_delete="$1"

echo "Deleting firewall rule for port $port_to_delete"

# Delete iptables rule for the specified port
iptables -D INPUT -p tcp --dport $port_to_delete -j ACCEPT

# Save the iptables rules based on distribution
if command -v systemctl &> /dev/null; then
    systemctl restart iptables
    echo "Firewall rule for port $port_to_delete deleted."
elif command -v service &> /dev/null; then
    service iptables save
    service iptables restart
    echo "Firewall rule for port $port_to_delete deleted."
else
    echo "Unsupported system: Unable to save and apply iptables rules."
    exit 1
fi
