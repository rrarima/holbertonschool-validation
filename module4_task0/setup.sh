#!/bin/bash

apt-get update && sudo apt-get install -y make git zip

curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb
apt install ./hugo.deb
rm hugo.deb

curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs

npm install -g npm@7

npm install -g markdownlint-cli@v0.26.0
npm install -g markdown-link-check@v3.8.6