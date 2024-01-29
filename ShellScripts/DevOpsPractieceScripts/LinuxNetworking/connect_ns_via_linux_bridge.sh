#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Create two Namespaces and connect them using Linux bridge (vm/web)
# Date: Jan 29, 2024

# This script performs the following actions:

# Creates two network namespaces.
# Creates two veth pairs, each pair consists of two interfaces.
# Creates a Linux bridge mybridge.
# Attaches one end of each veth pair to the bridge.
# Assigns the other ends of the veth pairs to the respective namespaces.
# Configures IP addresses for the interfaces within the namespaces.
# Brings up all interfaces and the bridge.
# Run this script as root or with sudo since it involves network configuration changes. 
# After running the script, you can test the connectivity between namespaces and the bridge using tools 
# like ping or ip. For example, you can ping 192.168.15.1 from namespace2 to check connectivity.


# Set the names for the two namespaces
NS1="namespace1"
NS2="namespace2"

# Create the two namespaces
ip netns add $NS1
ip netns add $NS2

# Create a veth pair for each namespace
ip link add veth1 type veth peer name br-veth1
ip link add veth2 type veth peer name br-veth2

# Create the bridge
brctl addbr mybridge
brctl stp mybridge off

# Attach one end of each veth pair to the bridge
brctl addif mybridge br-veth1
brctl addif mybridge br-veth2

# Assign the other ends of the veth pairs to the namespaces
ip link set veth1 netns $NS1
ip link set veth2 netns $NS2

# Bring up the bridge
ip link set dev mybridge up

# Bring up the bridge ends of the veth pairs
ip link set dev br-veth1 up
ip link set dev br-veth2 up

# Configure the interfaces inside the namespaces
ip netns exec $NS1 ip addr add 192.168.15.1/24 dev veth1
ip netns exec $NS2 ip addr add 192.168.15.2/24 dev veth2

# Bring up the interfaces inside the namespaces
ip netns exec $NS1 ip link set dev veth1 up
ip netns exec $NS1 ip link set dev lo up

ip netns exec $NS2 ip link set dev veth2 up
ip netns exec $NS2 ip link set dev lo up

echo "Namespaces $NS1 and $NS2 have been created and connected to the bridge 'mybridge'."

