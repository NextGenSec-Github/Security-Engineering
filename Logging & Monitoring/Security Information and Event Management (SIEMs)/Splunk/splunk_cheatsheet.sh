# Searches data in specific index
index=your_index_name

# Searches data from specific data source
source=your_source_name

# Searches data of specific sourcetype
sourcetype=your_sourcetype

# Searches for specific keywords or phrases
search your_keyword

# Searches data within a specific time range
earliest=your_start_time latest=your_end_time

# ===============================
# Filtering and Manipulating Data
# ===============================

# where: Filters data based on conditions.
index="security" sourcetype="firewall" | where src_ip="192.168.10.5"

# eval: Creates new fields or calculates values.
| eval new_field = expression

# stats: Performs statistical operations on data.
| stats operation(field) as new_field

# ================
# Aggregating Data
# ================

# count: Counts events.
| count

# sum: Calculates sum of numeric fields.
| stats sum(field_name) as total

# ========
# Examples
# ========

# Firewall Traffic Spikes
index=firewall sourcetype=cisco_asa action=deny 
| timechart count by src_ip
| where count>50 

# Unusual User-Agent Strings Targeting Web Assets
index=web_logs sourcetype=access_combined 
| rex field=user_agent "(?<scanner_name>Nessus|Nikto|OpenVAS|Acunetix|.*burp|.*ZAP|.*w3af)"  
| stats count by scanner_name

# Suspicious Web Requests (Generic)
index=web_logs sourcetype=access_combined
| search uri_path ="/admin*" OR uri_path="*.php" OR method="OPTIONS" 

# Identifying Brute Force Logins
index=auth sourcetype=linux_secure failed_logins>=5 within=5m 
| stats count by user, src_ip

# Unusual File Access in Sensitive Directories:
index=os sourcetype=file_monitor (path="/etc/" OR path="/var/log") 
| where action!="read" 
| stats count by user, process_name, path

# Suspicious Network Connections (Outbound)
index=firewall action=allow dest_port!=53 dest_port!=80 dest_port!=443 
| stats values(dest_ip) as suspicious_destinations by src_ip

# Excessive Data Exfiltration
index=network sourcetype=cisco_netflow bytes_out > 100000000 
| stats sum(bytes_out) as Total_Bytes by src_ip, user_id






