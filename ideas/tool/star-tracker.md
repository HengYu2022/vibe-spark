---
id: star-tracker
title: GitHub Star 趋势追踪器
tags: [tool, data-viz, web]
difficulty: intermediate
time: 6-8h
stack: [Next.js, GitHub API, Recharts]
wow: "哪些 repo 在涨？涨速多快？一个面板看清楚"
---

## 一句话
追踪你关注的 GitHub 仓库的 star 趋势，发现正在起飞的开源项目。

## 为什么值得做
开发者每天看 GitHub trending，但 trending 只显示「今天热门」，不显示趋势。这个工具让你追踪特定 repo 的 star 增长曲线，发现哪些项目在持续加速（而不只是一天的热度）。

## 核心功能
1. 添加要追踪的 GitHub repo（输入 repo URL）
2. 每日自动记录 star 数
3. 趋势图表（日增长、周增长、环比变化）

## 第一步
用 Next.js 初始化。做一个输入框让用户输入 `owner/repo`。调用 GitHub API `GET /repos/{owner}/{repo}` 获取当前 star 数和创建时间。用 Recharts 画一个简单的数字展示（当前 star + 每日估算增长）。历史数据用 localStorage 存储。

## 扩展方向
- 接入 star-history.com 的 API 获取历史数据
- 多 repo 对比（同一图表上比较两个 repo 的增长曲线）
- 每周邮件报告：「你追踪的 repo 中，XX 本周涨了 500 star」
