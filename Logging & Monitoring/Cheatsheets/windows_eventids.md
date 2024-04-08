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
- **Event ID 4776:** The domain controller attempted to validate the credentials for an account.
- **Event ID 4771:** This event is logged on domain controllers only and only failure instances of this event are logged ( Kerberos pre-authentication failed ).
- **Event ID 4768:** This event is logged on domain controllers only and both success and failure instances of this event are logged ( A Kerberos authentication ticket TGT ) was requested.
- **Event ID 4769:** Windows uses this event ID for both successful and failed service ticket requests ( A Kerberos service ticket was requested ).
- **Event ID 4648:** A logon was attempted using explicit credentials
- **Event ID 4724:** An attempt was made to reset an accounts password
- 
### Processes
- **Event ID 4688:** A new process has been created. Tracks process execution, a core area for malicious activity. Analyze parent-child process relationships to find suspicious process trees.
- **Event ID 1:** Process creation: The process creation event provides extended information about a newly created process. The full command line provides context on the process execution. 

### System Events
- **Event ID 7045:** A new service was installed. Can signify the presence of attacker-installed malware or tools disguised as system services.Event ID 1102: The audit log was cleared. Potentially a malicious act to hide traces of activity.
- **Event ID 104:** This event is logged when the log file was cleared.
- **Event ID 1102:** The audit log was cleared. Potentially a malicious act to hide traces of activity.
- **Event ID 4702:** Scheduled Task Created/Modified/Deleted: Backdoors might use scheduled tasks for persistence.
- **Event ID 1:** Process creation: The process creation event provides extended information about a newly created process. The full command line provides context on the process execution. 
- **Event ID 4697:** This event generates when new service was installed in the system.
- **Event ID 106:** This event is logged when the user registered the Task Scheduler task.
- **Event ID 140:** This event is logged when the time service has stopped advertising as a time source because the local machine is not an Active Directory Domain Controller.
- **Event ID 4699:** A scheduled task was deleted.
- **Event ID 141:** The time service has stopped advertising as a time source because there are no providers running.
- **Event ID 201:** This event is logged when the task scheduler successfully completed the task.

### Service Events
- **Event ID 4697:** A service was installed in the system.
- **Event ID 7045:** Created when new services are created on the local Windows machine.
- **Event ID 7034:** The service terminated unexpectedly.
- **Event ID 7036:** The Windows Firewall/Internet Connection Sharing (ICS) service entered the stopped state or , The Print Spooler service entered the running state.
- **Event ID 7040:** The start type of the IPSEC services was chnaged from disabled to auto start.

### Networking
- **Event ID 5140:** A network share object was accessed
- **Event ID 5145:** Network share object was checked to see whether client can be granted desired access.



