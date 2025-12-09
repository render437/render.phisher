#!/bin/bash

BASE_DIR=$(realpath "$(dirname "$BASH_SOURCE")")
if [[ ! -d "$BASE_DIR/auth" ]]; then
    echo "Creating Auth Directory.."
    mkdir -p "$BASE_DIR/auth"
fi

CONTAINER="render.phisher"
IMAGE="render437/render.phisher:latest"
MOUNT_LOCATION=${BASE_DIR}/auth
check_container=$(docker ps --all --format "{{.Names}}")

if docker ps -aq -f name="${CONTAINER}" | grep -q .; then
    echo "Removing existing container ${CONTAINER}..."
    docker stop "${CONTAINER}" 2>/dev/null # Stop the container if it's running
    docker rm "${CONTAINER}" 2>/dev/null   # Remove the container
fi


echo "Creating new container..."
docker create \
    --interactive --tty \
    --volume ${MOUNT_LOCATION}:/app/auth/ \
    --network host \
    --name "${CONTAINER}" \
    "${IMAGE}"

docker start --interactive "${CONTAINER}"
