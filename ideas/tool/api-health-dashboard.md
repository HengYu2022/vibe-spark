---
id: api-health-dashboard
title: API 健康仪表盘
tags: [tool, web, data-viz]
difficulty: intermediate
time: 6-8h
stack: [Next.js, SWR, Recharts]
wow: "你的 5 个 side project API，哪个挂了一目了然"
---

## 一句话

一个好看的面板，实时监控你所有 side project 的 API 状态。

## 为什么值得做

每个 vibe coder 都有好几个 side project 部署在 Vercel / Railway / Fly.io 上，但从不知道它们是不是还活着。这个仪表盘让你一个页面看到所有项目的健康状况。

## 核心功能

1. 添加/管理 API 端点（URL + 自定义名称）
2. 定时 ping 检测（每 5 分钟），记录响应时间和状态码
3. 响应时间趋势图 + 当前状态指示灯（绿/黄/红）

## 第一步

用 Next.js 初始化。做一个配置页面：input 输入 API URL + 名称，保存到 localStorage。做一个仪表盘页面：遍历所有端点，用 `fetch` ping 每个 URL，显示状态码和响应时间。用绿色圆点表示 200，红色表示其他。先做手动刷新，自动刷新和图表第二步做。

## 扩展方向

- 用 Recharts 做 24 小时响应时间趋势图
- 状态变更通知（接入 Slack 或邮件）
- 公开状态页面（给用户看的 status page）
