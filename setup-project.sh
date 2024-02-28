#!/bin/sh

# This script setup the project environment in the current terminal.
. "./scripts/env.sh"

echo "$PROJECT_NAME project environment setup in $PROJECT_DIR"

# if PATH_OLD not set, save PATH to PATH_OLD
if [ -z "$PATH_OLD" ]; then
	export PATH_OLD="$PATH"
fi

# append PROJECT_BIN_DIR to PATH
export PATH="$PATH:$PROJECT_BIN_DIR"

# create data directory when not exists
if [ ! -d "$PROJECT_DATA_DIR" ]; then
	mkdir "$PROJECT_DATA_DIR"
fi

# create log directory when not exists
if [ ! -d "$PROJECT_LOG_DIR" ]; then
  mkdir "$PROJECT_LOG_DIR"
fi

. "./scripts/load_secrets.sh"