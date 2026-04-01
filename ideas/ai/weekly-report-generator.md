---
id: weekly-report-generator
title: AI 周报生成器
tags: [ai, productivity, tool]
difficulty: beginner
time: 2-3h
stack: [Next.js, Claude API]
wow: "周五下午 5 点，粘贴笔记，一键生成老板爱看的周报"
---

## 一句话

粘贴这周的零散笔记和 commit 记录，AI 帮你写一份结构清晰的周报。

## 为什么值得做

写周报是全世界程序员最讨厌的事之一。你明明干了很多活，但一到写周报就脑子空白。这个工具把你的零散记录变成漂亮的周报，每周五省 30 分钟。自己用得上，同事看到也会想要。

## 核心功能

1. 文本输入区：粘贴本周的笔记、commit message、聊天记录
2. AI 结构化整理：自动分类为「完成」「进行中」「下周计划」
3. 多种模板风格：简洁版 / 详细版 / 带数据版
4. 一键复制为 Markdown

## 第一步

用 Next.js 创建一个单页面。左边是文本输入区（textarea），右边是生成的周报预览。点击「生成」按钮，把输入文本发送到 `/api/generate` API route，调用 Claude API 生成结构化周报，返回后渲染在右边。先不做模板切换，只做一个默认模板。

## 扩展方向

- 接入 GitHub API，自动拉取本周的 commit 和 PR
- 接入日历 API，自动拉取本周的会议记录
- 周报历史归档，可以回看过去每周做了什么
