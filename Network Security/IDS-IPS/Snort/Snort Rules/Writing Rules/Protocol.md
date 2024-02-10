# Snort Rule Protocols and Services Documentation

## Protocols

The protocol field in a Snort rule specifies the type of protocols the rule should inspect. Currently supported protocols include:

- **ip**
- **icmp**
- **tcp**
- **udp**

A rule can only have one protocol set, and the name of the protocol is placed after the action.

### Examples:

```plaintext
alert udp $EXTERNAL_NET any -> $HOME_NET 53 (
alert tcp $EXTERNAL_NET any -> $HOME_NET 80 (
alert ip any any -> $HOME_NET any (
