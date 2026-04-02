# Vibe Spark

Vibe coding 灵感导航员。Claude Code skill，帮 vibe coder 从「不知道做什么」到「开始写代码」。

## 项目结构

- `SKILL.md` — Skill 定义和完整工作流
- `ideas/` — 精选灵感库（按方向分类：ai, cli, creative, game, tool, web）
- `examples/` — 示例输出文件
- `DESIGN-v2.md` — 设计文档

## 灵感条目格式

每条灵感用 Markdown + YAML frontmatter，必须包含：id, title, tags, difficulty, time, stack, wow + 正文（一句话、为什么值得做、核心功能、第一步、扩展方向）。

质量标准：读完「第一步」能立刻开始写代码，不需要额外搜索。

## 语言

代码和文件名用英文。文档和灵感内容用中文。

## Skill routing

When the user's request matches an available skill, ALWAYS invoke it using the Skill
tool as your FIRST action. Do NOT answer directly, do NOT use other tools first.
The skill has specialized workflows that produce better results than ad-hoc answers.

Key routing rules:
- Product ideas, "is this worth building", brainstorming → invoke office-hours
- Bugs, errors, "why is this broken", 500 errors → invoke investigate
- Ship, deploy, push, create PR → invoke ship
- QA, test the site, find bugs → invoke qa
- Code review, check my diff → invoke review
- Update docs after shipping → invoke document-release
- Weekly retro → invoke retro
- Design system, brand → invoke design-consultation
- Visual audit, design polish → invoke design-review
- Architecture review → invoke plan-eng-review
