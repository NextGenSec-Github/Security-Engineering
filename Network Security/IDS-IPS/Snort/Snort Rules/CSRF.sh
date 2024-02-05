# Snort Rules for Detecting Indicators of Cross-Site Request Forgery (CSRF) Attacks

# Rule to detect potential CSRF attacks in HTTP GET requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Potential CSRF in HTTP GET"; flow:to_server,established; content:"GET"; http_method; pcre:"/\?csrf_token=/i"; http_uri; sid:400001;)

# Rule to detect potential CSRF attacks in HTTP POST requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Potential CSRF in HTTP POST"; flow:to_server,established; content:"POST"; http_method; pcre:"/csrf_token=/i"; http_client_body; sid:400002;)

# Rule to detect potential CSRF attacks in generic TCP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET any (msg:"Potential CSRF in Generic TCP Traffic"; flow:to_server,established; pcre:"/csrf_token=/i"; payload; sid:400003;)

