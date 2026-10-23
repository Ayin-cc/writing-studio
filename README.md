# writing-studio

一个处理所有写作和创作任务的 Claude Code skill：专业文档、影视剧本、视频稿件，以及共享的编辑质检。

```
写作任务识别（文档 / 剧本 / 视频稿 / 编辑润色）
        │
   ┌────┼──────────────┐
专业文档      影视剧本        视频稿件
结构·论证·格式  情节·人物·对白   风格·口播·分镜
   └────┼──────────────┘
共享编辑与质检：事实核查 · 逻辑审查 · 风格统一 · 去除套话
        │
Markdown / Word / 剧本格式 / 分镜表
```

## 安装

把仓库克隆或解压到 Claude Code 的 skills 目录：

```bash
git clone https://github.com/Ayin-cc/writing-studio ~/.claude/skills/writing-studio
```

也可以只装在某个项目里，放到项目的 `.claude/skills/writing-studio`。装好后直接提出写作需求即可，例如"写一个 60 秒的科普口播稿"或"帮我把这份 PRD 去掉 AI 味"。

### 可选：下载剧作参考资料

剧本模块的深度参考 `reference*.md` 含有书籍和剧本摘录，不随本仓库分发。需要时在 skill 目录里运行下面的脚本，从 [jtydhr88/screenwriting-skills](https://github.com/jtydhr88/screenwriting-skills) 按固定版本下载，并逐个校验 SHA-256：

```bash
bash scripts/fetch-references.sh
```

Windows PowerShell：

```powershell
powershell -ExecutionPolicy Bypass -File scripts\fetch-references.ps1
```

不下载也能正常使用，剧本模块会改用各专题的 `GUIDE.md`。

## 目录

| 路径 | 内容 |
|---|---|
| `SKILL.md` | 入口：识别任务类型，分流到对应模块 |
| `skills/document-writing/` | PRD、技术方案、报告、论文、文章、营销文案 |
| `skills/screenwriting/` | 电影、剧集、短剧、舞台剧、戏曲剧本 |
| `skills/video-script/` | 短视频、长视频、口播稿、分镜、AI 视频提示词 |
| `skills/research-and-factcheck/` | 资料调研、引用、事实核查 |
| `skills/editorial-review/` | 逻辑审查、风格统一、去套话与去 AI 味 |
| `styles/` | 六种写作风格：纪录片、科技科普、幽默吐槽、调查报道、动漫评论、专业报告 |
| `references/` | 写作底线、剧本与分镜模板、第三方原文资料库 |

## 致谢与来源

writing-studio 收录并整合了以下开源项目。版权归原作者所有，各自的许可证和来源说明放在 `references/library/<目录>/LICENSE` 和 `SOURCE.md` 中。

| 项目 | 作者 | 许可 |
|---|---|---|
| [screenwriting-skills](https://github.com/jtydhr88/screenwriting-skills) | Terry Jia | MIT（引文另见其 NOTICE） |
| [humanizer](https://github.com/blader/humanizer) | Siqi Chen | MIT |
| [Humanizer-zh](https://github.com/op7418/Humanizer-zh) | 歸藏 | MIT |
| [academic-writing-agents](https://github.com/andrehuang/academic-writing-agents) | Haiwen Huang | MIT |
| [social-media-skills](https://github.com/charlie947/social-media-skills) | Charlie Hills | MIT |
| [marketingskills](https://github.com/coreyhaines31/marketingskills) | Corey Haines | MIT |
| [cinema-skills](https://github.com/DenisHumen/cinema-skills) | DenisHumen | MIT |
| [tipai-cinema-skills](https://github.com/aitippro/tipai-cinema-skills) | TipAi | MIT |

以下项目没有收录原文，只参考了方法，并用自己的话改写：[anthropics/skills](https://github.com/anthropics/skills) 的 doc-coauthoring，[ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) 的 content-research-writer（Apache-2.0）。

screenwriting-skills 各专题的 `reference*.md` 含有剧作书籍、剧本和戏曲文本的摘录。按原仓库 NOTICE 的说明，这些引文不在 MIT 授权范围内，因此本仓库不收录，只提供从原仓库下载的脚本（见"安装"）。

## 许可

writing-studio 的原创部分采用 [MIT](LICENSE) 许可。第三方内容适用各自的许可证。
