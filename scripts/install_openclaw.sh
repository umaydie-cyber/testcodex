#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-OPENCLAW}"

if [[ -d "$TARGET_DIR/.git" ]]; then
  echo "[INFO] OPENCLAW already exists at $TARGET_DIR"
  exit 0
fi

REPOS=(
  "https://github.com/pjasicek/OpenClaw.git"
  "https://hub.fastgit.org/pjasicek/OpenClaw.git"
)

for repo in "${REPOS[@]}"; do
  echo "[INFO] Trying $repo"
  if git clone "$repo" "$TARGET_DIR"; then
    echo "[OK] Cloned OPENCLAW into $TARGET_DIR"
    exit 0
  fi
  echo "[WARN] Failed to clone from $repo"
  rm -rf "$TARGET_DIR"
done

echo "[ERROR] Could not download OPENCLAW from available mirrors."
echo "        Please check outbound HTTPS access and retry."
exit 1
