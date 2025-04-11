#!/bin/bash
#Author: Manasa
#Version: V1
#Created fate: 17-3-2025
#This scripts gives the details of AWS resources used / unused


#The following resource details are the outputs from this script
#AWS S3
#AWS EC2 >> giving the Instance Ids
#AWS IAM
#AWS LAMBDA

# using set -x to run in debug mode

# Redirecting the outputs to a file using > file name


set -x

echo List of S3 buckets
aws s3 ls >  ResourceTrackerOutput


echo List of EC2 instances
aws ec2 describe-instances | jq ' .Reservations[].Instances[].InstanceId ' >> ResourceTrackerOutput 

echo List of LAMBDA functions 
aws lambda list-functions >> ResourceTrackerOutput

echo list of IAM users
aws iam list-users >> ResourceTrackerOutput


