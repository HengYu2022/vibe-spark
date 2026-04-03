# Vibe Spark

Vibe coding 灵感引擎。Claude Code skill，帮 vibe coder 从「不知道做什么」到「开始写代码」。

## 项目结构

- `SKILL.md` — Skill 定义和完整工作流
- `hook.sh` — 被动观察 hook（每 20 条消息检查重复模式）
- `install.sh` / `uninstall.sh` — 一键安装/卸载
- `ideas/` — 灵感示例库（作为 AI 生成的 few-shot 质量标杆，按方向分类）
- `examples/` — 示例输出文件

## 灵感条目格式

每条灵感用 Markdown + YAML frontmatter，必须包含：id, title, tags, difficulty, time, stack, wow + 正文（一句话、为什么值得做、核心功能、第一步、扩展方向）。

质量标准：读完「第一步」能立刻开始写代码，不需要额外搜索。

## 语言

代码和文件名用英文。文档和灵感内容用中文。Issues 和 PR 描述中英文均可。
