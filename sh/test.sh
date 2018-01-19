#!/usr/bin/env bash

# Run all the tests with the race detector enabled
go test -v -race  GO_FILES_TEST
      # all tag
go test -v -tags all -race  GO_FILES_TEST
      # tag feature1
go test -v -tags feature1 -race  GO_FILES_TEST
      # tag feature2
go test -v -tags feature2 -race  GO_FILES_TEST
      # tag feature1 & feature2
go test -v -tags="feature1 feature2" -race  GO_FILES_TEST