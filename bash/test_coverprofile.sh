#!/bin/bash

GO_FILES_IGNORE_VENDOR=$(go list ./... | grep -v /vendor/)

go test -coverprofile=.coverprofile $GO_FILES_IGNORE_VENDOR
goveralls -coverprofile=.coverprofile -service=travis-ci -repotoken $COVERALLS_TOKEN