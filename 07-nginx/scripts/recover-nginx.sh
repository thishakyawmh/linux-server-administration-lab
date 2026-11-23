#!/usr/bin/env bash
set -euo pipefail

if systemctl is-active --quiet nginx; then
  echo "Nginx is already active."
else
  echo "Nginx is inactive. Attempting to start it..."
  sudo systemctl start nginx
fi

if systemctl is-active --quiet nginx; then
  echo "Recovery check passed: Nginx is active."
else
  echo "Recovery failed: Nginx is still inactive." >&2
  exit 1
fi
