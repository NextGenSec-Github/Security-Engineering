# Dynamic Host Configuration Protocol for IPv6 (DHCPv6)

Dynamic Host Configuration Protocol for IPv6 (DHCPv6) is a protocol used to dynamically configure IPv6 addresses and other network configuration parameters to devices on a network. It is an essential component of IPv6 networks, providing a centralized mechanism for managing IPv6 address allocation and other network settings.

## Key Features

DHCPv6 offers several key features that facilitate IPv6 network administration:

- **Address Assignment:** DHCPv6 assigns IPv6 addresses to devices dynamically, eliminating the need for manual configuration.
- **Prefix Delegation:** DHCPv6 supports prefix delegation, allowing routers to delegate prefixes to downstream routers and devices. This is particularly useful in hierarchical network architectures.
- **Stateful Configuration:** DHCPv6 can provide stateful configuration, where network parameters such as IPv6 addresses, DNS server addresses, and other options are centrally managed by a DHCPv6 server.
- **Stateless Configuration:** In addition to stateful configuration, DHCPv6 supports stateless configuration, where devices can obtain network parameters without the need for a DHCPv6 server to maintain client state. Stateless configuration is particularly useful for devices that do not require permanent IP addresses.
- **Option Configuration:** DHCPv6 allows administrators to configure various network options such as DNS server addresses, domain names, and network time protocol (NTP) servers, providing flexibility in network configuration.

## DHCPv6 Components

DHCPv6 consists of several components, including:

- **DHCPv6 Server:** The DHCPv6 server is responsible for allocating IPv6 addresses and other configuration parameters to DHCPv6 clients. It maintains a pool of available IPv6 addresses and responds to client requests for address assignment.
- **DHCPv6 Client:** DHCPv6 clients are devices that request IPv6 address configuration from DHCPv6 servers. Clients typically send solicit messages to discover DHCPv6 servers on the network and then request address assignment.
- **DHCPv6 Relay Agent:** In networks with multiple subnets, DHCPv6 relay agents forward DHCPv6 messages between clients and servers. Relay agents are essential for ensuring that DHCPv6 messages reach the appropriate DHCPv6 server, even when clients and servers are on different subnets.

## DHCPv6 Message Types
1. **Solicit**: DHCPv6 clients broadcast ***solicit*** message to discover available DHCPv6 servers on the network.


