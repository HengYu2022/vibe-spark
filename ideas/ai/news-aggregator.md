---
id: news-aggregator
title: AI 行业情报日报
tags: [ai, productivity, tool]
difficulty: intermediate
time: 6-8h
stack: [Node.js, Claude API, RSS]
wow: "每天早上打开终端，你的行业情报已经整理好了"
---

## 一句话
自动从你关注的信息源抓取内容，AI 筛选和总结，生成一份你的个人行业日报。

## 为什么值得做
每个人都在信息过载。你关注了 20 个公众号、10 个 RSS 源、5 个 Twitter 账号，但每天真正重要的就那么几条。这个工具帮你从噪音里找到信号，省下每天 30 分钟的信息筛选时间。

## 核心功能
1. 配置信息源（RSS 链接、网页 URL）
2. 定时抓取 + AI 筛选（过滤掉广告和水文）
3. 生成结构化日报（按主题分类，每条带一句话摘要）

## 第一步
创建 `aggregator.js`。硬编码 3 个 RSS 源（如 Hacker News、TechCrunch、36kr 的 RSS）。用 `rss-parser` 库抓取最近 24 小时的文章标题和摘要。把全部内容发给 Claude API，让它选出最重要的 5 条并写一句话总结。输出到终端。

## 扩展方向
- 支持 Twitter/X 信息源
- 邮件推送每日日报
- 个人兴趣画像自动调整筛选标准
