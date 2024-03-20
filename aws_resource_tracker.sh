#!/bin/zsh

# sudo apt install awscli
##############################
# Author: Keval Panwala
# Date: 20th-March
#
# Version: V1
#
# This script will repeat the AWS resourse usage
#############################

set -x # This will run script in debug mode

# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List S3 buckets
echo "print list of s3"
aws s3 ls > resourceTracker

# List EC2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances > resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[]' > resourceTracker

# List Lambda functions
echo "print list of lambda function"
aws lambda list-functions > resourceTracker

# List IAM users
echo "print list of iam users"
aws iam list-users >> resourceTracker:q!



