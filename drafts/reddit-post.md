# Reddit r/ClaudeCode 发帖草稿

## 标题（二选一）

**Option A:** I built a Claude Code skill that watches your work patterns and suggests what to automate

**Option B:** Made a skill that turns your repetitive manual work into project ideas — zero input needed

---

## 正文

I kept catching myself doing the same manual tasks over and over in Claude Code — reformatting data, scraping similar sites, organizing files the same way. Every time I thought "I should automate this" but never did.

So I built **Vibe Spark**, a Claude Code skill that does two things:

### 1. Passive pattern detection (the cool part)

It runs as a `UserPromptSubmit` hook. Every 20 messages, it silently checks your git commits and file names. When it sees you doing the same type of work 3+ times, it suggests automating it:

```
(Claude's normal response...)

✨ Vibe Spark: You've manually formatted RSS data 3 times this session.
Want to build an auto news aggregator? ~4 hours to ship.
Say "/vibe-spark" to explore this direction.
```

Max 2 suggestions per session. Most of the time you don't even know it's there.

### 2. Zero-input inspiration

Type `/vibe-spark` and it reads your git history + workspace to generate 3 personalized project directions. No questions asked — it already knows what you're working on.

### 3. Auto weekly report

Every 7 days, it generates a work pattern report showing where your time went and what could be automated. Only fires on active weeks (5+ commits).

### Privacy

Only reads git commit titles and file names. Never touches code content. All data stays in `~/.vibe-spark/`. Delete anytime.

### Install

```bash
git clone https://github.com/HengYu2022/vibe-spark.git ~/.claude/skills/vibe-spark
bash ~/.claude/skills/vibe-spark/install.sh
bash ~/.claude/skills/vibe-spark/hook.sh --test
```

GitHub: https://github.com/HengYu2022/vibe-spark

Would love feedback — especially if the hook actually catches useful patterns for you. This is v0.3.0, still early.

---

## 发帖说明

1. 去 https://www.reddit.com/r/ClaudeCode/submit
2. 选 "Text" 帖子
3. 复制标题和正文
4. Flair 选 "Show & Tell" 或 "Tool/Skill"（看社区有什么选项）
