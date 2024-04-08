# Common Cyber Threats and the Corresponding Event IDs to Track

## Detecting Malware Threats
- **Event ID 4698:** This event occurs when a new scheduled task is created and it is logged on domain controllers, member servers, and workstations.
- **Event ID 4728:**  This event occurs when a new process is created. This event ID logs information such as who ran the process and what program ran the process.

## Detecting Insider Threats
- **Event ID 6416:** This event occurs when a new external device is recognized by the system.
- **Event ID 1102:** This event occurs when the audit log is cleared. The account name and domain name fields identify the user who cleared the log. Malicious insiders often clear audit logs to cover their tracks. You’ll want to know what user cleared the log, as this will be an indicator of account takeover.

## Detecting Kerberoasting Attacks
- **Event ID 4769:** This event occurs whenever a user requests access to a network resource, which results in the Key Distribution Center getting a Kerberos Ticket Granting Service (TGS) ticket request for authentication.
- **Event ID 4771:** This event occurs whenever a request for a Ticket Granting Ticket fails. It is logged on domain controllers and only for failure events.

## Detecting Brute-Force Attacks
- **Event ID 4625:** This event documents every failed attempt to log on to the local computer regardless of logon type, location of the user, or type of account.
- **Event ID 4740:** This event occurs whenever an indicated user account is locked out after repeated logon failures due to incorrect passwords. This event helps in detecting possible brute-force, dictionary, and other passwords guess attacks, which are characterized by a sudden spike in failed logons.

## Detecting Privilege Escalation
- **Event ID 4728:** This event occurs whenever a member is added to a security-enabled global group.
- **Event ID 4732:** This event occurs whenever a member is added to a security-enabled local group. It helps in detecting privilege abuse by users who are responsible for unauthorized additions.
- **Event ID 4756:** This event occurs whenever a member is added to a security-enabled universal group. It helps in detecting accidental additions.

## Detecting Backdoors
- **Event ID 4657:** If a registry key value is modified, then event ID 4657 is logged. A subtle note of importance is that it is triggered only if a key value is modified, not the key itself.




