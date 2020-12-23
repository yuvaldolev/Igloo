#!/bin/bash

# Setup Paths.
SCRIPT_PATH=$(realpath "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")

IGLOO_DIR="$SCRIPT_DIR/igloo"
SRC_DIR="$IGLOO_DIR/src"
INCLUDE_DIR="$IGLOO_DIR/include"

BUILD_DIR="$SCRIPT_DIR/build"

# Make the build directory if it doesn't already exist.
mkdir -p $BUILD_DIR

# Build Igloo.
clang -g -std=c17 -I"$INCLUDE_DIR" "$SRC_DIR/main.c" -o "$BUILD_DIR/igloo"
