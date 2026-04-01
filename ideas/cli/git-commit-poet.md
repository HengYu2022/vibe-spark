---
id: git-commit-poet
title: Git Commit 诗人
tags: [cli, ai, creative]
difficulty: beginner
time: 2-3h
stack: [Node.js, Claude API]
wow: "fix: 修了个 bug → 「春风拂面虫已去，代码清明月自明」"
---

## 一句话

输入你的 commit message，AI 帮你改写成各种风格的诗句。

## 为什么值得做

每天写 commit message 是程序员最无聊的事之一。这个工具让无聊变有趣，而且发到社交媒体上绝对有传播力。技术实现简单，但效果很出彩。

## 核心功能

1. 输入普通 commit message，输出诗意版本
2. 多种风格可选：唐诗、说唱、莎士比亚、emoji 体
3. 可以作为 git hook 自动触发

## 第一步

创建 `poet.js`，接收命令行参数作为原始 commit message。用 `fetch` 调用 Claude API，system prompt 设定为「你是一个诗人，把 git commit message 改写成唐诗风格，保留技术含义」。先做唐诗一种风格，跑通后再加其他风格。

## 扩展方向

- 做成 git hook，每次 commit 自动触发
- 支持 `--style` 参数切换风格
- 做成 npm 全局包，`npx commit-poet "fix: typo"`
