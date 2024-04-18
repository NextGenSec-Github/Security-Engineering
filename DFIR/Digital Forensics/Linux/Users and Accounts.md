## User Accounts (/etc/passwd)
The `/etc/passwd` file is a fundamental system file in Unix-like operating systems, including Linux. It stores essential information about user accounts on the system. Each line in the file represents a user account and is formatted with several fields separated by colons (:). Here's a typical structure of a line in /etc/passwd:

```bash
username:password:UID:GID:GECOS:home_directory:login_shell
```
| Field            | Description                                                                                                      |
|------------------|------------------------------------------------------------------------------------------------------------------|
| username         | The login name of the user.                                                                                      |
| password         | Historically, this field used to store the encrypted password of the user. However, modern Linux systems store an 'x' character here, indicating that the actual password is stored in the /etc/shadow file for security reasons. |
| UID              | User ID, a numerical identifier for the user.                                                                    |
| GID              | Group ID, the primary group ID of the user.                                                                      |
| GECOS            | General Electric Comprehensive Operating System (GECOS) field, traditionally used to store additional information about the user, such as the user's full name and other details. |
| home_directory   | The user's home directory, where they are placed upon login.                                                     |
| login_shell      | The default shell for the user, which determines the command interpreter environment when the user logs in.     |

## Groups Information (/etc/group)
The `/etc/group` stores information about groups on the system, including group names and their associated group IDs (GIDs), as well as the list of users who belong to each group. Similar to /etc/passwd, each line in /etc/group represents a group and is formatted with several fields separated by colons (:). Here's the typical structure of a line in /etc/group:
```bash
group_name:password:GID:user_list
```
| Field        | Description                                                                                                      |
|--------------|------------------------------------------------------------------------------------------------------------------|
| group_name   | The name of the group.                                                                                           |
| password     | Historically, this field used to store the encrypted group password. However, it's rarely used nowadays, and an 'x' character is typically placed here to indicate that the actual password is stored in the /etc/gshadow file. |
| GID          | The numerical Group ID, a unique identifier for the group.                                                       |
| user_list    | A comma-separated list of usernames that are members of the group.                                                |

## Sudoers List (/etc/sudoers)
The `/etc/sudoers`controls who can run what commands as root (or as any other user) on a system with the sudo command. The sudo command allows a permitted user to execute a command as the superuser (root) or another user, as specified in the /etc/sudoers file. The /etc/sudoers file can be edited only by users with root privileges and should be modified with care to avoid inadvertently granting excessive permissions. The file uses a specific syntax that allows specifying rules and configurations for sudo access.

```sql
# User privilege specification
root    ALL=(ALL:ALL) ALL

# Members of the admin group may gain root privileges
%admin  ALL=(ALL) ALL

# Allow members of group sudo to execute any command
%sudo   ALL=(ALL:ALL) ALL

# Allow users in wheel group to execute any command
%wheel  ALL=(ALL) ALL

# Allow user john to execute /bin/ls as root without a password
john    ALL=(ALL) NOPASSWD: /bin/ls
```

**In this example:**
- The first line grants the user root full privileges on all hosts.
- The %admin, %sudo, and %wheel lines grant members of those groups full privileges.
- The last line allows the user john to execute the /bin/ls command as root without being prompted for a password.

## Login Information (/var/log/...)
In the /var/log directory, we can find log files of all kinds including wtmp and btmp.
- **/var/log/btmp:** Records failed login attempts on the system. Each failed login attempt is logged in this file, along with information such as the username, source IP address, and timestamp of the attempt. May have this kind of format:
```bash
[timestamp] [source_ip] [username]
```
- **/var/log/wtmp:** Records all user login and logout activity on the system. Each time a user logs in or out, an entry is made in this file, containing information such as the username, login/logout time, terminal name, and more. The /var/log/wtmp file is useful for tracking user activity on the system, including login times, session durations, and terminal usage. Here's an example of what you might see when using the last command to view the contents of the /var/log/wtmp file:
```bash
username  pts/1        Mon Apr 18 09:30   still logged in
username  pts/0        Mon Apr 18 09:20   still logged in
username  tty1         Mon Apr 18 09:10   still logged in
```

## Authentication logs (/var/log/auth.log)
The `/var/log/auth.log`contains records related to authentication events on the system, such as login attempts, authentication failures, and other security-related activities. Here are some typical entries within this file:
```bash
Apr 19 10:25:34 hostname sshd[1234]: Accepted publickey for user from 192.168.1.100 port 12345 ssh2
Apr 19 10:30:12 hostname sudo: pam_unix(sudo:session): session opened for user root by (uid=0)
Apr 19 10:35:21 hostname sshd[5678]: Failed password for invalid user admin from 203.0.113.10 port 54321 ssh2
```
**In this example:**
- The first line indicates a successful SSH login using public key authentication.
- The second line shows the opening of a sudo session for the root user.
- The third line records a failed SSH login attempt with a password for a non-existent user (admin).



