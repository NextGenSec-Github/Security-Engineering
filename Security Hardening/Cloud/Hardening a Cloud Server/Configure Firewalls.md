# Configure Firewalls
Configuring a firewall is crucial for controlling incoming and outgoing network traffic on your server, thereby reducing the attack surface and protecting against unauthorized access. Here's how you can set up a firewall using iptables or firewalld, depending on your Linux distribution:

# Using iptables:

1. Check Current Firewall Rules: Before making any changes, it's essential to review the current firewall rules to understand the existing configuration:
```bash
sudo iptables -L
```

2. Set Default Policy: Set the default policy for incoming and outgoing traffic. By default, you should block all incoming traffic and allow all outgoing traffic:









