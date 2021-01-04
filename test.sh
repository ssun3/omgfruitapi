#!/bin/bash

set -e -x

export GOPATH=$(pwd)/go
export PATH=$GOPATH/bin:$PATH

go get github.com/onsi/ginkgo/ginkgo
go get github.com/onsi/gomega
go get github.com/gorilla/mux

ginkgo $GOPATH/src/github.com/ssun3/omgfruitapi/fruit

$GOPATH/src/github.com/ssun3/omgfruitapi/release.sh
