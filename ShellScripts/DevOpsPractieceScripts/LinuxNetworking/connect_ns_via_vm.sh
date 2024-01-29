#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Create two Namespaces and connect them using veth (vm)
# Date: Jan 29, 2024

# This script does the following:

# Defines two namespace names.
# Creates two namespaces using ip netns add.
# Creates a virtual Ethernet pair (veth1 and veth2) with ip link add.
# Assigns each end of the veth pair to a different namespace.
# Assigns IP addresses to each end of the veth pair inside their respective namespaces.
# Brings up the veth interfaces and loopback interfaces inside each namespace.
# You can run this script on a Linux system with ip command available (part of the iproute2 package, 
# which is typically installed by default on Ubuntu).

# Remember, you need to run this script as root or with sudo since it modifies network settings. 
# After running this script, you can use ip netns exec <namespace> <command> to execute commands 
# inside a specific namespace, such as ping to test connectivity between namespaces.

# Set the names for the two namespaces
NS1="namespace1"
NS2="namespace2"

# Create the two namespaces
ip netns add $NS1
ip netns add $NS2

# Create a veth pair
ip link add veth1 type veth peer name veth2

# Assign the veth interfaces to the namespaces
ip link set veth1 netns $NS1
ip link set veth2 netns $NS2

# Configure the interfaces inside the namespaces
ip netns exec $NS1 ip addr add 192.168.15.1/24 dev veth1
ip netns exec $NS2 ip addr add 192.168.15.2/24 dev veth2

# Bring up the loopback and veth interfaces inside the namespaces
ip netns exec $NS1 ip link set dev veth1 up
ip netns exec $NS1 ip link set dev lo up

ip netns exec $NS2 ip link set dev veth2 up
ip netns exec $NS2 ip link set dev lo up

echo "Namespaces $NS1 and $NS2 have been created and connected."
