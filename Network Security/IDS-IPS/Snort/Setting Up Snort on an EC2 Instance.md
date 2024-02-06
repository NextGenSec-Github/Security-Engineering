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



