#!/usr/bin/env sh

. "${PROJECT_BIN_DIR}/env.sh"

op inject -i "${PROJECT_DOCKER_DIR}/docker-compose.yaml" | docker-compose -f - up -d
