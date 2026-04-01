---
id: color-mood-board
title: 色彩情绪板
tags: [web, ai, creative]
difficulty: beginner
time: 3-4h
stack: [Next.js, Claude API]
wow: "输入「深夜咖啡馆」，AI 给你一组完美配色"
---

## 一句话

输入一个心情、场景或关键词，AI 生成一组配色方案和应用预览。

## 为什么值得做

设计师和前端开发者经常为配色发愁。这个工具把「感觉」变成「颜色」，过程很有魔法感。技术实现简单但效果惊艳，适合发到设计社区。

## 核心功能

1. 文本输入 → AI 生成 5 个颜色的配色方案（带 hex 值）
2. 实时预览：把配色应用到按钮、卡片、渐变背景等 UI 组件上
3. 一键复制为 CSS 变量

## 第一步

用 Next.js 创建单页面。一个输入框 + 一个「生成」按钮。调用 Claude API，prompt 为「根据关键词生成 5 个颜色的配色方案，返回 JSON 格式 [{name, hex, role}]，role 为 primary/secondary/accent/background/text」。拿到结果后渲染 5 个色块。

## 扩展方向

- 多种预览模式（网页、App、海报）
- 配色方案收藏和分享
- 导出为 Tailwind config / CSS variables / Figma tokens
