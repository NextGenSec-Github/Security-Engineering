# Snort Rules for Protecting Against Cross-Site Scripting (XSS) Attacks

# Rule to detect potential reflected XSS attacks in HTTP GET requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Potential Reflected XSS in HTTP GET"; flow:to_server,established; content:"GET"; http_method; pcre:"/<script[\s\S]*?>.*<\/script>/iU"; http_uri; sid:200001;)

# Rule to detect potential reflected XSS attacks in HTTP POST requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Potential Reflected XSS in HTTP POST"; flow:to_server,established; content:"POST"; http_method; pcre:"/<script[\s\S]*?>.*<\/script>/iU"; http_client_body; sid:200002;)

# Rule to detect potential stored XSS attacks in HTTP response content
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Potential Stored XSS in HTTP Response"; flow:to_client,established; pcre:"/<script[\s\S]*?>.*<\/script>/iU"; http_raw_header; sid:200003;)

# Rule to detect potential DOM-based XSS attacks
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Potential DOM-based XSS"; flow:to_server,established; content:"<script>"; http_uri; sid:200004;)

# Rule to detect potential XSS attacks in generic TCP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET any (msg:"Potential XSS in Generic TCP Traffic"; flow:to_server,established; pcre:"/<script[\s\S]*?>.*<\/script>/iU"; payload; sid:200005;)

