#!/usr/bin/env bash
set -euo pipefail

machine="$(uname -m)"
archive="vmnet-helper-$machine.tar.gz"

curl -LOf "https://github.com/nirs/vmnet-helper/releases/latest/download/$archive"
sudo tar xvf "$archive" -C /
rm "$archive"

if [ "${SUDOERS:-0}" = "1" ]; then
  sudo install -m 0640 /opt/vmnet-helper/share/doc/vmnet-helper/sudoers.d/vmnet-helper /etc/sudoers.d/
fi
