#!/usr/local/bin/python3

#listing all buckets 

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
local_file = '/Users/rachelseo/Downloads/lily.jpg'

resp = s3.put_object(
  Body=local_file,
  Bucket=bucket,
  Key='local_file',  # Specify the key for the uploaded file
  ACL='public-read'  # Make the object publicly readable
)

print(resp)
