# Skills

One folder per film-making discipline. Each discipline folder holds skill
folders; each skill folder holds a `SKILL.md`:

```text
skills/
└── color-grading/              # discipline (registered in .claude-plugin/plugin.json)
    ├── README.md               # scope + checklist of planned skills
    └── grade-look-builder/     # one skill = one folder, name == frontmatter name
        ├── SKILL.md
        ├── references/         # optional, loaded on demand
        └── scripts/            # optional, executed
```

| # | Discipline | Prefix | Scope |
|---|---|---|---|
| 00 | [00-pipeline](00-pipeline/) | `pipeline-` | Orchestrator: brief → script → style bible → shot list → sources → edit → grade → sound/voice → export |
| 01 | [screenwriting](screenwriting/) | `script-` | Premise, structure, characters, scenes, dialogue, Fountain format |
| 02 | [directing](directing/) | `direct-` | Scene breakdown, coverage, blocking, shot lists, storyboards, performance |
| 03 | [cinematography](cinematography/) | `camera-` | Framing, lenses, movement, lighting, look design |
| 04 | [editing](editing/) | `edit-` | Assembly, rhythm, ffmpeg recipes, subtitles, timeline exchange |
| 05 | [color-grading](color-grading/) | `grade-` | Color management, correction, looks/LUTs, shot matching, film emulation, QC |
| 06 | [sound-and-voice](sound-and-voice/) | `sound-` / `voice-` | Voice design, TTS voice-over, dialogue edit, sound design, music, mix & loudness |
| 07 | [ai-generation](ai-generation/) | `gen-` | Consistent characters and style for image & video models, keyframes, image-to-video |
| 08 | [titles-and-vfx](titles-and-vfx/) | `titles-` / `vfx-` | Titles, lower thirds, credits, compositing, cleanup, transitions |
| 09 | [series-production](series-production/) | `series-` | Series bible, season arcs, episode breakdowns, continuity, production tracking |

Rules for adding a skill: [CONTRIBUTING.md](../CONTRIBUTING.md). Template:
[templates/skill-template](../templates/skill-template/).
