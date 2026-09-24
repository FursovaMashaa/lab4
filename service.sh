#!/usr/bin/env bash
set -euo pipefail
PORT="${PORT:-8000}"
DIR="/opt/lab4-service/html"
echo "Starting HTTP server on port ${PORT}, serving ${DIR}"
cd "${DIR}"
exec python3 -m http.server "${PORT}"
