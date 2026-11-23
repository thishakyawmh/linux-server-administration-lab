#!/usr/bin/env bash
set -u

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
report_dir="$project_dir/reports"
timestamp="$(date '+%Y-%m-%d %H:%M:%S %Z')"
url="http://localhost:8080/"
report="$report_dir/nginx-health-$(date '+%Y%m%d-%H%M%S').txt"

mkdir -p "$report_dir"

if systemctl is-active --quiet nginx; then
  service_status="ACTIVE"
else
  service_status="INACTIVE"
fi

http_code="$(curl --silent --output /dev/null --write-out '%{http_code}' --max-time 5 "$url" || true)"

{
  echo "Nginx health check"
  echo "Timestamp: $timestamp"
  echo "Service: $service_status"
  echo "URL: $url"
  echo "HTTP status: ${http_code:-no response}"
} | tee "$report"

if [[ "$service_status" != "ACTIVE" || "$http_code" != "200" ]]; then
  exit 1
fi
