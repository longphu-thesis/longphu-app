#!/bin/bash

GO_FILES_IGNORE_VENDOR=$(go list ./... | grep -v /vendor/)

# go test -v -race ./..

# Run all the tests with the race detector enabled
go test -v -race  $GO_FILES_IGNORE_VENDOR
      # all tag
go test -v -tags all -race  $GO_FILES_IGNORE_VENDOR
      # tag feature1
go test -v -tags feature1 -race $GO_FILES_IGNORE_VENDOR
      # tag feature2
go test -v -tags feature2 -race $GO_FILES_IGNORE_VENDOR
      # tag feature1 & feature2
go test -v -tags="feature1 feature2" -race $GO_FILES_IGNORE_VENDOR
      # specific tests by name like
go test -v -run="(A|B)1" -race $GO_FILES_IGNORE_VENDOR
      # specific tests by name like
go test -v -run="D1" -race $GO_FILES_IGNORE_VENDOR
