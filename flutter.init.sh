#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

log() {
  printf "[init] %s\n" "$1"
}

require_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    printf "Error: '%s' is required but not installed or not on PATH.\n" "$1" >&2
    exit 1
  fi
}

require_cmd flutter

log "Fetching Dart & Flutter dependencies"
flutter pub get

log "Running analyzer"
flutter analyze

if [ ! -d test ]; then
  log "Creating test/ directory"
  mkdir -p test
fi

log "Executing test suite"
flutter test

log "Initialization complete. Project is ready for local development."
