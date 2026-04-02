---
id: sideproject-monitor
title: Side Project 状态监控
tags: [tool, web, data-viz]
difficulty: intermediate
time: 6-8h
stack: [Next.js, SWR, Recharts]
wow: "你的 5 个 side project 哪个挂了？一个面板看清楚"
---

## 一句话
一个面板监控你所有 side project 的运行状态：API 响应、部署状态、域名到期、SSL 证书。

## 为什么值得做
每个 vibe coder 都有好几个 side project 部署在不同平台上。但从来不知道它们是不是还活着。这个工具让你一个页面看到所有项目的健康状况，再也不会有「用户说你的网站挂了 3 天了你才知道」的尴尬。

## 核心功能
1. 添加项目（名称 + URL）
2. 定时 ping（每 5 分钟），记录状态码和响应时间
3. 状态看板（绿/黄/红指示灯 + 响应时间趋势图）

## 第一步
用 Next.js 初始化。做一个配置页面：input 输入项目名和 URL，存 localStorage。做一个看板页面：遍历所有项目，用 `fetch` ping 每个 URL，显示状态码。200 = 绿灯，非 200 = 红灯。先做手动刷新。

## 扩展方向
- 接入 Slack/微信通知：挂了立刻告警
- 域名到期检查（whois 查询）
- SSL 证书到期倒计时
