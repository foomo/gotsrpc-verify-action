#!/bin/sh -l

echo "Generating GoTSRPC for $1"

git config --global --add safe.directory "$GITHUB_WORKSPACE"

cd "$GITHUB_WORKSPACE" || exit

/usr/bin/gotsrpc "$1" > /dev/null

git checkout go.mod go.sum > /dev/null

git diff --exit-code  >> $GITHUB_OUTPUT
