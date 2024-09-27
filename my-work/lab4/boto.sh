#!/usr/local/bin/python3

import boto3

# client or resource for boto 
s3 = boto3.client('s3', region_name='us-east-1')

# make request
response = s3.list_buckets()

# iterate through the response
# return the name(s) of any bucket(s) in account in a full JSON payload, with all results nested a single array

for r in response['Buckets']:
  print(r['Name'])

# uploading file to bucket

bucket = 'ds2022-ydp7xv'
local_file = 'project/lily.jpg'

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file
)

# make it public 
ACL = 'public-read',
