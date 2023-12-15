3. Write a script to allow traffic through a specific port using the firewall.


#!/bin/bash

# Check if a port number is provided as a command-line argument
if [ -z "$1" ]; then
    echo "Usage: $0 <port_number>"
    exit 1
fi

port_to_allow="$1"

echo "Allowing traffic through port $port_to_allow"

# Allow incoming traffic on the specified port
iptables -A INPUT -p tcp --dport $port_to_allow -j ACCEPT

# Save the iptables rules
service iptables save

echo "Traffic through port $port_to_allow allowed."

