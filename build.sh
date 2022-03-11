#!/usr/bin/env bash

mkdir bats-helpers

git clone https://github.com/ztombol/bats-support bats-helpers/bats-support
git clone https://github.com/ztombol/bats-assert bats-helpers/bats-assert
git clone https://github.com/lox/bats-mock bats-helpers/lox-bats-mock

IMAGE_NAME='bats-runner'
REPOSITORY_NAME='bats'
ORGANIZATION='tomclement'
REGISTRY="ghcr.io/$ORGANIZATION/$REPOSITORY_NAME"
VERSION=$(git rev-parse --short HEAD)
IMAGE_TAG_GITHUB="$REGISTRY/$IMAGE_NAME:$VERSION"

DOCKER_BUILDKIT=1 docker build -t "$IMAGE_TAG_GITHUB" -f Dockerfile . --progress=plain
docker push "$IMAGE_TAG_GITHUB"
