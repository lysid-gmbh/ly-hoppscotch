#!/usr/bin/env sh

. "$PROJECT_BIN_DIR/env.sh"

# runs a docker container database dump to the backup dir and compresses it

DATE_TIME_STR="$(date +%Y-%m-%d-%H-%M-%S)"
BACKUP_FILE_PATH="/backup/$DATE_TIME_STR-ly-stockai-db_dump.backup"
DUMP_CMD="pg_dump -U $MAIN_DB_USERNAME -F c -b -v -f $BACKUP_FILE_PATH $MAIN_DB_NAME"
GZIP_CMD="gzip $BACKUP_FILE_PATH"

docker exec -it "$PROJECT_NAME-db-1" /bin/bash -c "$DUMP_CMD && $GZIP_CMD"