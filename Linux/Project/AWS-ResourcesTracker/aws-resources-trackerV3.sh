#!/bin/bash
#########################################################
# Author: Sulthan
# Date: July 28, 2026
# Version: 1.1
# Purpose: This script tracks the following AWS resources:
#   - AWS S3 Buckets
#   - AWS EC2 Instances
#   - AWS Lambda Functions
#   - IAM Users
##########################################################

set -euo pipefail   # exit on error, undefined var, or failed pipe

echo "Presenting the script in Debug Mode"
set -x

# List the AWS S3 buckets
echo "Listing all the available S3 buckets"
aws s3 ls

# List EC2 Instances (just the Instance IDs)
echo "Listing all EC2 instance IDs"
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId'

# List Lambda Functions (just the function names)
echo "Listing all Lambda function names"
aws lambda list-functions | jq -r '.Functions[].FunctionName'

# List IAM Users (just the usernames)
echo "Listing all IAM usernames"
aws iam list-users | jq -r '.Users[].UserName'

set +x
echo "Resource tracking complete."
