---
id: meeting-minutes
title: 聊天记录变会议纪要
tags: [ai, productivity, tool]
difficulty: beginner
time: 2-4h
stack: [Next.js, Claude API]
wow: "把 500 条微信群消息变成 3 段结构化会议纪要"
---

## 一句话
粘贴微信/Slack/飞书的聊天记录，AI 自动提取决策、待办和关键信息，生成结构化会议纪要。

## 为什么值得做
每次开完会，群里 500 条消息，但真正有用的就 10 条。这个工具帮你从噪音里提取信号。每个上班族都需要，做完发到社交媒体绝对有共鸣。

## 核心功能
1. 粘贴聊天记录文本（支持微信、Slack、飞书格式）
2. AI 提取：决策事项、待办事项、关键数据点
3. 输出结构化纪要（Markdown 格式，一键复制）

## 第一步
用 Next.js 创建单页面。左边 textarea 粘贴聊天记录，右边显示结构化纪要。调用 Claude API，system prompt 为「从聊天记录中提取：1）做出的决策 2）明确的待办（含负责人）3）提到的关键数据。输出为 Markdown 格式」。

## 扩展方向
- 自动识别聊天平台格式（微信 vs Slack vs 飞书）
- 定期扫描群消息自动生成日报
- 集成飞书/企业微信 API 直接拉取消息
