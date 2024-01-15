#!/usr/bin/env bash

IMAGE_TAG="latest"
TIMESTAMP_TAG="$(date +%Y%m%d)"
IMAGE="ghcr.io/andrius/ruby-serverless"

docker login ghcr.io

BUILDX="$(docker buildx create)"
docker buildx use "${BUILDX}"

docker buildx build \
	--push \
	--platform "linux/amd64,linux/arm64,linux/arm/v7" \
	--pull \
	--tag "${IMAGE}:${IMAGE_TAG}" \
	--tag "${IMAGE}:${TIMESTAMP_TAG}" \
	--file ./Dockerfile \
	.
