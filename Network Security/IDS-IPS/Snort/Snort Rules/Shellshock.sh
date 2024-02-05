# Snort Rules for Shellshock Detection

# Rule to detect Shellshock attempt in HTTP requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Possible Shellshock Attempt in HTTP Request"; flow:to_server,established; content:"() {"; http_client_body; sid:200001;)

# Rule to detect Shellshock attempt in SMTP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET 25 (msg:"Possible Shellshock Attempt in SMTP"; flow:to_server,established; content:"() {"; sid:200002;)

# Rule to detect Shellshock attempt in DNS traffic
alert udp $EXTERNAL_NET any -> $HOME_NET 53 (msg:"Possible Shellshock Attempt in DNS"; content:"|01 00 00 01 00 00 00 00 00 00|"; depth: 10; content:"() {"; sid:200003;)

# Rule to detect Shellshock attempt in generic TCP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET any (msg:"Possible Shellshock Attempt in Generic TCP Traffic"; flow:to_server,established; content:"() {"; payload; sid:200004;)
