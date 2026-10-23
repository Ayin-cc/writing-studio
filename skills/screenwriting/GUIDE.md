# 影视剧本：情节、人物、对白

覆盖电影、电视剧、网剧、短剧、舞台剧和戏曲剧本。方法论来自 `references/library/screenwriting/`（26 个专题，提炼自 McKee、Field、Snyder、Truby、Egri、陆军等人的剧作书和完整剧本）。本文件只做调度：判断项目处在哪个阶段，指向该读的专题。

## 1. 项目状态：story-bible.md

剧本项目一律在项目目录建 `story-bible.md`，每次工作结束时更新：

```markdown
# <片名> Story Bible
- 体裁/时长/集数：
- 一句话梗概（logline）：
- 前提/主题：
- 当前阶段：premise | structure | character | scenes | draft | revision
- 人物表：姓名 · 欲望 · 误信 · 弧光 · 声口特征
- 世界设定与规则：
- 结构/节拍表：
- 已完成：
- 下一步：
- 待决问题：
```

用户说"继续写我的剧本"时，先读这个文件。

## 2. 电影 / 舞台剧阶段表

| 阶段 | 产出 | 读 `library/screenwriting/<专题>/GUIDE.md` | 过关标准 |
|---|---|---|---|
| 前提 | logline、主题、戏核 | `sw-premise-theme` | 一句话里有主角、欲望、阻力和代价 |
| 结构 | 节拍表 / 场景卡 | `sw-story-structure`，中段塌陷时加 `sw-truby-anatomy` | 激励事件、中点、危机、高潮都落了位置 |
| 类型 | 类型节拍核对 | `sw-genre-anatomy` | 主类型的必备节拍全部命中 |
| 人物 | 人物小传、对手设计 | `sw-character-conflict` | 主角欲望和误信清楚，对手够强 |
| 场景 | 分场大纲 | `sw-scene-craft` | 每场都有价值转折，没有"什么都没发生"的场 |
| 对白 | 正文 | `sw-dialogue` | 遮住人名能分辨是谁在说话，潜台词在 |
| 格式 | 成稿 | `sw-format-adaptation` | 符合目标格式（见第 5 节） |
| 改编 | 改编方案 | `sw-format-adaptation` 第五节 | 回答了"保留什么、为什么改" |

总调度逻辑见 `sw-workflow/GUIDE.md`。

## 3. 剧集 / 短剧阶段表

| 阶段 | 产出 | 读 |
|---|---|---|
| 剧集引擎 | 系列前提、能持续产生冲突的人物网 | `sw-series-engine-bible` |
| 季弧与分集 | 季大纲、分集梗概 | `sw-series-structure` |
| 单集结构 | 冷开场、分幕、出幕悬念、A/B/C 线 | `sw-series-structure`、`sw-series-case-studies` |
| 国产剧规范 | 策划书、人物小传、分集梗概、集数字数、审查红线 | `sw-chinese-series-practice` |
| 情景喜剧 | 困境设计、笑点密度、多机位格式 | `sw-sitcom-comedy` |
| 编剧室协作 | beat sheet、接 note、改稿 | `sw-writers-room` |

竖屏短剧按国产剧规范加两条：每集 1–3 分钟，开场 3 秒内给冲突，集尾必留钩子；参照 `sw-chinese-series-practice` 中"3 分钟 / 15 分钟 / 集尾悬念"规律压缩。

## 4. 风格与流派专题

| 想要的感觉 | 读 |
|---|---|
| 群像、"什么都没发生"、潜台词重 | `chekhov-dramaturgy` |
| 安静家庭剧、日常系、少说多意 | `ozu-screenplay-style` |
| 权力斗争群像、无分幕的流媒体剧 | `succession-series-writing` |
| 日式原创、从碎片素材出发 | `sw-japanese-screenwriting` |
| 韩式商业类型片、法式作者片 | `sw-korean-french-screenwriting` |
| 好莱坞经典案例拆解 | `sw-american-case-studies` |
| 戏曲：京剧/豫剧/越剧等板腔体 | `sw-chinese-opera-banqiang`（案例在 `-cases`） |
| 戏曲：元杂剧/传奇/昆曲等曲牌体 | `sw-chinese-opera-qupai`（案例在 `-cases`） |
| 卖剧本、写 pitch、接 note | `sw-industry-business` |

每个专题目录里的 `reference*.md` 是更细的材料和案例，GUIDE.md 指到时再读。这些文件需要用 `scripts/fetch-references.sh`（Windows 用 `.ps1`）从原仓库下载。如果缺失，就只依据 GUIDE.md 工作；用户需要更深的材料时，提示他们运行这个脚本。

## 5. 格式

- **中文影视剧本（场号制）**：`场号 + 场景 + 日/夜 + 内/外`，下接人物、动作描写、对白。模板 `references/reference-scripts/chinese-screenplay-template.md`。
- **英文 spec 剧本**：Fountain，模板 `references/reference-scripts/screenplay.fountain`。
- **舞台剧 / 戏曲**：按 `sw-chinese-opera-*` 和 `sw-format-adaptation` 的体例。
- 动作描写只写看得见、听得见的东西；一段不超过 4 行；不写镜头指令，除非是拍摄稿。

## 6. 剧本线的质检重点

交给 `skills/editorial-review/GUIDE.md` 时额外检查：

- 每场的价值转折（开场 +/− 到收场 −/+）
- 人物动机是否连贯，有没有为情节服务而"出戏"的行为
- 对白：直白说出感情（on-the-nose）、信息倾倒、人物声口雷同
- 伏笔与回收是否对上，道具是否有交代
- 涉及真实人物或事件时走事实核查
