## Windows EventID Cheatsheet

### IAM
- **Event ID 4624:** An account was successfully logged on. Tracks all successful logins. Helps establish patterns, identify anomalies, and detect unauthorized access. Note: high volume can be expected.
- **Event ID 4625:** An account failed to log on. Repeated failures could signal brute force attacks or attempts to guess credentials. Investigate sources and reasons for failure.
- **Event ID 4634:** An account was logged off. Indicates the end of a user session. Useful for correlating with other activity or pinpointing the time frame of suspicious actions.
- **Event ID 4720:** A user account was created. Alerts you to new accounts. Check if these are authorized, as attackers may create accounts for persistence or lateral movement.
- **Event ID 4722:** A user account was enabled. Re-activated accounts might suggest an attacker returning to a previously compromised account.
- **Event ID 4725:** A user account was disabled. Scrutinize if it's an attempt to cover tracks or disrupt legitimate users.
- **Event ID 4728:** A member was added to a security-enabled global group. Monitor changes to privileged groups, as attackers often add themselves to powerful groups.
- **Event ID 4672:** Special privileges assigned to new logon. Indicates the assignment of administrative or sensitive permissions. Look for unexpected privilege escalations.
- **Event ID 4663:** An attempt was made to access an object. Shows file/folder access attempts. Helps identify sensitive data being targeted or possible exfiltration activity.

### Processes
- **Event ID 4688:** A new process has been created. Tracks process execution, a core area for malicious activity. Analyze parent-child process relationships to find suspicious process trees.
- 

### System Events
- **Event ID 7045:** A new service was installed. Can signify the presence of attacker-installed malware or tools disguised as system services.Event ID 1102: The audit log was cleared. Potentially a malicious act to hide traces of activity.
- **Event ID 104:** The system time was changed. Attackers occasionally manipulate system time to confuse investigation timelines or to disrupt time-based security controls.
- **Event ID 1102:** The audit log was cleared. Potentially a malicious act to hide traces of activity.
