#!/bin/bash

FEATURES_FILE=features.zip

rm -f $FEATURES_FILE
curl -u admin:admin  "http://192.168.56.102/rest/raven/1.0/export/test?keys=CALC-7931;CALC-7935&fz=true" -o $FEATURES_FILE
rm -f features/*.feature
unzip -o $FEATURES_FILE  -d features
