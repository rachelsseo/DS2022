#!/bin/bash 

yum update -y
yum upgrade -y

/usr/bin/yum install -y python3 python3-pip
/usr/bin/python3 -m pip install boto3
