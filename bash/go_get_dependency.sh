#!/bin/bash

go get github.com/golang/lint/golint                        # Linter
go get honnef.co/go/tools/cmd/megacheck                     # Badass static analyzer/linter
go get github.com/fzipp/gocyclo
go get github.com/mattn/goveralls                           # https://github.com/mattn/goveralls