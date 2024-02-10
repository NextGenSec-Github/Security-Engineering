# Setting Up Snort on an EC2 Instance

## Introduction

This guide will walk you through the process of setting up Snort, an open-source network intrusion detection system (NIDS), on an EC2 (Elastic Compute Cloud) instance running Ubuntu. Snort helps in detecting and preventing various types of attacks such as port scans, buffer overflows, and stealth port scans.

## Prerequisites

- Before getting started, ensure you have the following:

- An AWS account with access to create and manage EC2 instances.

## Step 1: Launch an EC2 Instance

1. Log in to your AWS Management Console.

2. Navigate to the EC2 dashboard.

3. Click on "Launch Instance" and select Ubuntu Server as the Amazon Machine Image (AMI).

4. Choose an instance type (e.g., t2.micro), configure instance details, add storage, and configure security group settings.

5. Make sure to open necessary ports (e.g., SSH (Port 22), HTTP (Port 80)) in the security group settings to allow traffic to Snort. Make sure your instance is being deployed into the default subnet or any public subnet, since we will be using instance connect. Also ensure `Auto-assign public IP` is enabled.

6. Review and launch the instance.

## Step 2: Connect to the EC2 Instance with EC2 Instance Connect

1. Once the instance is running, right click on it and click connect.

2. The ec2 instance connect page should pop up and your username should be set to ubuntu

3. Finally click the orange `connect` button

NOTE: If you are having errors connecting, check your instance's security group and ensure it has a public ip

## Step 3: Install Snort

1. Update the package repository:
```bash
sudo apt update
```

2. Install Snort using the following command:
```bash
sudo apt install -y snort
```

3. During the installation process, you will be prompted to configure the Snort package and any network settings, just press enter for now, as these settings are always configurable in /etc/snort.conf . Choose the appropriate configuration options based on your requirements.

4. Confirm the installation by checking the Snort version:
```bash
snort -V
```

## Step 4: Configure Snort

1. Navigate to the Snort configuration directory:

```bash
cd /etc/snort/
```

2. Edit the snort.conf configuration file using a text editor:

```bash
sudo nano snort.conf
```

3. Configure Snort rules and options according to your requirements. Ensure to enable rules for the types of attacks you want to detect.

4. Save the changes and exit the text editor. ctrl+o = save, ctrl+x = exit

## Step 5: Start Snort

1. Start the Snort service:
```bash
sudo systemctl start snort
```

## Step 6: Verify Snort Installation

1. Check the Snort status to ensure it's running without errors:

```bash
sudo systemctl status snort
```

2. Test Snort by generating some network traffic or using Snort's test rules.

# Conclusion
You have successfully set up Snort on an Ubuntu EC2 instance. You can now monitor network traffic for potential security threats. Make sure to regularly update Snort rules and review logs for any suspicious activity.

This documentation provides a basic setup for Snort. Depending on your specific use case and requirements, you may need to further customize the configuration and ruleset. Refer to the Snort documentation for more advanced configurations and usage scenarios.














