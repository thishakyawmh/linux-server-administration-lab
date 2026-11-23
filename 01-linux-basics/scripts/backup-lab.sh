#!/usr/bin/env bash
set -euo pipefail

source_dir="${1:-$HOME/devops-lab-data}"
backup_dir="${2:-$HOME/devops-lab-backups}"

if [[ ! -d "$source_dir" ]]; then
  echo "Source directory does not exist: $source_dir" >&2
  exit 1
fi

mkdir -p "$backup_dir"
timestamp="$(date +%Y%m%d-%H%M%S)"
archive="$backup_dir/lab-backup-$timestamp.tar.gz"

tar -czf "$archive" -C "$(dirname "$source_dir")" "$(basename "$source_dir")"
tar -tzf "$archive" >/dev/null

echo "Backup created and verified: $archive"
