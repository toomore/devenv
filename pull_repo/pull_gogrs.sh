#!/bin/bash
go get -v github.com/toomore/gogrs
cd $GOPATH/src/github.com/toomore/gogrs
go get -v ./...
