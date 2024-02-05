# What is Snort? 🐽

Snort, developed by Sourcefire, is a powerful open-source Intrusion Detection and Prevention System (IDPS) that plays a pivotal role in enhancing network security. It provides real-time traffic analysis, packet logging, and signature-based detection to identify and prevent a wide range of security threats.

## Key Features

### 1. **Packet Sniffing:**
   - **Description:** Snort captures and analyzes network packets in real-time, offering deep visibility into network traffic.
   - **Example:** 
     ```bash
     snort -q -c /etc/snort/snort.conf -A console
     ```
     This command initiates Snort in packet sniffing mode, where it reads the configuration file (`snort.conf`) and displays alerts to the console.

### 2. **Signature-Based Detection:**
   - **Description:** Snort uses a signature-based detection engine to identify known patterns of malicious activity within the network traffic.
   - **Example Rule:**
     ```plaintext
     alert tcp any any -> any 80 (content:"GET /malicious-page"; msg:"Potential Web Exploit Detected";)
     ```
     In this example, the rule alerts when it detects the string "GET /malicious-page" in the payload of a TCP packet destined for port 80.

### 3. **Protocol Analysis:**
   - **Description:** Snort analyzes network protocols at the application layer, allowing for the detection of suspicious behavior and anomalies.
   - **Example Rule:**
     ```plaintext
     alert udp any any -> any 53 (msg:"DNS Query Detected"; content:"|00 01 00 00 00 01|";)
     ```
     This rule triggers an alert when Snort detects a DNS query in a UDP packet.

### 4. **Logging and Alerting:**
   - **Description:** Snort generates detailed logs of network activity and issues alerts when it identifies potential security threats based on predefined rules.
   - **Example Configuration:**
     ```plaintext
     output alert_fast: alert.ids
     ```
     This configuration directs Snort to log alerts to a fast alert file (`alert.ids`).

### 5. **Rule-Based Configuration:**
   - **Description:** Snort uses a rule-based language to define specific conditions and actions for detecting and responding to network events.
   - **Example Rule:**
     ```plaintext
     alert tcp any any -> any any (msg:"Possible SQL Injection Attempt"; content:"'; DROP TABLE"; nocase;)
     ```
     This rule alerts on a potential SQL injection attempt when it detects the string "'; DROP TABLE" in a TCP packet payload.

### 6. **Flexible Deployment:**
   - **Description:** Snort can be deployed in various modes, including sniffer mode, packet logger mode, and network intrusion detection system (NIDS) mode.
   - **Example Deployment:**
     ```bash
     snort -q -c /etc/snort/snort.conf -A fast -q -i eth0
     ```
     In this example, Snort is deployed in NIDS mode, reading the configuration file and listening on the `eth0` interface.

## Components of Snort

### 1. **Sniffer:**
   - Captures and logs network traffic for analysis.
   - **Example:**
     ```bash
     snort -q -A console -q -i eth0
     ```
     Initiates Snort as a packet sniffer, displaying alerts to the console for traffic on the `eth0` interface.

### 2. **Packet Logger:**
   - Stores captured packets for later analysis.
   - **Example:**
     ```bash
     snort -q -A unified -q -c /etc/snort/snort.conf -r captured_packets.pcap
     ```
     This command directs Snort to read a saved packet capture file (`captured_packets.pcap`) and log alerts in unified format.

### 3. **Detection Engine:**
   - Implements the signature-based detection mechanism to identify known threats.
   - **Example:**
     ```plaintext
     alert icmp any any -> any any (msg:"ICMP Echo Request Detected"; sid:100001;)
     ```
     This rule triggers an alert when Snort detects an ICMP Echo Request.

### 4. **Preprocessors:**
   - Modify or preprocess packets before analysis, enhancing the accuracy of detection.
   - **Example Configuration:**
     ```plaintext
     preprocessor stream5_global: track_tcp yes, \
                                 track_udp yes, \
                                 track_icmp yes
     ```
     Configures the Stream5 preprocessor to track TCP, UDP, and ICMP traffic.

### 5. **Output Modules:**
   - Present alerts and logs in various formats, such as syslog, JSON, or database formats.
   - **Example Configuration:**
     ```plaintext
     output log_syslog: LOG_AUTH LOG_ALERT
     ```
     Sends Snort alerts to the syslog facility LOG_AUTH with severity LOG_ALERT.

## Rule Structure
![](https://github.com/NextGenSec-Github/Security-Engineering/assets/142174128/21a05d36-4d53-4e97-80fe-14404f769fd3)

A Snort rule follows a specific structure:

```plaintext
action protocol source_ip/source_port -> destination_ip/destination_port (options)
```

**Action:** Specifies the action to take when the rule matches (e.g., alert, log, drop).

**Protocol:** Defines the network protocol being monitored (e.g., TCP, UDP).

**Source/Destination IP and Port:** Specifies the source and destination addresses and ports.

**Options:** Additional parameters and conditions for rule matching.

# Use Cases

1. **Intrusion Detection:**
   Snort identifies and alerts on suspicious network activity, helping to detect and respond to potential security incidents.
   
   **Example Rule:**
   ```plaintext
   alert tcp any any -> any 22 (msg:"SSH Brute Force Attempt"; content:"Failed password";)

