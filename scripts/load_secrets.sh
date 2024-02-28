#!/bin/sh

. "$PROJECT_BIN_DIR/env.sh"

# load db secrets from 1password
ONE_PASS_DB_OBJ="$(op item get --format 'json' "$PROJECT_ONE_PASS_DB_ITEM")"


# db name
MAIN_DB_NAME="$(echo "$ONE_PASS_DB_OBJ" | jq -r '.fields[] | select(.label == "dbname") | .value')"
export MAIN_DB_NAME

# db username
MAIN_DB_USERNAME="$(echo "$ONE_PASS_DB_OBJ" | jq -r '.fields[] | select(.id == "username") | .value')"
export MAIN_DB_USERNAME

# db password
MAIN_DB_PASSWORD="$(echo "$ONE_PASS_DB_OBJ" | jq -r '.fields[] | select(.id == "password") | .value')"
export MAIN_DB_PASSWORD
