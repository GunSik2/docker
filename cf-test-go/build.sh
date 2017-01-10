#!/usr/bin/env bash

. env

echo "Compiling for linux..."
GOOS=linux GOARCH=amd64 go build .

echo "Constructing Dockerimage"
docker build -t cgshome2/cf-test-go .
docker push cgshome2/cf-test-go

echo "Cleaning up..."
rm cf-test-go
