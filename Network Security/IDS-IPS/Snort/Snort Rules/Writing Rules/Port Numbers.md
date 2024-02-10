# Snort Rule Port Numbers Declaration Documentation

Port numbers in a Snort rule header tell Snort to apply a given rule to traffic sent from or to the specified source and destination ports.

## Declaration Methods

Ports can be declared in several ways:

1. As any ports (meaning match traffic being sent from or to any port)
2. As a static port (e.g., 80, 445, 21)
3. As a variable defined in the Snort config that specifies a port or set of ports (e.g., $HTTP_PORTS)
4. As port ranges indicated with the range operator, : (e.g., 1:1024, 500:)
5. A list of static ports, port variables, and/or port ranges, enclosed in square brackets and separated by commas (e.g., [1:1024,4444,5555,$HTTP_PORTS])

A rule header should have two port declarations, one to define the source ports and another to define the destination ports. Source and destination ports are declared after the source and destination IP addresses, respectively.

**Note**: Port declarations can also be negated by placing ! before them.

An important point to note is that the ports specified in the rule header do not have to match the ports being used in the traffic if a service specified in the service rule option matches the service of the given traffic.

### Examples:

```plaintext
# Log UDP traffic coming from any source port and destination ports ranging from 1 to 1024
log udp any any -> 192.168.1.0/24 1:1024 (

# Log TCP traffic from any port going to ports less than or equal to 6000
log tcp any any -> 192.168.1.0/24 :6000 (

# Log TCP traffic from privileged ports less than or equal to 1024 going to ports greater than or equal to 500
log tcp any :1024 -> 192.168.1.0/24 500: (
