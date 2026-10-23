#!/usr/bin/env bash
# 从 jtydhr88/screenwriting-skills 按固定版本下载 reference*.md 到 references/library/screenwriting/，
# 并用 scripts/screenwriting-references.sha256 校验。这些文件含书籍摘录，不随本仓库分发，见该目录 SOURCE.md。
set -euo pipefail

REPO="jtydhr88/screenwriting-skills"
COMMIT="51115f18d160aa8b2ac5813e4432b6f0b425358f"
BASE="https://raw.githubusercontent.com/$REPO/$COMMIT/plugins/screenwriting/skills"

root="$(cd "$(dirname "$0")/.." && pwd)"
manifest="$root/scripts/screenwriting-references.sha256"
dest="$root/references/library/screenwriting"

if command -v sha256sum >/dev/null 2>&1; then
  hash() { sha256sum "$1" | cut -d' ' -f1; }
else
  hash() { shasum -a 256 "$1" | cut -d' ' -f1; }
fi

ok=0; failed=0
while read -r sum path; do
  path="${path%$'\r'}"
  [ -z "$path" ] && continue
  out="$dest/$path"
  if [ -f "$out" ] && [ "$(hash "$out")" = "$sum" ]; then
    ok=$((ok + 1)); continue
  fi
  mkdir -p "$(dirname "$out")"
  if curl -fsSL --retry 3 -o "$out.part" "$BASE/$path" && [ "$(hash "$out.part")" = "$sum" ]; then
    mv "$out.part" "$out"; ok=$((ok + 1))
  else
    rm -f "$out.part"; echo "失败：$path" >&2; failed=$((failed + 1))
  fi
done < "$manifest"

echo "完成：$ok 个文件就绪，$failed 个失败（来源 $REPO@${COMMIT:0:12}）"
[ "$failed" -eq 0 ]
