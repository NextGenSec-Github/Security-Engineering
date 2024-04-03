## Windows EventID Cheatsheet

## Common Events
- **Event ID 4624:** An account was successfully logged on. Tracks all successful logins. Helps establish patterns, identify anomalies, and detect unauthorized access. Note: high volume can be expected.
- **Event ID 4625:** An account failed to log on. Repeated failures could signal brute force attacks or attempts to guess credentials. Investigate sources and reasons for failure.
- **Event ID 4634:** An account was logged off. Indicates the end of a user session. Useful for correlating with other activity or pinpointing the time frame of suspicious actions.

