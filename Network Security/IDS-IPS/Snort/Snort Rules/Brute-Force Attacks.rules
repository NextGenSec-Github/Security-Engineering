# Snort Rules for Protecting Against Brute Force Attacks

# Rule to detect repeated failed login attempts in SSH traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET 22 (msg:"Possible SSH Brute Force Attempt"; flow:to_server,established; content:"Failed password"; sid:500001;)

# Rule to detect repeated failed login attempts in FTP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET 21 (msg:"Possible FTP Brute Force Attempt"; flow:to_server,established; content:"530 Login incorrect"; sid:500002;)

# Rule to detect repeated failed login attempts in HTTP traffic
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Possible HTTP Brute Force Attempt"; flow:to_server,established; content:"401 Unauthorized"; sid:500003;)

# Rule to detect repeated failed login attempts in SMTP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET 25 (msg:"Possible SMTP Brute Force Attempt"; flow:to_server,established; content:"535 Authentication failed"; sid:500004;)

# Rule to detect repeated failed login attempts in POP3 traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET 110 (msg:"Possible POP3 Brute Force Attempt"; flow:to_server,established; content:"-ERR Authentication failed"; sid:500005;)

# Rule to detect repeated failed login attempts in IMAP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET 143 (msg:"Possible IMAP Brute Force Attempt"; flow:to_server,established; content:"NO Login failed"; sid:500006;)

_____________
NOTE
_____________
# Customize the $EXTERNAL_NET, $HOME_NET, $HTTP_SERVERS, and $HTTP_PORTS variables according to your network configuration.
# These rules are basic examples and may need adjustment based on the specific application and authentication mechanisms you want to protect.
# Brute force attacks may involve various protocols and attack vectors. Consider extending and adapting these rules to cover additional services as needed.
