# DEV.to 文章草稿

## 标题

I Built a Claude Code Skill That Watches Your Work and Tells You What to Automate

## Tags

claudecode, ai, productivity, opensource

## Cover image 建议

用终端截图展示 hook 触发效果（录好 GIF 后替换）

---

## 正文

Every developer has that moment: you realize you've done the same manual task for the third time today. Reformatting data. Scraping another similar site. Copy-pasting the same boilerplate.

You think "I should automate this." Then you don't, because you're in the middle of something else.

I built a Claude Code skill that catches those moments for you.

## What it does

**Vibe Spark** is a Claude Code skill with three modes:

### Passive observation (the interesting part)

It hooks into Claude Code's `UserPromptSubmit` event. Every 20 messages, a lightweight bash script collects evidence from your workspace:

- Last 10 git commit titles
- File names in your current directory
- Files modified in the last hour
- Your cross-session preference history

Then it injects this context into Claude's prompt with clear detection rules: if 3+ commits touch similar topics, or 3+ files have similar names, that's a pattern.

When Claude spots a pattern, it appends a one-line suggestion to its normal response:

```
✨ Vibe Spark: You've manually organized RSS data 3 times this session.
Want to build an auto news aggregator? ~4 hours to ship.
Say "/vibe-spark" to explore this direction.
```

When there's no pattern? Complete silence. No noise.

### Zero-input inspiration

Sometimes you want to vibe code but don't know what to build. Type `/vibe-spark` and it:

1. Reads your git history and workspace files
2. Checks your cross-session preferences (stored in `~/.vibe-spark/profile.jsonl`)
3. Generates 3 personalized project directions

No questions. No "tell me about yourself." It already knows from your code.

### Auto weekly report

Every 7 days (if you've made 5+ commits), it generates a work pattern summary:

- Where your time went (e.g., "data scraping 60%, formatting 20%, other 20%")
- Repetitive patterns it noticed
- 1-2 automation suggestions

Inactive weeks get nothing. No empty reports.

## The design philosophy

The core principle: **no value = no output**.

Every path through the code checks whether it has something useful to say. Empty git history? Silent. No patterns detected? Silent. Less than 5 commits this week? No weekly report.

This matters because hook-based tools that spam users get uninstalled fast. The only way to survive as a background observer is to be genuinely useful when you speak and invisible when you don't.

## How the hook works

The entire hook is ~130 lines of bash. Here's the architecture:

```
UserPromptSubmit (every message)
  └── Increment session counter (~/.vibe-spark/counter-{PID})
      └── Every 20 messages:
          ├── Check weekly report (7+ days since last)
          │   └── 5+ commits? → Generate report
          │   └── < 5 commits? → Silent, reset timer
          └── Collect evidence
              ├── git log --oneline -10
              ├── ls -t | head -10
              ├── find . -mmin -60 (recent files)
              └── profile.jsonl (cross-session history)
              └── All empty? → Silent
              └── Has data? → Inject analysis prompt
```

Privacy is intentional. The hook reads:
- Git commit **titles** (not diffs, not code)
- **File names** (not contents)
- A counter number

That's it. No network calls. No uploads. Everything stays in `~/.vibe-spark/`.

## What I learned building this

**1. Hooks are underused.** Claude Code's `UserPromptSubmit` hook runs a shell command before every response. Most people use it for linting or formatting. Using it for passive intelligence gathering (with user consent, obviously) opens up a whole new category of skills.

**2. The "proactive" part is the differentiator.** Claude can read your git history if you ask. But you have to ask. The whole point of Vibe Spark is that it reads proactively, analyzes proactively, and suggests proactively. You don't need to think to ask.

**3. "No value = no output" is harder than it sounds.** Every feature I added, I had to also add a silence condition. Weekly report with < 5 commits? Silent. Evidence collection with empty results? Silent. Second session visit with no new patterns? Silent. It's more code for the quiet paths than the loud ones.

## Try it

```bash
# Install
git clone https://github.com/HengYu2022/vibe-spark.git ~/.claude/skills/vibe-spark
bash ~/.claude/skills/vibe-spark/install.sh

# Verify
bash ~/.claude/skills/vibe-spark/hook.sh --test
```

GitHub: [github.com/HengYu2022/vibe-spark](https://github.com/HengYu2022/vibe-spark)

It's MIT licensed, v0.3.0. The idea library has 40 curated ideas that serve as few-shot quality examples for AI-generated directions.

Feedback welcome — especially on whether the hook catches useful patterns in real-world usage. I've been using it myself but would love more data points.

---

## 发帖说明

1. 去 https://dev.to/new
2. 复制标题到 title 栏
3. 复制 tags 到 tags 栏（用逗号分隔）
4. 正文从 "Every developer has that moment" 开始复制
5. 发布前预览一下格式
