#!/bin/bash

GO_FILES_IGNORE_VENDOR=$(go list ./... | grep -v vendor)
set -e
echo "" > coverage.txt

for d in $GO_FILES_IGNORE_VENDOR; do
    go test -race -coverprofile=profile.out -covermode=atomic $d
    if [ -f profile.out ]; then
        cat profile.out >> coverage.txt
        rm profile.out
    fi
done