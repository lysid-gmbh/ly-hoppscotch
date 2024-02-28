#!/usr/bin/env sh

# This script update the gitignore file in the project home directory.

. "${PROJECT_BIN_DIR}/env.sh"

echo "Updating .gitignore file in $PROJECT_DIR"

YEAR="$(date +"%Y")"
TODAY="$(date +"%Y-%m-%d")"

FILENAME="$PROJECT_DIR/.gitignore"

{
        echo "#"
        echo "# Copyright (c) 2024-$YEAR Lysid GmbH"
        echo "# Generated: $TODAY"
        echo "# Lysid project $PROJECT_NAME"
        echo "#"
        echo ".DS_Store"
        echo "temp/"
        echo "log/"
        echo "data/"
        echo "#"
        echo "# Lysid end $PROJECT_NAME"
        echo "#"
} > "$FILENAME"

curl https://www.toptal.com/developers/gitignore/api/visualstudio,visualstudiocode,pycharm,python,django,node,yarn >> "$FILENAME"
