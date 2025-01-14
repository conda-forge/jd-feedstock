#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

go build -buildmode=pie -trimpath -ldflags "-w -s -X main.revision=conda-forge" -v -o $PREFIX/bin/jd
go-licenses save . --save_path ./library_licenses
