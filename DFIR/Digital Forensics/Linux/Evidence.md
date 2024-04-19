## Sudo Execution History
All the commands that are run on a Linux host using sudo are stored in the auth log. We can use the `grep` utility to filter out only the required information from the auth log.

## Bash History (~/.bash_history)
The `~/.bash_history` file is a hidden file located in the user's home directory (~). It stores a history of commands that have been entered by the user in the Bash shell. Each line in the file typically represents a command that was executed in a previous session.

The Bash history file is managed by the shell itself, which automatically appends new commands to the file as they are entered. By default, the history file retains a certain number of recent commands, as specified by the `HISTSIZE` and `HISTFILESIZE` environment variables.

## Files Accessed Using Vim (~/.viminfo)
The /.viminfo file is a hidden file located in the user's home directory (~). It is used by the Vim text editor to store various information about Vim sessions, such as the history of commands, search patterns, marks, and other settings.
Here's an example of what you might find in a ~/.viminfo file:
```bash
# This is a Viminfo file!
'1000  1  4
>  % 
/Pattern
```

**In this example:**

- The first line is a comment indicating that this is a Viminfo file.
  
- The subsequent lines contain information about the Vim session, such as the last cursor position ('1000 1 4), the current file (%), and the last search pattern (/Pattern).
