# Snort Rule IP Address Declaration Documentation

IP addresses in a Snort rule header tell Snort which source and destination IP addresses the rule should apply to. A rule will only match if the source and destination IP addresses of a given packet match the IP addresses set in that rule.

## Declaration Methods

IP addresses can be declared in one of four ways:

1. As a numeric IP address with an optional CIDR block (e.g., 192.168.0.5, 192.168.1.0/24)
2. As a variable defined in the Snort config that specifies a network address or a set of network addresses (e.g., $EXTERNAL_NET, $HOME_NET, etc.)
3. The keyword `any`, meaning any IP address
4. A list of IP addresses, IP address variables, and/or port ranges, enclosed in square brackets and separated by commas (e.g., [192.168.1.0/24,10.1.1.0/24])

Two IP address declarations are made in a single rule header: the source IP addresses declared after the protocol field and the destination IP addresses declared after the direction operator.

**Note**: IP address declarations can also be negated to tell Snort to match any IP address except for the ones listed. This negation is done with the `!` operator.

### Examples:

```plaintext
# Look for traffic sent from the 192.168.1.0/24 subnet to the 192.168.5.0/24 subnet
alert tcp 192.168.1.0/24 any -> 192.168.5.0/24 any (

# Look for traffic sent from addresses included in the defined $EXTERNAL_NET variable to addresses included in the defined $HOME_NET variable
alert tcp $EXTERNAL_NET any -> $HOME_NET 80 (

# Look for traffic sent from any source network to the IP address, 192.168.1.3
alert tcp any any -> 192.168.1.3 445 (

# Negated IP address declaration: Look for traffic sent from any source except the 192.168.1.0/24 subnet to the 192.168.1.0/24 subnet on port 23
alert tcp !192.168.1.0/24 any -> 192.168.1.0/24 23 (

# Negated list of IP addresses: Look for traffic sent from any source except those in the 192.168.1.0/24 and 10.1.1.0/24 subnets to any IP in the specified range on port 80
alert tcp ![192.168.1.0/24,10.1.1.0/24] any -> [192.168.1.0/24,10.1.1.0/24] 80 (
