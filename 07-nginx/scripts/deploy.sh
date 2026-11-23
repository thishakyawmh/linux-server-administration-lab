#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
site_file="$project_dir/07-nginx/site/index.html"
web_root="/var/www/devops-lab"
url="http://localhost:8080/"

if [[ ! -f "$site_file" ]]; then
  echo "Site file not found: $site_file" >&2
  exit 1
fi

sudo install -d -m 0755 "$web_root"
sudo install -m 0644 "$site_file" "$web_root/index.html"
sudo nginx -t
sudo systemctl reload nginx

echo "Deployment complete. Checking $url"
curl --fail --silent --show-error "$url"
echo
