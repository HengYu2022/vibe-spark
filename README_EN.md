# Vibe Spark ✨

![Version](https://img.shields.io/badge/version-0.3.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Ideas](https://img.shields.io/badge/ideas-40-orange)

> Repetition → Tools. Curiosity → Projects.

Install once, two things happen automatically:

**1. Spots your repetition** — You work normally with Claude Code. Vibe Spark silently watches in the background. When it detects you doing the same manual task 3+ times, it suggests automating it:

```
(Claude's normal response to your question...)

✨ Vibe Spark: You've manually formatted RSS data 3 times this session.
Want to build an auto news aggregator? ~4 hours to ship.
Say "/vibe-spark" to explore this direction.
```

**2. Finds your direction** — Want to vibe code but don't know what to build? Type `/vibe-spark`. It reads your git history and workspace, zero input required:

```
> /vibe-spark

🔍 Reading your workspace...
  Detected: Last 10 commits about Crypto data analysis
  Found: 3 RSS scrapers, 2 data formatting scripts

🎯 3 personalized directions for you:
  1. Crypto News Aggregator — Auto-pull headlines from 20 sources
  2. Data Format CLI — One command for JSON/CSV conversion
  3. Weekly Report Engine — Turn your manual process into one click
```

You don't need to tell it what you're working on. It reads your code history.

**3. Auto weekly report** — Every 7 days, automatically generates a work pattern report with repetition insights and inspiration. Fully passive, zero effort.

---

## How is this different from asking Claude directly?

You can always ask Claude "suggest a project." But three things Claude won't do on its own:

| Claude won't do this | Vibe Spark does |
|---------------------|-----------------|
| **Proactively** detect repetition while you work | Hook collects git + file evidence, suggests based on data |
| Read your git history with **zero input** | `/vibe-spark` auto-analyzes workspace, no questions asked |
| Tell you "where your time went" each week | Weekly report auto-generates pattern analysis + suggestions |
| Remember your preferences across sessions | profile.jsonl persists, gets smarter over time |

**Vibe Spark's edge isn't "it can read git" (Claude can too). It's that it reads proactively, analyzes proactively, and suggests proactively. You don't need to think to ask. It thinks for you.**

## What does it see? What doesn't it see?

- **Sees:** Message counter + your git commit titles + file names in current directory. Analyzed every 20 messages.
- **Doesn't see:** No file contents, no code, no data uploads.
- **Where's the data:** `~/.vibe-spark/` directory. Counter + preferences. Delete anytime.

All data stays local. The hook only reads git titles and file names to detect patterns. Never touches code content.

## Install

```bash
# 1. Install the skill
git clone https://github.com/HengYu2022/vibe-spark.git ~/.claude/skills/vibe-spark

# 2. Set up passive observation (optional but recommended)
bash ~/.claude/skills/vibe-spark/install.sh

# 3. Verify installation
bash ~/.claude/skills/vibe-spark/hook.sh --test
```

Works without the hook too — `/vibe-spark` is always available. The hook adds "passive observation + proactive suggestions."

**Uninstall:**
```bash
bash ~/.claude/skills/vibe-spark/uninstall.sh
```

## Two ways to use it

### Mode 1: Passive observation (recommended)

Just work normally. Vibe Spark runs silently in the background. When it spots repetition:

```
(Your normal response...)

✨ Vibe Spark: You've manually organized RSS data 3 times this session.
Want to build an auto news aggregator? ~4 hours to ship.
Say "/vibe-spark" to explore this direction.
```

Max 2 suggestions per session. Won't spam you. Most of the time you won't even know it's there.

### Mode 2: Active trigger

```
/vibe-spark
```

It reads your workspace and generates 3 personalized directions. No setup, no questions.

## Idea Library

40 curated ideas across practice projects and real product directions:

| Category | Count | Examples |
|----------|-------|----------|
| AI | 9 | News aggregator, meeting minutes, prompt debugger |
| CLI | 5 | Time tracker, invoice generator |
| Web | 7 | Pomodoro + Lo-fi, anonymous wall |
| Game | 5 | Typing race, roguelike dungeon |
| Tool | 10 | Star trend tracker, side project monitor |
| Creative | 4 | Music visualizer, generative art |

The idea library serves as few-shot quality examples for AI-generated directions, not just a list to pick from.

## Contributing

The most valuable contribution is **new idea entries**. The idea library is the quality benchmark for AI-generated directions — the more representative the ideas, the better the AI output.

See **[CONTRIBUTING.md](CONTRIBUTING.md)**.

## Disable passive observation

Don't want to be observed? Two ways:

```bash
# Option 1: Run the uninstall script
bash ~/.claude/skills/vibe-spark/uninstall.sh

# Option 2: Keep /vibe-spark, remove only the hook
# Remove the vibe-spark hook entry from ~/.claude/settings.json
```

## Links

- [Changelog](CHANGELOG.md) | [Security](SECURITY.md) | [Code of Conduct](CODE_OF_CONDUCT.md)
- [中文文档](README.md)

## License

MIT
