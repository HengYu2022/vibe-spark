---
id: anonymous-wall
title: 匿名吐槽墙
tags: [web, social]
difficulty: intermediate
time: 6-8h
stack: [Next.js, Supabase]
wow: "「又是被产品经理改需求的一天」+1 +1 +1"
---

## 一句话

匿名发布技术吐槽，其他人可以 +1 表示「我也是」。

## 为什么值得做

每个程序员都有想吐槽但不方便实名说的话。匿名 + 共鸣（+1）机制会让这个产品自带传播力。而且这是练 Supabase 实时数据库的好项目。

## 核心功能

1. 匿名发布吐槽（无需登录，限 140 字）
2. +1 投票（每人每条只能 +1 一次，用 localStorage 防刷）
3. 热门/最新两种排序

## 第一步

用 Next.js + Supabase 初始化。在 Supabase 创建 `posts` 表（id, content, votes, created_at）。做一个发布表单（textarea + 提交按钮）和一个帖子列表。先不做投票，只做发布和展示。Supabase 的 JS 客户端 `@supabase/supabase-js` 一行代码就能插入和查询。

## 扩展方向

- Supabase Realtime 实现实时更新（新吐槽自动出现）
- 标签分类（#后端 #前端 #产品经理 #甲方）
- 每条吐槽 72 小时后自动过期消失
