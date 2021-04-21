#!/bin/bash

TAG=ubuntu-with-tools

docker buildx build . ${TAG}

# Multi-arch build
# docker buildx build --push --platform linux/arm64/v8,linux/amd64 -t {REGISTRY}${TAG} .