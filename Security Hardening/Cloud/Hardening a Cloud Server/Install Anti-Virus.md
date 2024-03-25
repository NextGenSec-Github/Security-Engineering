# Installation and Configuration of ClamAV Antivirus 
ClamAV is an open-source antivirus engine designed for detecting viruses, malware, and other malicious threats on Linux systems. 

## Step 1: Update Package Repository
Before installing ClamAV, update the package repository to ensure you install the latest version available:
```bash
sudo yum update
```
## Step 2: Install ClamAV
Install ClamAV and its dependencies using the package manager:

```bash
sudo yum install clamav clamav-update clamd
```

## Step 3: Configure ClamAV
### Update Virus Definitions
Update ClamAV virus definitions to ensure it can detect the latest threats:
```bash
sudo freshclam
```

### Configure Scanning Options
Edit the ClamAV configuration file /etc/clamd.d/scan.conf to configure scanning options:

```bash
sudo nano /etc/clamd.d/scan.conf
```
Example configuration:

```bash
# Set scanning options
ScanMail yes
ScanArchive yes
ArchiveBlockEncrypted no
ArchiveMaxFileSize 50M
ArchiveMaxRecursion 5
MaxScanSize 100M
```
### Configure File Locations
Edit the ClamAV configuration file /etc/clamd.d/scan.conf to specify the directories to be scanned:
```bash
sudo nano /etc/clamd.d/scan.conf
```

Example configuration:
```bash
# Set directories to be scanned
ScanPath /path/to/directory1
ScanPath /path/to/directory2
```

## Step 4: Start ClamAV Daemon
Start the ClamAV daemon to enable real-time scanning:
```bash
sudo systemctl start clamd
sudo systemctl enable clamd
```

## Step 5: Test ClamAV
Verify that ClamAV is running correctly and can detect threats:
```bash
sudo systemctl status clamd
```
Run a manual scan on a specific directory:
```bash
sudo clamscan -r /path/to/directory
```

## Step 6: Schedule Regular Updates
Schedule regular updates of ClamAV virus definitions using cron or systemd timers:

```bash
sudo crontab -e
```

Add the following line to update virus definitions daily:
```bash
0 0 * * * /usr/bin/freshclam --quiet
```

By following these steps, you have successfully installed and configured ClamAV antivirus software on your server. Regular updates of virus definitions and scheduled scans will help protect your system from malware and other security threats.

