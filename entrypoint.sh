#!/bin/sh -l

echo "Generating GoTSRPC for $1"

git config --global --add safe.directory "$GITHUB_WORKSPACE"

cd "$GITHUB_WORKSPACE" || exit 1

/usr/bin/gotsrpc "$1" > /dev/null || exit 1

git checkout go.mod go.sum > /dev/null

git diff --exit-code  >> $GITHUB_OUTPUT
