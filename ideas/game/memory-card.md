---
id: memory-card
title: 记忆翻牌
tags: [game, web]
difficulty: beginner
time: 3-4h
stack: [React, CSS Animation]
wow: "翻牌配对，但卡牌上是编程语言的 logo"
---

## 一句话

经典记忆翻牌游戏，卡牌内容是编程语言 logo 和技术图标。

## 为什么值得做

记忆翻牌是最适合前端新手的游戏项目之一：逻辑简单、交互明确、动画效果好做。用编程语言 logo 做卡牌内容比普通水果图片更有程序员特色，适合发到开发者社区。

## 核心功能

1. 4x4 网格的翻牌游戏（8 对卡牌）
2. 3D 翻转动画（CSS transform）
3. 计时 + 计步，显示最终成绩

## 第一步

用 Vite + React 初始化。创建一个 `Card` 组件，正面显示技术 logo（用 emoji 代替图片：⚛️ React、🐍 Python、🦀 Rust 等），背面是统一的问号。用 CSS `transform: rotateY(180deg)` 做翻转动画。状态管理：`useState` 存哪些牌已翻开、当前翻开的两张是否匹配。

## 扩展方向

- 难度递增（4x4 → 6x6 → 8x8）
- 多人在线对战（轮流翻牌，谁配对多谁赢）
- 自定义卡牌主题（框架 logo、公司 logo、表情包）
