# Environment variables for the project

PROJECT_DIR="$(pwd)"
export PROJECT_DIR
export PROJECT_NAME="ly-hoppscotch"
export PROJECT_BIN_DIR="$PROJECT_DIR/scripts"
export PROJECT_DATA_DIR="$PROJECT_DIR/data"
export PROJECT_LOG_DIR="$PROJECT_DIR/log"
export PROJECT_DOCKER_DIR="$PROJECT_DIR/docker"
export PROJECT_MODE="dev"
export PROJECT_SECRET_MODE="env"
export PROJECT_ONE_PASS_DB_ITEM="ly_hoppscotch_db"

if ! command -v op >/dev/null 2>&1; then
    alias op='op.exe'
fi