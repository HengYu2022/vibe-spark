---
id: interview-coach
title: AI 模拟面试官
tags: [ai, education, web]
difficulty: intermediate
time: 8-12h
stack: [Next.js, Claude API, Monaco Editor]
wow: "选「React 前端」难度，AI 从浅到深追问你，最后给评分"
---

## 一句话

模拟技术面试，AI 出题、逐步追问、最后给详细反馈和评分。

## 为什么值得做

技术面试准备是每个程序员的刚需。市面上的面试工具大多是刷题型的，缺少「被追问」的真实面试体验。AI 追问能暴露你真正的知识盲区。

## 核心功能

1. 选择面试方向（前端 / 后端 / 算法）和难度
2. AI 逐步出题 + 追问（根据你的回答调整难度）
3. 面试结束后给出评分（1-10）+ 每道题的详细反馈

## 第一步

用 Next.js 创建项目。做一个面试选择页（方向 + 难度），点击开始后进入对话界面。用 Claude API 做多轮对话，system prompt 定义面试官角色和评分标准。先做纯文字问答（textarea 输入），代码编辑器第二步再加。设定 5 道题为一轮面试。

## 扩展方向

- 接入 Monaco Editor 支持代码题作答
- 面试记录回放和错题本
- 多人模式（一个人当面试官，AI 辅助评分）
