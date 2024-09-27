#!/bin/bash

echo "Let's upload a file to our bucket!"

# response portion
read -p "Paste the url of an image or pdf file: " URL
read -p "Enter your file name: " FILE_NAME

# create file for URL
curl -o "$FILE_NAME" "$URL"

# copy to AWS
aws s3 cp "$FILE_NAME" "s3://ds2022-ydp7xv/$FILE_NAME"

# create pre-signed url
PRESIGNED_URL=$(aws s3 presign "s3://ds2022-ydp7xv/$FILE_NAME" --expires-in 604800)

echo "Pre-signed URL: $PRESIGNED_URL"

# Pre-signed URL: https://ds2022-ydp7xv.s3.us-east-1.amazonaws.com/mini.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA57VDLWFCEDBUQWVI%2F20240927%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240927T035500Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=9683dba558179b2eced3151b41d12ba2dd0dbffdcca910fc02b604f7dc418c6d
 

