# Snort Rules for File Inclusion/Traversal Detection

# Rule to detect file inclusion attempts using '../' in HTTP requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Possible File Inclusion/Traversal Attempt in HTTP Request"; flow:to_server,established; content:"../"; http_uri; sid:100001;)

# Rule to detect file inclusion attempts using '../' in generic TCP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET any (msg:"Possible File Inclusion/Traversal Attempt in Generic TCP Traffic"; flow:to_server,established; content:"../"; payload; sid:100002;)

# Rule to detect file traversal attempts using encoded '../' in HTTP requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Possible Encoded File Traversal Attempt in HTTP Request"; flow:to_server,established; pcre:"/%2E%2E%2F/"; http_uri; sid:100003;)

# Rule to detect file traversal attempts using encoded '../' in generic TCP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET any (msg:"Possible Encoded File Traversal Attempt in Generic TCP Traffic"; flow:to_server,established; pcre:"/%2E%2E%2F/"; payload; sid:100004;)
