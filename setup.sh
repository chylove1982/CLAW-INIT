#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-$(pwd)}"

print() { printf "%s\n" "$*"; }

print "[CLAW-INIT] 目标目录: $TARGET_DIR"

if [ ! -w "$TARGET_DIR" ]; then
  print "[CLAW-INIT] 无法写入目标目录"
  exit 1
fi

copy_if_missing() {
  local src="$1"
  local dst="$2"
  if [ -e "$dst" ]; then
    print "[SKIP] $dst 已存在"
    return 0
  fi
  mkdir -p "$(dirname "$dst")"
  cp "$src" "$dst"
  print "[OK] 复制 $dst"
}

# 拷贝模板
find "templates" -type f | while read -r file; do
  rel="${file#templates/}"
  copy_if_missing "$file" "$TARGET_DIR/$rel"
  done

print ""
print "[CLAW-INIT] 初始化完成。建议下一步："
print "1) 补全 .openclaw/SOUL.md 与 USER.md"
print "2) 根据项目填写 docs/ai-context/"
print "3) 运行 openclaw gateway start （如需）"
