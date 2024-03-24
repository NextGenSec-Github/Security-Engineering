# Enable SELinux/AppArmor
SELinux (Security-Enhanced Linux) or AppArmor can provide an additional layer of security by enforcing mandatory access controls on system resources. Configure and enable SELinux or AppArmor according to your distribution's documentation.

Here's how you can implement SELinux or AppArmor on your Linux server:

## SELinux:
Check if SELinux is already enabled on your system:
```bash
sestatus
```
If SELinux is not enabled, you can install it using your package manager. On CentOS/RHEL, SELinux is typically installed and enabled by default. However, you can ensure it's installed with:
```bash
sudo yum install selinux-policy-targeted
```

To enable SELinux, edit the /etc/selinux/config file:
```bash
sudo nano /etc/selinux/semanage.conf
```

Set the SELINUX parameter to enforcing:
```bash 
SELINUX=enforcing
```
Save the changes and reboot your server for SELinux to take effect:
```bash
sudo reboot
```

