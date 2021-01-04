#!/bin/bash

set -e -x

OUTPUT_DIR=$(pwd)/new-release
echo $OUTPUT_DIR

cd $GOPATH/src/github.com/ssun3/omgfruitapi

git config --global user.name "Susan Sun"
git config --global user.email "susansun725@gmail.com"

go build main.go
mv main $OUTPUT_DIR/release-binary

NEXT=$(date +%s)

echo "$NEXT" > $OUTPUT_DIR/name
echo "$NEXT" > $OUTPUT_DIR/tag
echo "Version $NEXT" > $OUTPUT_DIR/body

