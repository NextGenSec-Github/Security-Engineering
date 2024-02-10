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
```

## Services in place of protocols

In addition to specifying Layer 3 and Layer 4 protocols, Snort allows rule writers to specify application layer services. This means instead of using one of the four mentioned protocols, you can specify a service that Snort should match on. The service specified must match the service detected in the traffic for a rule to be considered a match.

To specify a service, place the name of the service where a protocol would usually go in the rule header.
```bash
# Will only run on HTTP traffic sent to destination port 8000
alert http $EXTERNAL_NET any -> $HOME_NET 8000 (

# Will only run on SMTP traffic sent to destination port 5300
alert smtp $EXTERNAL_NET any -> $HOME_NET 5300 (
```
