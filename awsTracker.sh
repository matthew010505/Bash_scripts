#!/bin/bash

###############################
# Author : Matthew
# Date : 17-05-2024
#
# Version: v1
#
# This Script will Report the AWS resource usage
###############################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x


# list S3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list EC2 Instance
echo "print list of ec2 instances"
aws ec2 describe-instances

#list lambda
echo "print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "print list of IAM users"
aws iam list-users

