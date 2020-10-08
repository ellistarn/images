# syntax=docker/dockerfile:experimental

FROM alpine:latest

# # Curl, Dig, etc
RUN apk add --no-cache \
    openssh-client \
    git \
    zsh \
    curl \
    bind-tools

# Setup ssh keys for github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# Install https://github.com/ohmyzsh/ohmyzsh
RUN sh -c \
    "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install https://github.com/ellistarn/home
RUN --mount=type=ssh sh -c \
    "$(wget https://raw.githubusercontent.com/ellistarn/home/main/bin/install-home.sh -O -)"

ENTRYPOINT zsh
