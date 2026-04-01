---
id: typing-race
title: 代码打字竞速
tags: [game, web, education]
difficulty: intermediate
time: 4-6h
stack: [React, Tailwind CSS]
wow: "看看你打 for 循环的速度能不能超过 100 WPM"
---

## 一句话

打字竞速游戏，但打的不是普通文本，而是真实代码片段。

## 为什么值得做

普通打字游戏打的是英文句子，但程序员需要练的是代码。括号、分号、缩进这些特殊字符的肌肉记忆很重要。而且做成竞速游戏，有排行榜就有传播力。

## 核心功能

1. 随机显示一段代码片段（JavaScript / Python / Go 等）
2. 实时高亮正确/错误字符，计算 WPM 和准确率
3. 打完后显示成绩单（速度、准确率、最慢的字符）

## 第一步

用 Vite + React 初始化。硬编码 5 段 JavaScript 代码片段作为题库。做一个打字区：上面显示目标代码，下面是隐藏的 input 捕获键盘输入。每敲一个键，对比当前字符是否正确，正确变绿，错误变红。用 `Date.now()` 计算开始到结束的时间。

## 扩展方向

- 多语言代码片段（Python、Go、Rust）
- 双人对战模式（WebSocket 实时同步）
- 每日挑战 + 排行榜
