## Registry Hives
Registry hives are high-level containers within the registry that hold keys, subkeys, and their associated values.

### HKEY_LOCAL_MACHINE (HKLM)
- **Software:** Contains settings and configurations for installed software.
- **System:** Stores system-wide settings and configurations.
- **Security:** Holds security-related information, including user rights assignments and security policies.
- **Hardware:** Contains information about installed hardware devices.
- **SAM (Security Accounts Manager):** Stores information about local user accounts.

### HKEY_CURRENT_USER (HKCU)
This hive contains the configuration information specific to the user currently logged into the system. Each user account on a Windows system has its own HKCU hive.

### HKEY_CLASSES_ROOT (HKCR)
This hive contains file association information, linking file types with the applications that can open them, as well as information about COM objects and ActiveX controls.

### HKEY_USERS
This hive contains subkeys corresponding to the user profiles that have logged into the system. Each user profile has its own subkey under this hive, containing configuration information specific to that user.

### HKEY_CURRENT_CONFIG
This hive contains information about the current hardware profile of the system.
