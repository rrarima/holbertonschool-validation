#!/bin/bash
apt-get update && apt-get install -y make wget

wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
tar -zxvf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin/
rm hugo_extended_0.84.0_Linux-64bit.tar.gz

curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs

npm install -g npm@7

npm install -g markdownlint-cli@v0.26.0
npm install -g markdown-link-check@v3.8.6