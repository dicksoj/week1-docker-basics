#!/bin/bash
set -e

# Wait up to 15 seconds for the app to be ready
for i in {1..15}; do
  if curl -f http://localhost:8000/; then
    exit 0
  else
    sleep 1
  fi
done

# Fail if still not responding
exit 1
