# Snort Rules for DNS Spoofing Detection

# Rule to detect DNS response with a mismatched transaction ID
alert udp $EXTERNAL_NET 53 -> $HOME_NET any (msg:"Possible DNS Spoofing - Mismatched Transaction ID"; content:"|80 00|"; depth:2; offset:2; sid:700001;)

# Rule to detect DNS response with a mismatched question section
alert udp $EXTERNAL_NET 53 -> $HOME_NET any (msg:"Possible DNS Spoofing - Mismatched Question Section"; content:"|01 00 00 01 00 00 00 00 00 00|"; depth:10; offset:12; sid:700002;)

# Rule to detect DNS response with a mismatched answer section
alert udp $EXTERNAL_NET 53 -> $HOME_NET any (msg:"Possible DNS Spoofing - Mismatched Answer Section"; content:"|00 00 00 01|"; depth:4; offset:20; sid:700003;)

# Rule to detect DNS response with a mismatched authority section
alert udp $EXTERNAL_NET 53 -> $HOME_NET any (msg:"Possible DNS Spoofing - Mismatched Authority Section"; content:"|00 00 00 00|"; depth:4; offset:24; sid:700004;)

# Rule to detect DNS response with a mismatched additional section
alert udp $EXTERNAL_NET 53 -> $HOME_NET any (msg:"Possible DNS Spoofing - Mismatched Additional Section"; content:"|00 00 00 00|"; depth:4; offset:28; sid:700005;)
