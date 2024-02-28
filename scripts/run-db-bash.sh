#!/usr/bin/env sh

. "$PROJECT_BIN_DIR/env.sh"

# runs a bash console in the db docker container

docker exec -it "$PROJECT_NAME-db-1" /bin/bash