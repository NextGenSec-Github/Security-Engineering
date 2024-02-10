# Snort Rule Direction Operators Documentation

The direction operator of a Snort rule header indicates the direction of the traffic that the rule should apply to. There are two valid direction operators:

1. **->**: The `->` operator denotes that the IP addresses and port numbers on the left side represent the source, and the IP addresses and port numbers on the right side represent the destination.

2. **<>**: The `<>` operation is the bidirectional operator, telling Snort to consider the two IP address and port pairs as either the source or destination.

The direction operator is placed after the first ports declaration in the header.

### Examples:

```plaintext
# Alert TCP traffic from $EXTERNAL_NET on port 80 to $HOME_NET on any port
alert tcp $EXTERNAL_NET 80 -> $HOME_NET any (

# Log TCP traffic not coming from the 192.168.1.0/24 subnet on any port to or from the same subnet on port 23
log tcp !192.168.1.0/24 any <> 192.168.1.0/24 23 (
