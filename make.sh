#!/bin/bash
#wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
wget https://storage.googleapis.com/golang/go1.5.2.linux-amd64.tar.gz -O go.tar.gz
docker build -t toomore/devenv .
rm -rf ./go.tar.gz
