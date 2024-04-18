# WINDOWS REGISTRY KEYS

# Computer Name
SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName 

# OS Version of machine
SOFTWARE\Microsoft\Windows NT\CurrentVersion

# Control Sets: The hives containing the machine’s configuration data used for controlling system startup are called Control Sets
# ControlSet001 will point to the Control Set that the machine booted with
SYSTEM\ControlSet001

# Last Known Good state of a machine
SYSTEM\Select\LastKnownGood

# Information about services
SYSTEM\CurrentControlSet\Services

# Time Zone of a machine
SYSTEM\CurrentControlSet\Control\TimeZoneInformation

# List of a machines network interfaces
SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces

# Past networks a machine was connected to
SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\Managed
SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\Unmanaged

# Autostart Programs: Programs or commands that run when a user logs on
NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Run
NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\RunOnce
SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run
SOFTWARE\Microsoft\Windows\CurrentVersion\Run

# SAM hive contains user account information, login information, and group information
SAM\Domains\Account\Users

# Recently Opened Files
NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs
# Looking for specific file exstensions
NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.pdf

# Once we open/save a file at a specific location, Windows remembers that location. 
NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePIDlMRU
NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU

# Another way to identify a user's recent activity is by looking at the paths typed in the Windows Explorer address bar or searches performed using the following registry keys, respectively.
NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths
NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery

# UserAssist: Windows keeps track of applications launched by the user using Windows Explorer for statistical purposes in the User Assist registry keys.
NTUSER.DAT\Software\Microsoft\Windows\Currentversion\Explorer\UserAssist\{GUID}\Count

# ShimCache: Is a mechanism used to keep track of application compatibility with the OS and tracks all applications launched on the machine
SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache

# AmCache: Stores additional data related to program executions
C:\Windows\appcompat\Programs\Amcache.hve
# Information about the last executed programs can be found at the following location in the hive:
Amcache.hve\Root\File\{Volume GUID}\

# Background Activty Monitor (BAM) and Desktop Activity Moderator (DAM)
# BAM
SYSTEM\CurrentControlSet\Services\bam\UserSettings\{SID}
# DAM
SYSTEM\CurrentControlSet\Services\dam\UserSettings\{SID}

# Device Identification: These locations store the vendor id, product id, and version of the USB device plugged in and can be used to identify unique devices. 
# These locations also store the time the devices were plugged into the system.
SYSTEM\CurrentControlSet\Enum\USBSTOR
SYSTEM\CurrentControlSet\Enum\USB

# Tracks the first time the device was connected, the last time it was connected and the last time the device was removed from the system.
SYSTEM\CurrentControlSet\Enum\USBSTOR\Ven_Prod_Version\USBSerial#\Properties\{83da6326-97a6-4088-9453-a19231573b29}\{####}

# The device name of the connected drive can be found at the following location:
SOFTWARE\Microsoft\Windows Portable Devices\Devices









