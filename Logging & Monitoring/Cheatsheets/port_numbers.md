## Port Number Cheatsheet

**Understanding Port Numbers**

* Ports are like virtual doors on a computer.  They allow specific types of traffic to reach specific services.

**Common TCP Ports**

* **20 (FTP-data):** File Transfer Protocol (data) - Used for transferring the actual file content. Works in conjunction with port 21.
* **21 (FTP):** File Transfer Protocol (control) - Handles commands, directory listings, authentication, etc. Works in conjunction with port 20.
* **22 (SSH):** Secure Shell - Provides encrypted remote login, file transfer, terminal sessions, and other functionality. Replaces insecure protocols like Telnet.
* **23 (Telnet):** Unencrypted remote login.  Transmits everything in cleartext, making it highly insecure. Avoid unless absolutely necessary in isolated environments.
* **25 (SMTP):** Simple Mail Transfer Protocol - The standard for sending email between mail servers.
* **53 (DNS):** Domain Name System - Translates human-readable domain names (like google.com) into IP addresses computers understand.  Essential for most internet functions.
* **80 (HTTP):** Hypertext Transfer Protocol - The foundation of web browsing. Transmits unencrypted web page data.
* **110 (POP3):** Post Office Protocol (v3) - Older protocol for retrieving email from a mail server. Typically stores messages only temporarily.
* **143 (IMAP):** Internet Message Access Protocol - A more modern mailbox protocol. Allows for managing email on the server, multiple folders, etc.
* **443 (HTTPS):** HTTP Secure - HTTP with added encryption (TLS/SSL). Used for secure web traffic (e-commerce, banking, etc.)
* **137-139 (NetBIOS):** Legacy Windows services, primarily file/printer sharing.  Prone to security exploits, and replaced by SMB in modern systems.
* **161/162 (SNMP):** Simple Network Management Protocol - Standard for monitoring and managing network devices (routers, switches, etc.) Transmits device status information.
* **389 (LDAP):** Lightweight Directory Access Protocol -  Used to query and interact with directory services (e.g., company-wide contacts). Similar to searching a phonebook. 
* **445 (SMB):** Server Message Block -  Modern Windows file/printer sharing, and various remote administration functions. 
* **500 (ISAKMP):** Internet Security Association and Key Management Protocol - Used to establish security associations and cryptographic keys for secure communications (IPSec, VPNs).
* **3389 (RDP):** Remote Desktop Protocol - Allows graphical remote control of another computer over a network.

### Common UDP Ports

* **53 (DNS):** Same functionality as TCP, but UDP is faster for small domain lookups where reliability is less necessary.
* **67/68 (DHCP):** Dynamic Host Configuration Protocol - Handles automatic assignment of IP addresses, saving manual configuration on large networks. 
* **69 (TFTP):** Trivial File Transfer Protocol - Very basic, less overhead than FTP. Used for bootstrapping network devices or simple file transfers where security isn't primary.
* **123 (NTP):** Network Time Protocol - Synchronizes computer clocks over a network. Important for accurate timestamps and many applications.
* **546/547 (DHCPv6):**  DHCP for IPv6 networks.  Same function as above, adapted for the newer IP addressing standard.
* **1701 (L2TP):** Layer 2 Tunneling Protocol - VPN protocol often used with IPSec for security.  Doesn't provide encryption itself.

### Specialized Ports
* **8080 (HTTP - Alternative):** A very common alternative port for web servers. This is often used for testing websites during development or for running secondary websites on the same machine as a primary website (which would typically be on port 80).  Also used by some web-based administration panels, making it a potential target for attacks
* **2082/2083 (cPanel):** Ports commonly used by the cPanel web hosting control panel. cPanel provides a graphical interface for managing websites, emails, databases, and more. Knowing these ports helps identify servers likely running cPanel and its associated services.
* **2222 (DirectAdmin):** Another popular web hosting control panel. Similar in function to cPanel, DirectAdmin provides tools for website and server management.  Attacks may target common control panel ports like this.
* **5432 (PostgreSQL):** A robust, open-source database management system.  Like other database ports (MySQL, MSSQL), it can be a target for attacks. Configuration issues or outdated versions might have known exploits attackers use to scan for this port.
* **10000 (Webmin):** A web-based interface for system administration on Unix-like systems. Its flexibility makes it popular, but also means attackers might scan for open ports running Webmin to look for vulnerable installations.

### Security & Network Focused Ports

* **135 (MSRPC):** Microsoft Remote Procedure Call.  Used for various Windows management functions. Historically, it has suffered from security vulnerabilities, so even if not directly exposed to the internet, its presence is something that system administrators should keep a watchful eye on.
* **636 (LDAPS):** LDAP over SSL/TLS, offering a secure encrypted way to communicate with directory services. This is important when sensitive data is being stored or transmitted through the directory.
* **873 (rsync):** A powerful file synchronization and backup tool. It's famous for its efficiency – it can synchronize files even if only parts have changed, saving bandwidth and time, especially across slow network connections.
* **88 (Kerberos):** A secure network authentication protocol widely used in Windows Active Directory environments, and gaining use elsewhere. It provides mechanisms for single sign-on (SSO) and helps minimize the transmission of passwords in cleartext.
* **1812/1813 (RADIUS):** Centralized Authentication, Authorization, and Accounting (AAA) protocol. Often used to manage access to network resources (Wi-Fi, switches, etc.). Can log authentication attempts, which is useful for security monitoring.
* **512/514 (Rexec, Rlogin, Rsh):** Old, insecure remote execution and login protocols. These should absolutely not be exposed to the internet, and ideally disabled entirely on modern systems. They offer attackers an easy path into systems.
* **5900-590x (VNC):** Virtual Network Computing. Provides remote access with a graphical interface. While useful, some implementations have security weaknesses. When exposing VNC, strong passwords and access controls are a must.
* **514 (SysLog):** A standard for logging system and application messages. Often used to send logs to a centralized log server for security analysis and problem diagnosis.


**Additional Notes**

* **Registered Ports:** 1024 - 49151 
* **Well-Known Ports:** 0-1023 (reserved for essential services)
* **This is not exhaustive!** There are 65,535 possible ports.

