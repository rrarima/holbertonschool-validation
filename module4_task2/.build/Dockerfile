FROM golang:1.15.8-buster

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install necessary packages
RUN apt-get update && apt-get install -y --no-install-recommends make curl && rm -rf /var/lib/apt/lists/*

# Install Hugo
RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz | tar xz \
    && mv hugo /usr/local/bin/

# Install Nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get update && apt-get install -y --no-install-recommends nodejs \
    && npm install -g npm@7 \
    && rm -rf /var/lib/apt/lists/*

# Install Markdownlint and Markdown-link-check
RUN npm install -g markdownlint-cli@v0.26.0 \
    && npm install -g markdown-link-check@v3.8.6

# Install Golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.52.2 \
    && mv ./bin/golangci-lint /usr/local/bin/

# Install Hadolint
RUN curl -sSfL https://github.com/hadolint/hadolint/releases/download/v2.6.0/hadolint-Linux-x86_64 -o /usr/local/bin/hadolint \
    && chmod +x /usr/local/bin/hadolint
