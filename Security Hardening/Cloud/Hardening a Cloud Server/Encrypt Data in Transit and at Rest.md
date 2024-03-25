# Encrypt Data in Transit and at Rest

Encrypting data ensures that even if an attacker gains access to your server or intercepts network traffic, they won't be able to read sensitive information without the decryption key. Here's how you can implement data encryption on your Linux server:

## Encrypt Data in Transit:

### SSL/TLS Encryption:
To secure web traffic (HTTP) with SSL/TLS encryption, you'll need to obtain an SSL/TLS certificate from a trusted CA. Here's how you can do it using Let's Encrypt:
```bash
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx
```
Follow the prompts to generate and install the SSL certificate for your domain.

### SSH Encryption:
SSH encryption is typically enabled by default. However, ensure that SSH protocol version 2 is used for secure communication. You can verify and configure this in the SSH configuration file /etc/ssh/sshd_config.
```bash
sudo nano /etc/ssh/sshd_config
```
Ensure the following line is present and uncommented:
```bash
Protocol 2
```

### VPN Encryption:
Set up a VPN server on your Linux server using OpenVPN:
```bash
sudo apt install openvpn easy-rsa
sudo cp -r /usr/share/easy-rsa/ /etc/openvpn/
cd /etc/openvpn/easy-rsa/
sudo nano vars
```
Edit the vars file to configure your OpenVPN settings.
```bash
source ./vars
./clean-all
./build-ca
./build-key-server server
./build-dh
openvpn --genkey --secret keys/ta.key
sudo cp keys/ca.crt keys/server.crt keys/server.key keys/dh2048.pem keys/ta.key /etc/openvpn/
sudo nano /etc/openvpn/server.conf
```
Edit server.conf to configure OpenVPN settings, including encryption options and network settings.
```bash
sudo systemctl start openvpn@server
sudo systemctl enable openvpn@server
```
























