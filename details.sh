#!/bin/bash
# Windows Network Configuration Script
#Basic Windows Networking Script for the Uploading ...

# Set a static IP address for the network interface (replace "Ethernet0" with your actual interface name)
netsh interface ipv4 set address "Ethernet0" static 192.168.1.100 255.255.255.0

# Configure DNS servers
netsh interface ipv4 add dnsserver "Ethernet0" address=8.8.8.8 index=1
netsh interface ipv4 add dnsserver "Ethernet0" address=8.8.4.4 index=2

# Add a firewall rule to allow incoming SSH traffic
netsh advfirewall firewall add rule name="Allow SSH" dir=in action=allow protocol=TCP localport=22

# Restart the network interface
netsh interface set interface "Ethernet0" admin=disable
netsh interface set interface "Ethernet0" admin=enable


#-----------------------------------------------------------------------------------------------------

#Bash Scripts for the Networking in the servers using the Ubuntu Servers LTS

#!/bin/bash
# Linux Network Configuration Script

# Display network interface information
ifconfig

# Bring up a network interface (replace "eth0" with your actual interface name)
sudo ifconfig eth0 up

# Set a temporary IP address (replace with your desired IP)
sudo ifconfig eth0 192.168.1.100 netmask 255.255.255.0

# Get the machine hostname
AWSEC2

# Set a permanent hostname (modify /etc/hostname)
sudo echo "myhostname" > /etc/hostname

# Restart networking service
sudo systemctl restart networking
