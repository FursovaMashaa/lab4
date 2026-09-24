#!/usr/bin/env bash
set -euo pipefail
URL="${1:-http://127.0.0.1:8000/}"
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "${URL}" || true)
if [ "${HTTP_CODE}" = "200" ]; then
    echo "OK: Service is healthy (HTTP ${HTTP_CODE})"
    exit 0
else
   echo "FAIL:Service is not healthy (HTTP ${HTTP_CODE})"
   exit 1
fi
