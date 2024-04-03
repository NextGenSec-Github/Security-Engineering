## Port Number Cheatsheet

**Understanding Port Numbers**

* Ports are like virtual doors on a computer, allowing specific types of traffic to reach specific services.

**Common TCP Ports**

* **20 (FTP-data):** File transfer (data)
* **21 (FTP):** File transfer (control)
* **22 (SSH):** Secure remote login, file transfer (_Twice 11 = secure_)
* **23 (Telnet):** Unencrypted remote login (_Avoid if possible_)
* **25 (SMTP):** Sending email (_Think of a mail carrier's uniform_)
* **53 (DNS):** Translating domain names to IPs (_Internet's phonebook_)
* **80 (HTTP):** Normal web traffic (_The basic web port_)
* **110 (POP3):** Receiving email (older)
* **143 (IMAP):** Receiving email (modern)
* **443 (HTTPS):** Secure web traffic (the 'S' is for secure) 

**Common UDP Ports**

* **53 (DNS):** Same as TCP, but faster for small lookups
* **67/68 (DHCP):**  Getting IP addresses automatically 
* **69 (TFTP):** Simple file transfer (_Trivial = simple_)
* **123 (NTP):**  Synchronizing clocks 

**Less Common, But Good to Know**

* **3389 (RDP):** Remote Desktop (_Control a computer remotely_)

**Categorizing for Easier Memory**

* **File Transfer:** FTP (20, 21), TFTP (69)
* **Remote Access:** SSH (22), Telnet (23), RDP (3389)
* **Email:** SMTP (25), POP3 (110), IMAP (143)
* **Web:** HTTP (80), HTTPS (443)
* **Network Basics:** DNS (53), DHCP (67, 68), NTP (123)

**Additional Notes**

* **Registered Ports:** 1024 - 49151 
* **Well-Known Ports:** 0-1023 (reserved for essential services)
* **This is not exhaustive!** There are 65,535 possible ports.

