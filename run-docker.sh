#!/bin/bash

# make a pull request cause idk how to do this at all

if docker ps -aq -f name="${CONTAINER}" | grep -q .; then
    echo "Removing existing container ${CONTAINER}..."
    docker stop "${CONTAINER}" 2>/dev/null # Stop the container if it's running
    docker rm "${CONTAINER}" 2>/dev/null   # Remove the container
fi

BASE_DIR=$(realpath "$(dirname "$BASH_SOURCE")")
if [[ ! -d "$BASE_DIR/auth" ]]; then
    echo "Creating Auth Directory.."
	mkdir -p "$BASE_DIR/auth"
fi

CONTAINER="render.phisher"
IMAGE="render437/render.phisher:latest"
IMG_MIRROR="ghcr.io/render437/render.phisher:latest"
MOUNT_LOCATION=${BASE_DIR}/auth
check_container=$(docker ps --all --format "{{.Names}}")

if [[ ! $check_container == $CONTAINER ]]; then
	echo "Creating new container..."
	docker create \
		--interactive --tty \
		--volume ${MOUNT_LOCATION}:/render.phisher/auth/ \
		--network host \
		--name "${CONTAINER}" \
		"${IMAGE}"
fi

docker start --interactive "${CONTAINER}"

# docker run --rm -ti --network="host" -v ${MOUNT_LOCATION}:/render.phisher/auth/ --name "$CONTAINER" "$IMAGE"
