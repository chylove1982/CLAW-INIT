#!/usr/bin/env bash
set -euo pipefail

# 简化版安装：假设已在仓库内
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "$SCRIPT_DIR/setup.sh" "${1:-$(pwd)}"
