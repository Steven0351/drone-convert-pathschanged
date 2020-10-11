#!/bin/sh

# disable go modules
export GOPATH=""

# disable cgo
export CGO_ENABLED=0

set -e
set -x

# linux
GOOS=linux GOARCH=$1 go build -o release/linux/amd64/drone-convert-pathschanged
