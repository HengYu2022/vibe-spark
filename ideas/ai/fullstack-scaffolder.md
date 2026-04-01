---
id: fullstack-scaffolder
title: AI 全栈脚手架
tags: [ai, tool, cli]
difficulty: advanced
time: 1week+
stack: [Node.js, Claude API]
wow: "描述你想做什么，AI 直接生成整个项目结构和基础代码"
---

## 一句话

输入一段项目描述，AI 生成完整的项目脚手架（目录结构 + 配置文件 + 基础代码）。

## 为什么值得做

每次开新项目都要花 30 分钟配 ESLint、Tailwind、TypeScript、CI... 这个工具把「项目初始化」变成一句话的事。比 create-next-app 更智能，因为它根据你的描述定制代码，不只是模板。

## 核心功能

1. 自然语言输入项目描述
2. AI 分析需求，选择技术栈，生成目录结构
3. 输出完整可运行的项目（包含 README、.gitignore、CI 配置）

## 第一步

创建 `scaffold.js` CLI 工具。接收一个字符串参数作为项目描述。调用 Claude API，system prompt 为「根据描述生成项目结构，返回 JSON：{files: [{path, content}]}，只包含最小可运行的文件集」。拿到 JSON 后，用 `fs.mkdirSync` 和 `fs.writeFileSync` 把文件写到磁盘。先只支持 Node.js + Express 项目。

## 扩展方向

- 支持多种技术栈（React、Vue、Python Flask、Go）
- 交互式确认（生成前预览目录树，确认后写入）
- 集成 git init + 首次 commit
