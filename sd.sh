#!/usr/bin/env bash

export GOPATH="$HOME/project/golang/buyer_golang_api3"

export GO_FILES_IGNORE_VENDOR=$(go list ./... | grep -v /vendor/)
bash ./bash/test.sh

