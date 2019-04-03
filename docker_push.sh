#!/usr/bin/env bash
IMAGE_NAME="$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG"
echo "Building docker image $IMAGE_NAME"
docker build -t "$IMAGE_NAME" .
docker push "$IMAGE_NAME"