---
id: multiplayer-quiz
title: 多人实时答题
tags: [game, web, social]
difficulty: intermediate
time: 6-8h
stack: [Next.js, Supabase Realtime, Tailwind CSS]
wow: "把链接发给朋友，10 秒后开始抢答编程题"
---

## 一句话

多人实时答题游戏，专注编程知识，支持自定义题库。

## 为什么值得做

Kahoot 很火但没有专门的编程题库。做一个程序员版的实时答题，团建、面试培训、社群活动都能用。而且 Supabase Realtime 让多人同步变得很简单。

## 核心功能

1. 房主创建房间，分享链接给朋友
2. 所有人同时看到题目，抢答计时
3. 实时排行榜（答对 + 速度 = 积分）

## 第一步

用 Next.js + Supabase 初始化。创建 `rooms` 表（id, host_id, status）和 `players` 表（id, room_id, name, score）。做一个创建房间页面和一个加入房间页面。用 Supabase Realtime 订阅 `players` 表变化，实现「有人加入时实时更新玩家列表」。题目和答题逻辑第二步做。

## 扩展方向

- 自定义题库上传（JSON 格式）
- 多种题型（选择题、填空题、代码补全）
- 历史战绩和全局排行榜
