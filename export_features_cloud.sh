#!/bin/bash


token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" https://xray.cloud.xpand-it.com/api/v2/authenticate| tr -d '"')
curl -H "Content-Type: application/json" -X GET -H "Authorization: Bearer $token" "https://xray.cloud.xpand-it.com/api/v2/export/cucumber?keys=CALC-640;CALC-641" -o features.zip

rm -rf features/*.feature
unzip -o features.zip  -d features
