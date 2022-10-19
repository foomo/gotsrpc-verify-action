#!/bin/sh -l

echo "Generating GoTSRPC for $1"

/usr/bin/gotsrpc > /dev/null

git checkout go.mod go.sum > /dev/null

git diff --exit-code  >> $GITHUB_OUTPUT
