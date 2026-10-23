# 原始资料库

writing-studio 由以下开源 skill 合并而成。这里保留它们的原文，只在 `skills/*/GUIDE.md` 指向时按需读取。原来的 `SKILL.md` 都已改名为 `GUIDE.md`，避免被 Claude Code 当成独立 skill 重复注册。原文中提到的 skill 名称（例如 `sw-dialogue`）对应本目录下的同名子目录。

每个子目录都附有原仓库的 `LICENSE`，以及一份 `SOURCE.md`，写明原仓库地址、固定版本、收录范围和改动。版权归原作者所有；需要最新版本或想反馈问题，请前往原仓库。

| 目录 | 原仓库 | 固定版本 | 许可 | 用于 |
|---|---|---|---|---|
| `screenwriting/` | [jtydhr88/screenwriting-skills](https://github.com/jtydhr88/screenwriting-skills) | `51115f18d160` | MIT + NOTICE | 剧本线：26 个剧作专题 |
| `humanizer/` | [blader/humanizer](https://github.com/blader/humanizer) | `8c307f367c91` | MIT | 编辑质检：英文去 AI 味 |
| `humanizer-zh/` | [op7418/Humanizer-zh](https://github.com/op7418/Humanizer-zh) | `f4518a8eab97` | MIT | 编辑质检：中文去套话 |
| `academic/` | [andrehuang/academic-writing-agents](https://github.com/andrehuang/academic-writing-agents) | `d4d9d3a21afb` | MIT | 文档线：论文写作原则与审稿角色 |
| `social-media/` | [charlie947/social-media-skills](https://github.com/charlie947/social-media-skills) | `10ca79c0ec0b` | MIT | 视频线与文档线：钩子、帖子、Reels 脚本、个人语气 |
| `marketing/` | [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) | `e85f3cbc2e4a` | MIT | 文档线：营销文案、邮件、内容策略；视频线：YouTube 脚本 |
| `cinema/` | [DenisHumen/cinema-skills](https://github.com/DenisHumen/cinema-skills) | `0ea4971cc502` | MIT | 视频线：影视制作流水线、导演、摄影、剪辑 |
| `ai-storyboard/` | [aitippro/tipai-cinema-skills](https://github.com/aitippro/tipai-cinema-skills) | `f6beda2e7e91` | MIT | 视频线：分镜拆解、AI 视频提示词、一致性审查 |

以下两个 skill 没有收录原文，只参考了它们的方法，用自己的话改写进了对应模块：

- `doc-coauthoring`（[anthropics/skills](https://github.com/anthropics/skills)，`dbd4588f9e10`）→ `skills/document-writing/GUIDE.md` 的协作流程和读者测试
- `content-research-writer`（[ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills)，`be2a406907db`，Apache-2.0）→ `skills/research-and-factcheck/GUIDE.md` 和文档线

`screenwriting/` 各专题的 `reference*.md` 含有剧作书籍、剧本和戏曲文本的摘录。原仓库的 `NOTICE` 说明这些引文不在 MIT 授权范围内，版权仍归原权利人，所以本仓库不分发它们。需要时运行 `scripts/fetch-references.sh`（Windows 用 `scripts/fetch-references.ps1`），从原仓库下载上表中的固定版本，并按 `scripts/screenwriting-references.sha256` 校验。

`social-media/` 中部分流程依赖 Apify、Gemini 等外部服务和 `voice.md` 文件。这些内容只作为方法参考，writing-studio 不会自动调用这些服务。

更新方法：从原仓库拉取新版本后覆盖对应目录，把其中的 `SKILL.md` 改名为 `GUIDE.md`，再更新该目录 `SOURCE.md` 和上表中的版本号。更新 screenwriting 时，还要同步修改两个下载脚本里的 `COMMIT`，并重新生成 `scripts/screenwriting-references.sha256`。
