#!/bin/bash

apt-get update && sudo apt-get install -y make git zip

apt-get install -y hugo

curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y --no-install-recommends nodejs=14.*
npm install -g npm@7

npm install -g markdownlint-cli
npm install -g markdown-link-check

# curl -L https://github.com/golangci/golangci-lint/releases/download/v1.52.2/golangci-lint-1.52.2-linux-amd64.deb -o golangci-lint.deb
# apt install ./golangci-lint.deb
# rm golangci-lint.deb