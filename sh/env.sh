#!/usr/bin/env bash

export GO_FILES=$(find . -iname '*.go' -type f | grep -v /vendor/) # All the .go files, excluding vendor/
export GO_FILES_TEST=$(go list ./... | grep -v /vendor/) # All the .go files, excluding vendor/