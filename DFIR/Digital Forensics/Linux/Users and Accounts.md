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



