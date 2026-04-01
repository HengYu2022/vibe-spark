---
id: readme-generator
title: README 速写板
tags: [tool, web, productivity]
difficulty: beginner
time: 3-4h
stack: [Next.js, react-markdown]
wow: "回答 5 个问题，自动生成一份专业的 GitHub README"
---

## 一句话

引导式问答生成 GitHub README，再也不用对着空白文件发呆。

## 为什么值得做

好的 README 决定了开源项目的第一印象，但大部分人不知道该写什么。这个工具把 README 写作变成填空题，5 分钟出一份专业的 README。自己的每个项目都能用。

## 核心功能

1. 引导式问答（项目名？干什么的？怎么安装？怎么用？）
2. 实时 Markdown 预览
3. 一键复制完整 Markdown

## 第一步

用 Next.js 创建单页面。左边是 5 个问题的表单（项目名、一句话描述、安装命令、使用示例、技术栈），右边用 `react-markdown` 实时渲染预览。每次表单内容变化，重新拼接 Markdown 模板并渲染。先做一个固定模板，多模板第二步再加。

## 扩展方向

- 多种 README 模板（简洁版、详细版、组织版）
- 自动生成 badge（CI 状态、npm 版本、license）
- 接入 GitHub API，一键推送到仓库
