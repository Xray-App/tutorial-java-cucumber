#!/bin/bash

rm -f features.zip
zip -r features.zip src/test/resources/calculator/ -i \*.feature
curl -H "Content-Type: multipart/form-data" -u admin:admin -F "file=@features.zip" "http://192.168.56.102/rest/raven/1.0/import/feature?projectKey=CALC"
