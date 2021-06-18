#!/bin/bash

docker build . -t cucumber_java_tests

docker run --rm -v $(pwd)/results:/source/results -t cucumber_java_tests
