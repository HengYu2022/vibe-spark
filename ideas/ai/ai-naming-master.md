---
id: ai-naming-master
title: AI 命名大师
tags: [ai, tool]
difficulty: beginner
time: 2-3h
stack: [Next.js, Claude API]
wow: "描述你的项目，AI 给你起 10 个好名字，还帮你查域名"
---

## 一句话

描述你的项目或变量，AI 给你起一堆好名字并检查可用性。

## 为什么值得做

命名是编程中最难的事（不是开玩笑）。项目名、变量名、函数名，每次都要想半天。这个工具解决一个真实的日常痛点，而且技术实现很简单。

## 核心功能

1. 输入项目描述 → AI 生成 10 个候选名字（附含义解释）
2. 一键查 GitHub 仓库名是否已被占用
3. 一键查域名可用性（.com / .dev / .io）

## 第一步

用 Next.js 创建单页面。一个 textarea 输入项目描述，点击「起名」调用 Claude API，prompt 为「根据描述生成 10 个项目名，要求简短好记、适合做 GitHub 仓库名、有创意。返回 JSON [{name, meaning}]」。先展示名字列表，GitHub 查重和域名检查第二步做。

## 扩展方向

- 支持不同命名场景（项目名 / 变量名 / npm 包名）
- 接入 GitHub API 和域名查询 API 做实时可用性检查
- 收藏喜欢的名字，支持分享
