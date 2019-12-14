#!/usr/bin/env bash

DOCKER_BRANCH_TAG=${DOCKER_BRANCH_TAG-"latest"}

docker build . -t soluble/sproxy:${DOCKER_BRANCH_TAG}


if [ "${CI}" = "true" ]; then
docker push soluble/sproxy:${DOCKER_BRANCH_TAG}
fi

