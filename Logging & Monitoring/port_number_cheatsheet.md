## Port Number Cheatsheet

**Understanding Port Numbers**

* Ports are like virtual doors on a computer, allowing specific types of traffic to reach specific services.

**Common TCP Ports**

* **20 (FTP-data):** File transfer (data)
* **21 (FTP):** File transfer (control)
* **22 (SSH):** Secure remote login, file transfer (_Twice 11 = secure_)
* **3389 (RDP):** Remote Desktop (_Control a computer remotely_)
* **23 (Telnet):** Unencrypted remote login (_Avoid if possible_)
* **25 (SMTP):** Sending email (_Think of a mail carrier's uniform_)
* **53 (DNS):** Translating domain names to IPs (_Internet's phonebook_)
* **80 (HTTP):** Normal web traffic (_The basic web port_)
* **110 (POP3):** Receiving email (older)
* **143 (IMAP):** Receiving email (modern)
* **443 (HTTPS):** Secure web traffic (the 'S' is for secure) 
* **137-139 (NetBIOS):** Legacy Windows file/printer sharing (_Security risk_)
* **161/162 (SNMP):** Network device monitoring (_Like a network checkup_)
* **389 (LDAP):** Accessing directory services (company phonebooks) 
* **445 (SMB):** Modern Windows file/printer sharing
* **500 (ISAKMP):** Setting up secure connections (IPSec, VPNs)

**Common UDP Ports**

* **53 (DNS):** Same as TCP, but faster for small lookups
* **67/68 (DHCP):**  Getting IP addresses automatically 
* **69 (TFTP):** Simple file transfer (_Trivial = simple_)
* **123 (NTP):**  Synchronizing clocks 
* **546/547 (DHCPv6):**  Getting IP addresses automatically (IPv6) 
* **1701 (L2TP):**  VPN tunneling protocol

**Additional Ports**

* **631 (IPP):** Internet Printing Protocol 
* **993 (IMAPS):** Secure email receiving (IMAP over SSL/TLS)
* **995 (POP3S):** Secure email receiving (POP3 over SSL/TLS)
* **3306 (MySQL):** Popular database system
* **5800, 5900 (VNC):**  Remote desktop access (graphical)
* **1433 (MSSQL):** Microsoft SQL Server database. Attackers scan, look for weak configurations.
* **88 (Kerberos):** Network Authentiation Protocol. Used in Microsoft AD
* **111 (rpcbind):** Used for mapping RPC services to ports
* **512-514 (Rexec, Rlogin, Rsh):** Old, insecure remote execution and login (avoid!)
* **636 (LDAP over SSL/TLS):** Secure Directory Access
* **873 (rsync):** File synchronization tool
  






**Additional Notes**

* **Registered Ports:** 1024 - 49151 
* **Well-Known Ports:** 0-1023 (reserved for essential services)
* **This is not exhaustive!** There are 65,535 possible ports.

