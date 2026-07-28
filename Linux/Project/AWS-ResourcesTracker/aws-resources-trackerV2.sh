#!/bin/bash

#########################################################
#Author: Sulthan
#Date: july 28, 2026
#version: 1.0
#Purpose: this script will track the following resources
#AWS s3
#AWS Ec2
#AWS Lambda  Functions
#IAM Users
##########################################################

echo"Presenting the script in De-bug Mode"
set -x

#List the AWS s3 buckets
echo "listing all the available s3 buckets"
aws s3 ls

#List Ec2 Instances
echo "listing all the available Ec2 instances in a simple view"
aws ec2 describe-instances | more 

#List Lambda Functions
echo "Listing all tha available or in-use Lambda functions "
aws lambda list-functions

#List IAM Users
echo "Listing all the users created by the root account"
aws iam list-users
