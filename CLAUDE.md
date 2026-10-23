# writing-studio

一个 Claude Code skill，合并了多个写作类开源 skill。入口是 `SKILL.md`。

## 约定

- 只有根目录的文件叫 `SKILL.md`。子模块和 `references/library/` 中的文件一律叫 `GUIDE.md`，避免被注册成独立 skill。
- `skills/`、`styles/`、`references/writing-guidelines.md`、`references/reference-scripts/` 下的自写文件用中文写。
- `references/library/` 是第三方原文，不要修改内容。每个子目录必须保留原仓库的 `LICENSE` 和 `SOURCE.md`。更新方法见 `references/library/README.md`。
- `references/library/screenwriting/**/reference*.md` 含有书籍摘录，已写入 `.gitignore`，不提交。通过 `scripts/fetch-references.sh` / `.ps1` 从原仓库按固定版本下载，用 `scripts/screenwriting-references.sha256` 校验。
- 修改 `SKILL.md` 或 GUIDE.md 里的路径后，运行下面的命令检查引用路径是否存在：

```bash
bash scripts/check-links.sh
```

- 导出压缩包：

```bash
git archive --format=zip --prefix=writing-studio/ -o dist/writing-studio.zip HEAD
```
