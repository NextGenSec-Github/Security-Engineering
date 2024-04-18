# User Accounts (/etc/passwd)
The /etc/passwd file is a fundamental system file in Unix-like operating systems, including Linux. It stores essential information about user accounts on the system. Each line in the file represents a user account and is formatted with several fields separated by colons (:). Here's a typical structure of a line in /etc/passwd:

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

# Groups
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
