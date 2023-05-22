#!/bin/bash

sudo apt-get update && sudo apt-get install -y make git zip

sudo curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb -o hugo.deb
sudo apt install ./hugo.deb
sudo rm hugo.deb

sudo npm install -g markdownlint-cli
sudo npm install -g markdown-link-check

sudo apt-get remove golang-go
rm -rf /usr/local/go

rm -rf dist/ 2> /dev/null