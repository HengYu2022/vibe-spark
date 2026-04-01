---
id: emoji-password
title: Emoji 密码锁
tags: [web, creative, game]
difficulty: beginner
time: 3-5h
stack: [React, Tailwind CSS]
wow: "忘记 Abc123!@# 吧，你的密码是 🐱🌙🔥🎸"
---

## 一句话

用 emoji 组合替代传统密码的趣味登录体验演示。

## 为什么值得做

每个人都讨厌记密码。用 emoji 做密码虽然不一定更安全，但绝对更有趣。这个项目视觉冲击力强，适合发到社交媒体上，而且前端动效可以做得很炫。

## 核心功能

1. emoji 网格选择器（6x6 网格，点击选 4-6 个 emoji 作为密码）
2. 设置密码 → 输入密码 → 验证匹配
3. 成功/失败的动画反馈（成功：emoji 飞散庆祝；失败：抖动 + 变灰）

## 第一步

用 `create-react-app` 或 `vite` 初始化项目。先做一个 6x6 的 emoji 网格组件，点击 emoji 会高亮并加入「密码序列」。底部显示已选的 emoji 序列。不需要后端，密码存在 localStorage 里。

## 扩展方向

- 加入「emoji 密码强度计」（组合数越多越强）
- 多主题 emoji 集（动物、食物、表情、天气）
- 做成 npm 包，让别人在自己项目里用
