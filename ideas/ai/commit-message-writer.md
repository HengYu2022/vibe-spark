---
id: commit-message-writer
title: AI Commit 助手
tags: [ai, cli, tool]
difficulty: beginner
time: 2-3h
stack: [Node.js, Claude API]
wow: "git diff | ai-commit → 自动写出完美的 conventional commit"
---

## 一句话

读取 git diff，AI 自动生成符合 Conventional Commits 规范的 commit message。

## 为什么值得做

写好 commit message 是工程素养的体现，但大部分人懒得写。这个工具让你既偷懒又专业。而且作为 CLI 工具，直接融入现有工作流，零摩擦。

## 核心功能

1. 读取当前 `git diff --staged` 的内容
2. AI 分析变更，生成 Conventional Commits 格式的 message
3. 用户确认或编辑后自动执行 `git commit`

## 第一步

创建 `ai-commit.js`，用 `child_process.execSync` 执行 `git diff --staged` 获取变更内容。把 diff 发送给 Claude API，system prompt 为「分析 git diff，生成一条 Conventional Commits 格式的 commit message（type: description），简洁准确」。把结果打印出来，让用户按 Y 确认后执行 `git commit -m "..."`.

## 扩展方向

- 支持 `--emoji` 模式（加 gitmoji）
- 支持多语言 commit message
- 做成 git hook，每次 commit 自动触发
