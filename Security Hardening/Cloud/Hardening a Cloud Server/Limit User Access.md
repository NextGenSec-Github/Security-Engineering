# Limit User Access

## Create Separate User Accounts
Instead of using the root account for day-to-day tasks, create separate user accounts for each individual who needs access to the server. Assign appropriate permissions to these accounts based on the principle of least privilege, giving users only the access they need to perform their specific roles.

To create a new user account, you can use the adduser command:
```bash
sudo adduser username
```
Replace username with the desired username for the new account. Follow the prompts to set a password and additional information for the user.


## Grant sudo Privileges
Users who require administrative privileges to perform certain tasks can be granted sudo access. This allows them to execute commands with root privileges while still using their regular user accounts.

To grant sudo privileges to a user, add the user to the sudo group:
```bash
sudo usermod -aG sudo username
```
Replace username with the username of the user you want to grant sudo access to.

## Disable Password Authentication for sudo
For added security, you can configure sudo to require users to authenticate using their own passwords (rather than the root password) when executing commands with sudo. This helps audit sudo usage and prevents unauthorized users from gaining root access.

Edit the sudoers file using the visudo command:
```bash
sudo visudo
```
Look for the line that starts with %sudo and ensure that the NOPASSWD option is not set:
```bash
%sudo   ALL=(ALL:ALL) ALL
```
If you find any lines with NOPASSWD, remove that option to require password authentication.

## Disable Unused User Accounts
Disable any user accounts that are no longer needed to reduce the potential attack surface. This includes default system accounts and any accounts associated with former employees or users who no longer require access.

You can disable a user account using the usermod command:
```bash
sudo usermod --expiredate 1 username
```
Replace username with the username of the account you want to disable.

## Implement Multi-Factor Authentication (MFA)
Consider implementing multi-factor authentication for user accounts, especially for accounts with elevated privileges. MFA adds an extra layer of security by requiring users to provide additional verification, such as a one-time code from a mobile app or a hardware token, in addition to their password.

By following these steps, you can better control user access on your server and mitigate the risk of unauthorized access or misuse of privileges. Regularly review user accounts and permissions to ensure they remain aligned with the principle of least privilege and your organization's security policies.





















