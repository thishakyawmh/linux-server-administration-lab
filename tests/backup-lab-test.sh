#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
temp_dir="$(mktemp -d)"
trap 'rm -rf "$temp_dir"' EXIT

source_dir="$temp_dir/source-data"
backup_dir="$temp_dir/backups"
mkdir -p "$source_dir"
printf 'backup test fixture\n' > "$source_dir/sample.txt"

"$project_dir/01-linux-basics/scripts/backup-lab.sh" "$source_dir" "$backup_dir"

archive="$(find "$backup_dir" -maxdepth 1 -type f -name 'lab-backup-*.tar.gz' -print -quit)"
if [[ -z "$archive" ]]; then
  echo "Expected backup archive was not created" >&2
  exit 1
fi

tar -xOf "$archive" "source-data/sample.txt" | grep -Fxq 'backup test fixture'
echo "Backup script test passed."
