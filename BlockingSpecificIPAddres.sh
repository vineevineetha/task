#!/bin/bash

# Define the port and list of IP addresses to block
port_to_block=8080
ip_addresses_to_block=("192.168.1.2" "10.0.0.5")

echo "Blocking access to port $port_to_block for specified IP addresses: ${ip_addresses_to_block[@]}"

# Add iptables rules to drop incoming packets from specified IP addresses to the specified port
for ip_address in "${ip_addresses_to_block[@]}"; do
    iptables -A INPUT -p tcp --dport $port_to_block -s $ip_address -j DROP
done

# Save the iptables rules
service iptables save

echo "Blocking completed. Rules have been applied."
