#!/usr/bin/env bash
bash ./sh/env.sh

go get github.com/golang/lint/golint                        # Linter
go get honnef.co/go/tools/cmd/megacheck                     # Badass static analyzer/linter
go get github.com/fzipp/gocyclo
go get github.com/kardianos/govendor

bash ./sh/govendor.sh

