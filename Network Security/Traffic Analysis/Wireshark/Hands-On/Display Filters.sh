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


















