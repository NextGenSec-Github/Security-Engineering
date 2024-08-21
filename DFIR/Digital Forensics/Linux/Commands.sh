# OSQuery: Enables us to query the operating system as a relational database
osqueryi
Select username, uid, description from users; # Query uses the users table to retrieve information about the user accounts created on the host
Select pid, name, parent,path from processes; # Get information about the running processes
select * from etc_hosts where address = '0.0.0.0';
SELECT pid, name, path, state FROM processes; # List running processes
SELECT pid, name, path FROM processes WHERE path LIKE '/tmp/%' OR path LIKE '/var/tmp/%';
SELECT pid, name, path, cmdline, start_time FROM processes WHERE on_disk = 0; # List the processes executing on the host but not on the disk. This could also indicate a potential fileless malware.
SELECT pid, name, parent, path FROM processes WHERE parent NOT IN (SELECT pid from processes); # List the processes without parent processes and thus deemed orphan
SELECT pid, name, path, cmdline, start_time FROM processes WHERE path LIKE '/home/%' OR path LIKE '/Users/%'; # Search in the list of running processes and see which method is running from the user directory
SELECT pid, family, remote_address, remote_port, local_address, local_port, state FROM process_open_sockets LIMIT 20; # Retrieves information about network connections established by various processes on the system.
SELECT pid, fd, socket, local_address, remote_address, local_port, remote_port FROM process_open_sockets WHERE remote_address IS NOT NULL;
SELECT * FROM dns_resolvers; # Retrieve the information about the DNS queries on this host
SELECT * FROM interface_addresses; # Retrieve the information about the network interface
SELECT * FROM listening_ports; # List down the listening ports.
SELECT pid, fd, path FROM process_open_files; # List all files that have been opened and are associated with some process.
SELECT pid, fd, path FROM process_open_files where path LIKE '/tmp/%'; # Search for the processes that have opened files on the system. For this query, we only look at the files accessed from the /tmp/ directory
select pid, name, path from processes where pid = '556'; # Investigate a suspicious process
SELECT filename, path, directory, size, type FROM file WHERE path LIKE '/.%'; # Search for hidden files
SELECT filename, path, directory, type, size FROM file WHERE path LIKE '/etc/%' AND (mtime > (strftime('%s', 'now') - 86400)); # Find recently modified files
SELECT filename, path, directory, mtime FROM file WHERE path LIKE '/opt/%' OR path LIKE '/bin/' AND (mtime > (strftime('%s', 'now') - 86400)); # Find recently modified binaries

# SYSTEM PROFILING
uname -a # Basic system details
hostnamectl # Details about the system's hostname and other related settings
uptime # Gives you a quick snapshot of your system's current status,
lscpu # Displays detailed information about the CPU architecture
df -h # Reports the amount of disk space used and available on the system
lsblk # Provides information about block devices, such as disks and partitions
free -h # Used to display memory usage information
dpkg -l # Debian: List installed packages
apt list --installed | head -n 30 # Ubuntu: Top 30 packages installed
ifconfig # Network interface config
ip -a # Network interface config
route # Displays routing table
ip r # Displays routing table
netstat # Shows socket statistics and active connections
ss # Shows socket statistics and active connections

# PROCESS ANALYSIS

ps      # Provides a snapshot of the current processes. This is useful for an overview of all running processes, and various options allow you to display more detailed information.
top     # Offers a dynamic, real-time view of running processes. It monitors system performance and resource usage, showing which processes consume the most CPU and memory.
htop    # Similar to top but with an improved interface and additional features. It allows for easier process management and includes color coding for better readability.
pstree  # Displays processes in a tree format, showing the parent-child relationships between processes. This helps us understand how processes are related and organized.
pidof   # Finds a running program's process ID (PID) by name. This is useful when you know the process's name and need its PID for further investigation or action.
pgrep   # Searches for processes based on name and other attributes. It is useful for filtering and finding specific processes.
lsof    # Lists open files and the processes that opened them. This can help identify which processes use specific files, sockets, or network connections.
netstat # Provides network-related information, including active connections and listening ports. This is useful for identifying potentially malicious network activity by processes.
strace  # Traces system calls and signals. This is advanced but very powerful for debugging and understanding exactly what a process is doing at a low level.
vmstat  # Reports on virtual memory statistics. It's good for getting an overview of system performance, including process scheduling and resource usage.

# NETWORK CONNECTIONS
tcpdump	# Captures and analyzes network packets in real time. You can save these packets to a file for later analysis or filter them to focus on specific types of traffic.
iptables # It displays, sets up, and maintains IP packet filter rules, helps manage firewall rules, and monitors network traffic.
nmap # It scans networks to discover hosts and services. This is useful for identifying devices on the network and what ports they're using.
ping # It tests connectivity to other network devices by sending ICMP echo request packets. It's useful for checking whether a host is reachable.
traceroute # Traces the path packets take to reach a destination. It helps identify where network delays or issues might be occurring.
dig	# Queries DNS servers for information about domain names. It helps diagnose DNS-related issues.
hostname # Displays or sets the system's hostname and associated IP address. It's useful for identifying the local system's network identity.
arp	# Displays and modifies the system's ARP (Address Resolution Protocol) table. It's useful for associating IP addresses with MAC addresses.
route	# Displays or modifies the IP routing table. It helps understand how packets are routed through the network.
curl # Transfers data from or to a server using various protocols. It's useful for testing network connections and downloading files.
wget # Non-interactive network downloader. It's primarily used to download files from the web and can be useful for testing download speeds and connectivity.
netcat # Reads and writes data across network connections using TCP or UDP. It's a versatile tool for debugging and testing network connections.
whois	# Queries the WHOIS database for domain registration information. It's useful for gathering information about domain owners.
nslookup # Queries DNS servers to obtain domain name or IP address mapping. It's useful for diagnosing DNS issues.

# TRACKING DOWN
grep " install " /var/log/dpkg.log # Find recently installed packages
dpkg -l | grep <SUSPICIOUS-PACKAGE> # Find more info on this sus package


# PERSISTENCE
cd /etc/systemd/system # Check for any sus initialization services
select username, directory from users; # Look for any backdoor accounts
cut -d  : -f1 /etc/passwd # List down names from /etc/passwd



