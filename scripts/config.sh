#!/usr/bin/env bash

pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}

filesize () {
  wc -c < "$1" | xargs
}

pushd .

cd "$(dirname "${BASH_SOURCE[0]}")"; cd ..

ROOT=`pwd`
PROJECT_VERSION_FILE="src/lib/devtools/version.clj"
PROJECT_FILE="project.clj"
CACHE_DIR="$ROOT/.cache"
DCE_CACHE_DIR="$CACHE_DIR/dce"
DCE_COMPARE_DIR="$CACHE_DIR/dce-compare"
SKIP_DCE_COMPILATION=${SKIP_DCE_COMPILATION}

popd
