# syntax=docker/dockerfile:experimental
FROM alpine:latest

# Install APK packages
RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update
RUN apk add --no-cache \
    openssh-client \
    git \
    jq \
    zsh \
    curl \
    kubectl@testing \
    bind-tools

# Setup ssh keys for github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# Install https://github.com/ellistarn/home
RUN --mount=type=ssh sh -c \
    "$(wget https://raw.githubusercontent.com/ellistarn/home/main/bin/install-dependencies.sh -O -)"
RUN --mount=type=ssh sh -c \
    "$(wget https://raw.githubusercontent.com/ellistarn/home/main/bin/install-home.sh -O -)"
RUN find ~ | grep osx.bashrc | xargs rm

# Set default shell to Zsh
RUN sed -i 's|root:x:0:0:root:/root:/bin/ash|root:x:0:0:root:/root:/bin/zsh|' /etc/passwd

# Install AWS CLI
RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install \
        awscli \
    && rm -rf /var/cache/apk/*
