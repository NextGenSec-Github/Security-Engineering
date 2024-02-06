# Snort Rules for Command Injection Detection

# Rule to detect potential command injection in HTTP requests
alert tcp $EXTERNAL_NET any -> $HTTP_SERVERS $HTTP_PORTS (msg:"Possible Command Injection Attempt in HTTP Request"; flow:to_server,established; content:"|3C|script|3E|"; http_client_body; pcre:"/(\b(?:exec|system|passthru|shell_exec)\b)/i"; sid:900001;)

# Rule to detect potential command injection in SMTP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET 25 (msg:"Possible Command Injection Attempt in SMTP"; flow:to_server,established; pcre:"/(\b(?:exec|system|passthru|shell_exec)\b)/i"; sid:900002;)

# Rule to detect potential command injection in DNS traffic
alert udp $EXTERNAL_NET any -> $HOME_NET 53 (msg:"Possible Command Injection Attempt in DNS"; content:"|01 00 00 01 00 00 00 00 00 00|"; depth: 10; pcre:"/(\b(?:exec|system|passthru|shell_exec)\b)/i"; sid:900003;)

# Rule to detect potential command injection in generic TCP traffic
alert tcp $EXTERNAL_NET any -> $HOME_NET any (msg:"Possible Command Injection Attempt in Generic TCP Traffic"; flow:to_server,established; pcre:"/(\b(?:exec|system|passthru|shell_exec)\b)/i"; payload; sid:900004;)


_____________
NOTE
_____________
# Customize the $EXTERNAL_NET, $HOME_NET, $HTTP_SERVERS, and $HTTP_PORTS variables according to your network configuration.
# These rules are basic examples and may generate false positives based on legitimate traffic. Fine-tune the rules based on your network's normal behavior and specific application context.
# Command injection detection often involves more sophisticated techniques, and these rules may need adjustment based on specific application deployment scenarios.
