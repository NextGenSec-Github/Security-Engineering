# Securing SSH
SSH (Secure Shell) is a common target for attackers, so it's crucial to take steps to enhance its security. Here's how you can secure SSH on your Linux server:

## Disable SSH Root Login:
Logging in directly as the root user via SSH poses a significant security risk, as it provides full access to the system. Instead, use a regular user account to log in and then switch to the root user using sudo or su when necessary.

To disable root login via SSH, open the SSH configuration file (/etc/ssh/sshd_config) using a text editor such as nano or vi:

```bash
sudo nano /etc/ssh/sshd_config
```
Find the line that says PermitRootLogin and set its value to no:
```bash
PermitRootLogin no
```

Save the changes and exit the text editor. Then, restart the SSH service for the changes to take effect:
```bash
sudo systemctl restart sshd
```
















