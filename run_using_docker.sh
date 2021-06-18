#!/bin/bash

docker build . -t cucumber_java_tests

docker run --rm -v $(pwd)/report.json:/source/report.json -t cucumber_java_tests
