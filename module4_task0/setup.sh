#!/bin/bash
apt-get update && apt-get install -y make git wget zip

wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb
dpkg -i hugo_extended_0.84.0_Linux-64bit.deb
rm hugo_extended_0.84.0_Linux-64bit.deb

# sudo go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.52.2
apt-get update -y
apt-get install nodejs npm -y

npm install -g markdownlint-cli
npm install -g markdown-link-check
