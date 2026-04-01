# Contributing to Vibe Spark

Thanks for your interest in contributing! Vibe Spark is a community-driven project, and the most valuable contribution is **new inspiration ideas**.

## How to Contribute an Idea

1. Fork this repo
2. Create a new `.md` file in the appropriate `ideas/` subdirectory
3. Use the template below
4. Submit a PR

### Idea Template

```yaml
---
id: your-idea-slug
title: Your Idea Title
tags: [tag1, tag2]
difficulty: beginner | intermediate | advanced
time: estimated time (e.g., 2-4h)
stack: [Tech1, Tech2]
wow: "A catchy one-liner that makes people want to build this"
---

## One-liner
One sentence describing the project.

## Why it's worth building
2-3 sentences on why a vibe coder should pick this up.

## Core Features
1. Feature one
2. Feature two
3. Feature three

## First Step
Specific, actionable instructions to start coding RIGHT NOW.
No vague "set up the project" — tell them exactly what file to create
and what code to write first.

## Extensions
- Extension idea one
- Extension idea two
```

### Quality Checklist

Before submitting, check:

- [ ] `id` matches the filename (e.g., `my-idea.md` → `id: my-idea`)
- [ ] `wow` is fun and memorable
- [ ] "First Step" is specific enough to start coding without Googling
- [ ] `difficulty` and `time` are realistic
- [ ] `tags` match existing categories: `cli, web, api, game, tool, creative, data-viz, ai, browser-ext, mobile`
- [ ] The idea is something you'd actually want to build yourself

### Categories

Put your idea in the matching directory:

| Directory | What goes here |
|-----------|---------------|
| `ideas/ai/` | AI/LLM-powered projects |
| `ideas/cli/` | Command-line tools |
| `ideas/creative/` | Art, music, visual projects |
| `ideas/game/` | Games and interactive experiences |
| `ideas/tool/` | Developer tools and utilities |
| `ideas/web/` | Web applications |

Need a new category? Open an issue first.

## Other Contributions

### Bug Reports
If the skill doesn't work as expected, open an issue with:
- What you did
- What you expected
- What happened instead
- Your Claude Code version

### SKILL.md Improvements
Changes to the skill workflow are welcome, but please open an issue first to discuss.

### Translations
Want to translate idea content to English (or another language)? We'd love that. Create a PR with translated content alongside the original Chinese.

## Code of Conduct

Be kind. Be helpful. We're all here to build cool things.

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
