#!/usr/bin/env bash
# 检查自写文件里反引号引用的 skills/ styles/ references/ library/ 路径是否存在
cd "$(dirname "$0")/.." || exit 1
missing=0
for f in SKILL.md skills/*/GUIDE.md references/*.md references/reference-scripts/*.md; do
  while read -r p; do
    case "$p" in library/*) p="references/$p" ;; esac
    p="${p%/}"
    # 占位符和通配（<专题>、*.md）跳过
    case "$p" in *'<'*|*'*'*) continue ;; esac
    if [ ! -e "$p" ]; then echo "$f: 缺少 $p"; missing=1; fi
  done < <(grep -oE '`(skills|styles|references|library)/[^`* ]+`' "$f" | tr -d '`' | sort -u)
done
[ "$missing" -eq 0 ] && echo "全部路径存在"
exit "$missing"
