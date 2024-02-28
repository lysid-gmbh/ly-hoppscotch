#!/usr/bin/env sh

. "$PROJECT_BIN_DIR/env.sh"

# runs a db console in the db docker container

docker exec -it "$PROJECT_NAME-db-1" psql -U "${MAIN_DB_USERNAME}" -d "${MAIN_DB_NAME}" "$@"