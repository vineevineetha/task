#!/bin/bash

echo "Active Network Interfaces:"

# Using ifconfig command
echo -e "\nUsing ifconfig command:"
ifconfig -a

# Using ip command
echo -e "\nUsing ip command:"
ip addr show

# Using netstat command
echo -e "\nUsing netstat command:"
netstat -i

# Additional details using ethtool (install if not available)
if command -v ethtool &> /dev/null; then
    echo -e "\nAdditional details using ethtool:"
    for interface in $(ifconfig -a | grep '^[a-zA-Z]' | awk '{print $1}'); do
        echo -e "\nInterface: $interface"
        ethtool $interface
    done
else
    echo -e "\nethtool is not installed. Install it to get additional details."
fi

