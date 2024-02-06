# | SNORT COMMAND CHEATSHEET |

#NOTE: These are default locations for snort logs, config files, and rules:
# /var/log/snort — is the default location of the log file
# /etc/snort/snort.conf — default location of the configuration file
# /etc/snort/rules/local.rules — default location of the local rules

sudo snort -A full -r my.pcap -c local.rules -l . #Investigating a pcap file

sudo snort -r ,snort.log.file> #reading dumped log file

sudo snort -r snort.log.1688562201 -n 65 # Read a log file with a certain threshold of logs

sudo nano local.rules #editing the local rule with a text editor, nano

cat alert # reading the contents of the alert file

sudo rm alert #deleting the alert file

sudo rm <snort.log.file> #deleting the log file
