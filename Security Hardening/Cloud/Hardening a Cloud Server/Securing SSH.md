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

## Use SSH Key Authentication: 
SSH key authentication is more secure than password authentication as it eliminates the risk of brute-force attacks. Generate SSH key pairs (public and private keys) on your local machine if you haven't already done so, and then copy the public key to your server.

You can generate SSH keys using the ssh-keygen command:
```bash
ssh-keygen -t rsa -b 4096
```

Follow the prompts to generate the keys. Then, copy the public key to your server using ssh-copy-id:

```bash
ssh-copy-id username@server_ip
```
Replace username with your username on the server and server_ip with the IP address of your server.
















