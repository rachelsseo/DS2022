#!/usr/local/bin/python3

# imports
import os
import json
import requests

# retrieve GITHUB_USER
GHUSER = os.getenv('GITHUB_USER')

# url for user account
url='https://api.github.com/users/{0}/events'.format(GHUSER)

# first 5 responses for recent GitHub activity
r = json.loads(requests.get(url).text)

for x in r[:5]:
  event = x['type'] + ' :: ' + x['repo']['name']
  print(event)

