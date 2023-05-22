#!/bin/bash

apt-get update && sudo apt-get install -y make git zip

curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb
apt install ./hugo.deb
rm hugo.deb

curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y --no-install-recommends nodejs=14.*
npm install -g npm@7

npm install -g markdownlint-cli
npm install -g markdown-link-check

apt-get remove golang-go
rm -rf /usr/local/go

rm -rf dist/ 2> /dev/null