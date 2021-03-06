#!/bin/bash

set -e -o pipefail


echo "Shutting down Browserstack tunnel"

pkill BrowserStack

while [[ -n `ps -ef | grep "BrowserStackLocal" | grep -v "grep"` ]]; do
  printf "."
  sleep .5
done

echo ""
echo "Browserstack tunnel has been shut down"
