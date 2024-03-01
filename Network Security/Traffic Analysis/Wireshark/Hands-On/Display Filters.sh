# =========================
# WIRESHARK DISPLAY FILTERS
# =========================

# NOTE: What are Display Filters? Display filters in Wireshark are used to selectively display packets from a packet capture based on specific criteria. They allow you to focus on the packets that are relevant to your analysis and hide the rest. 
# Display filters can be based on various packet attributes such as protocol, source or destination IP address, port numbers, packet length, and more.


# BASIC 

# Display all ip traffic
ip

# ip.addr: Filter packets based on IP address:
ip.addr == 192.168.1.1

# tcp.port: Filter packets based on TCP port number:
tcp.port == 80

# udp.port: Filter packets based on UDP port number:
udp.port == 53

# eth.addr: Filter packets based on Ethernet MAC address:
eth.addr == 00:11:22:33:44:55

# frame.number: Filter packets based on frame number
frame.number == 100

# LOGICAL OPERATORS

# and: Logical AND operator: 
ip.addr == 192.168.1.1 and tcp.port == 80

# or: Logical OR operator.
tcp.port == 80 or udp.port == 53

# not: Local NOT operator
not ip.addr == 192.168.1.1


# PROTOCOL SPECIFIC FILTERS
# HTTP

#http: Filter for all HTTP requests
http

# http.request.method: Filter for specific HTTP Methods
http.request.method == "GET" or http.request.method == "POST" 


# DNS


# dns.qryname: Filter for specific dns queries
dns.qry.name == "google.com"


# FTP

# ftp.request.command


# FLAGS
# TCP Flags:

#Global Search
tcp

# Only SYN Flag
tcp.flags == 2

# SYN flag is set. The rest of the bits are not important.
tcp.flags.syn == 1

# Only ACK Flag
tcp.flags == 16

# ACK flag is set. The rest of the bits are not important.
tcp.flags.ack == 1

# Only SYN, ACK flags.
tcp.flags == 18

# SYN and ACK are set. The rest of the bits are not important.
(tcp.flags.syn == 1) and (tcp.flags.ack == 1)

# Only RST flag.
tcp.flags == 4

# RST flag is set. The rest of the bits are not important.
tcp.flags.rst == 1

# Only RST, ACK flags.
tcp.flags == 20

# RST and ACK are set. The rest of the bits are not important.
(tcp.flags.reset == 1) and (tcp.flags.ack == 1)

# Only FIN flag
tcp.flags == 1

# FIN flag is set. The rest of the bits are not important.
tcp.flags.fin == 1

# TCP Connect scan patterns
tcp.flags.syn==1 and tcp.flags.ack==0 and tcp.window_size > 1024 

# Shows the TCP SYN scan patterns
tcp.flags.syn==1 and tcp.flags.ack==0 and tcp.window_size <= 1024  

# Shows the UDP scan patterns
icmp.type == 3 and icmp.code == 3

# ADDRESS RESOLUTION PROTOCOL (ARP)

# Global ARP Packet Search
arp

# ARP Requests
arp.opcode == 1

# ARP Responses
arp.opcode == 2

# ARP Scanning
arp.dst.hw_mac == 00:00:00:00:00:00

# Potential ARP Poisoning Detection
arp.duplicate-address-detected or arp.duplicate-address-frame

# Potential ARP Flooding Detection
((arp) && (arp.opcode == 1)) && (arp.src.hw_mac == target-mac-address)


# DYNAMIC HOST CONFIGURATION PROTOCOL (DHCP)

# Global Search for DHCP Packets
dhcp

# DHCP Requests
dhcp.option.dhcp == 3

# ACK Responses
dhcp.option.dhcp == 5

# NAK Responses (DENIED DHCP REQUESTS)
dhcp.option.dhcp == 6

# NETBIOS

# Global NetBios Search
nbns

# Filters packets based on whether the name contains the specified keyword
nbns.name contains "keyword"

# KERBEROS

# Global Kerberos Search
kerberos

# Filters packets based on whether the Kerberos CNameString contains the specified keyword.
kerberos.CNameString contains "keyword"

# Filter out computer-related authentication events, focusing more on user authentication activities
kerberos.CNameString and !(kerberos.CNameString contains "$" )

# pvno: Protocol version
kerberos.pvno == 5

# realm: Domain name for the generated ticket
kerberos.realm contains ".org"

# sname: Service and domain name for the generated ticket
kerberos.SNameString == "krbtg"












