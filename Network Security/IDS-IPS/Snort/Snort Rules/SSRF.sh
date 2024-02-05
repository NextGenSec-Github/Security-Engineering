# Snort Rules for Protecting Against Server-Side Request Forgery (SSRF) Attacks

# Rule to detect potential SSRF attacks in HTTP GET requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Potential SSRF in HTTP GET"; flow:to_server,established; content:"GET"; http_method; pcre:"/http:\/\/internal-server\/access/i"; http_uri; sid:300001;)

# Rule to detect potential SSRF attacks in HTTP POST requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Potential SSRF in HTTP POST"; flow:to_server,established; content:"POST"; http_method; pcre:"/http:\/\/internal-server\/access/i"; http_client_body; sid:300002;)

# Rule to detect potential SSRF attacks in generic TCP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET any (msg:"Potential SSRF in Generic TCP Traffic"; flow:to_server,established; pcre:"/http:\/\/internal-server\/access/i"; payload; sid:300003;)


