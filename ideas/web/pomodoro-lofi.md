---
id: pomodoro-lofi
title: 番茄钟 + Lo-fi 电台
tags: [web, creative, productivity]
difficulty: intermediate
time: 6-8h
stack: [React, Web Audio API, Canvas]
wow: "25 分钟专注 + lo-fi beats + 粒子动画背景 = 心流状态"
---

## 一句话

内置 lo-fi 音乐的番茄工作法计时器，带动态粒子背景，帮你进入心流。

## 为什么值得做

番茄钟 app 有一万个，但大部分又丑又无聊。加上 lo-fi 音乐和视觉动效，这就不只是一个工具，而是一种氛围。前端动效是你的强项，这个项目能充分发挥。

## 核心功能

1. 25 分钟专注 / 5 分钟休息的番茄循环
2. lo-fi 音乐播放（可用免费的 lo-fi 音频流或本地音频文件）
3. 动态粒子背景（专注时缓慢流动，休息时加速扩散）

## 第一步

用 Vite + React 初始化。先做计时器核心：一个圆形进度环 + 倒计时数字。用 `useState` 管理剩余秒数，`useEffect` + `setInterval` 每秒更新。点击开始倒计时，到 0 时切换到休息模式（改变颜色）。音乐和粒子第二步再加。

## 扩展方向

- 粒子背景跟音乐节拍同步（Web Audio API 分析频谱）
- 今日专注统计（总时长、完成几个番茄）
- 多种氛围主题（咖啡馆、雨天、太空）
