#!/bin/bash
#wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
wget https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz
docker build -t toomore/devenv .
