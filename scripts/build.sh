#!/usr/bin/env bash

set -x              # Print command traces before executing command
trap 'exit 1' ERR   # Exit script with error if command fails

# Set working directory to project root
cd $(dirname "${BASH_SOURCE[0]}") && cd ../

declare IMAGE_NAME="bachelorthesis/dind"

build() {
    docker build -t "$IMAGE_NAME" .
}

if [[ -z $(which docker) ]]; then
    echo "Missing docker client which is required for building."
    exit 2
fi

build