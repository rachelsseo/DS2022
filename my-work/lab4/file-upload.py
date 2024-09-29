#!/usr/local/bin/python3

import requests

# boto and client
import boto3
s3 = boto3.client('s3', region_name='us-east-1')

# vars
BUCKET_NAME = 'ds2022-ydp7xv' 
FILE_URL = 'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExNmZld2hpYzVyeWZnc3BhM3R2ZXdkeG5vN3FrbW4ycnBlaWp3OXpwYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/wKWxuUOcp9fdvckBty/giphy.gif'  # GIF URL
LOCAL_FILE = 'bubbles.gif'

# fetch file from internet
response = requests.get(FILE_URL)
if response.status_code == 200:
    with open(LOCAL_FILE, 'wb') as f:
        f.write(response.content)
    print("File downloaded successfully.")

# uploading file to bucket
resp = s3.put_object(
  Body = LOCAL_FILE,
  Bucket = BUCKET_NAME,
  Key = LOCAL_FILE,
  ACL= 'public-read'  # Make the object publicly readable
)

# vars needed
expires_in = 604800

presigned_url = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': BUCKET_NAME, 'Key': LOCAL_FILE},
    ExpiresIn=expires_in
    )

print(f"Pre-signed URL: {presigned_url}")

# pre-signed URL: https://ds2022-ydp7xv.s3.amazonaws.com/bubbles.gif?AWSAccessKeyId=AKIA57VDLWFCEDBUQWVI&Signature=kYL6wSDOQf56fD85olv8P39Q070%3D&Expires=1728187845
