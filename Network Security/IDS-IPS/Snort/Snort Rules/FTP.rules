# This file contains Snort rules to detect various FTP traffic patterns.

# Rule to alert on inbound FTP traffic on port 21
alert tcp any 21 <> any any (msg: "Inbound FTP Traffic Detected"; sid:1000000000003; rev:1)

# Rule to alert on outbound FTP traffic on port 21
alert tcp any any <> any 21 (msg: "Outbound FTP Traffic Detected"; sid:1000000000004; rev:1)

# Rule to detect failed FTP login attempts with status code 530
alert tcp any any <> any 21 (msg:"Failed ftp login attempt"; content:"530"; sid:1000000000005)

# Rule to detect successful FTP logins with status code 230
alert tcp any any <> any 21 (msg:"Login Successful"; content:"230"; sid:1000000000006)

# Rule to detect login attempts with a valid username but invalid password with status code 331
alert tcp any any <> any 21 (msg: "Invalid Username or Password"; content: "331"; sid: 1000000000007)

# Rule to detect FTP login attempts with "Administrator" as the username with invalid password
alert tcp any any <> any 21 (msg: "Must Enter a Valid Password"; content: "Administrator"; content: "331"; sid: 1000000000008)
