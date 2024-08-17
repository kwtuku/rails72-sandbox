# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
ARG RUBY_VERSION=3.3.4
FROM ghcr.io/rails/devcontainer/images/ruby:$RUBY_VERSION

# https://dev.classmethod.jp/articles/apt-get-magic-spell-in-docker/
RUN apt-get update && apt-get install -y fzf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
