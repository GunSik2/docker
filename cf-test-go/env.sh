#!/bin/bash 

install_path=/tmp/go

export GOPATH=$install_path
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin


mkdir -p $install_path; cd $install_path
go get -d github.com/cloudfoundry-samples/test-app
