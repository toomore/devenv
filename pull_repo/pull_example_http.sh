#!/bin/bash
go get -v github.com/toomore/example_http
cd $GOPATH/src/github.com/toomore/example_http
go get -v ./...
