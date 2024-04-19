## Hostname (/etc/hostname)
The `/etc/hostname` contains the hostname of the system. The hostname is the unique label assigned to a device on a network, typically used to identify it within a network environment. Here's an example of what you might find in an /etc/hostname file:
```bash
myhostname
```
The hostname specified in the /etc/hostname file is typically used during system boot and network initialization to set the system's hostname. It's also used internally by the system to refer to itself.

## Timezone (/etc/timezone)
The `/etc/timezone`contains the name of the time zone that the system is configured to use. Here's an example of what you might find in an /etc/timezone file:
```bash
America/New_York
```
The information stored in the /etc/timezone file is typically used by system utilities and services to ensure that the system's time is displayed and interpreted correctly according to the specified time zone. It's important for accurate timekeeping and coordination across systems, especially in networked environments.

## Network Configuration (/etc/network/interfaces)
The `/etc/network/interfaces` used to define network interfaces and their associated configurations, such as IP addresses, netmasks, gateways, and more. Here's a basic example of what you might find in an /etc/network/interfaces file:
```bash
# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto eth0
iface eth0 inet static
    address 192.168.1.100
    netmask 255.255.255.0
    gateway 192.168.1.1
```

**In this example:**
- The auto lo and subsequent lines configure the loopback interface, which is used for local communication within the system.
- The auto eth0 and subsequent lines configure the primary network interface, eth0, with a static IP address (192.168.1.100), netmask (255.255.255.0), and gateway (192.168.1.1).

# DNS Information (/etc/hosts)
It serves as a local DNS (Domain Name System) resolver, mapping hostnames to IP addresses. Essentially, it allows you to manually define hostname-to-IP address mappings without relying on a DNS server. Here's a typical example of what you might find in an /etc/hosts file:

```bash
127.0.0.1       localhost
::1             localhost ip6-localhost ip6-loopback
192.168.1.100   myhost.example.com myhost
```

**In this example:**

- The first two lines specify mappings for the loopback interface (localhost) for both IPv4 and IPv6.
- The third line maps the IP address 192.168.1.100 to the hostname myhost.example.com, with an additional alias myhost.

### The /etc/hosts file is commonly used for various purposes, including:

**Local hostname resolution:** Mapping local hostnames to IP addresses, enabling applications to communicate with services running on the same system.

**DNS override:** Providing manual DNS entries that override DNS server resolution for specific hostnames. This can be useful for testing or accessing internal services without relying on public DNS servers.

**Blocking or redirecting:** Redirecting certain hostnames to alternative IP addresses, such as blocking access to certain websites by redirecting them to localhost.


## ip addr show 
The command "ip address show" (or its shorthand "ip a") is a powerful tool used in Linux systems to display information about network interfaces and their associated IP addresses. It provides detailed information about the networking configuration of the system.

## Active Network Connections (netstat)
It allows users to display various network-related information such as network connections, routing tables, interface statistics, and more. When you run the netstat command without any options, it typically displays a list of active network connections, both incoming and outgoing, along with their associated details such as protocol, local and remote addresses, and state. Here's an example output of netstat without any options:
```bash
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN     
tcp        0      0 192.168.1.100:22        192.168.1.101:54321     ESTABLISHED
tcp        0      0 192.168.1.100:22        192.168.1.102:12345     ESTABLISHED
udp        0      0 0.0.0.0:68              0.0.0.0:*                          
```

**In this output:**
- The first column (Proto) indicates the protocol used (TCP or UDP).
- The second column (Recv-Q) shows the size of the receive queue for the socket.
- The third column (Send-Q) shows the size of the send queue for the socket.
- The fourth column (Local Address) displays the local IP address and port.
- The fifth column (Foreign Address) displays the remote IP address and port.
- The sixth column (State) shows the state of the connection (e.g., LISTEN, ESTABLISHED).

## Running Processes (ps)
The `ps` command is used for displaying information about running processes on a system. It stands for "process status." When you run ps without any options, it typically lists the processes associated with the current terminal session. Here's an example output of ps without any options:
```bash
  PID TTY          TIME CMD
 3723 pts/0    00:00:00 bash
 3764 pts/0    00:00:00 ps
```

**In this output:**
- The first column (PID) displays the process ID, a unique identifier for each running process.
- The second column (TTY) shows the terminal associated with the process.
- The third column (TIME) indicates the cumulative CPU time consumed by the process.
- The fourth column (CMD) displays the command name or the command-line arguments used to start the process.

### Extra Commands:
- `ps aux` or `ps -ef`: Displays a detailed list of all processes running on the system.
- `ps -e`: Shows a list of all processes regardless of terminal association.
- `ps -u username`: Displays processes owned by a specific user.
- `ps -f`: Provides a full-format listing with more detailed information about each process.





