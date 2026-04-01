---
id: voice-mood-diary
title: 声音情绪日记
tags: [ai, creative, web]
difficulty: intermediate
time: 8-12h
stack: [Next.js, Web Audio API, Claude API]
wow: "对着麦克风说 30 秒，AI 画出你今天的情绪色彩"
---

## 一句话

对着麦克风说话，AI 分析语气情绪并生成每日情绪曲线。

## 为什么值得做

大部分情绪记录 app 要你手动选心情，很麻烦。用声音自动分析情绪是一个全新的交互方式，技术感和仪式感都很强。做出来会让人说「whoa」。

## 核心功能

1. 点击录音 → Web Audio API 录制 30 秒语音
2. 转文字 + AI 情绪分析（正面/负面/中性 + 具体情绪标签）
3. 每日情绪卡片（情绪色彩 + 关键词 + 一句话总结）

## 第一步

用 Next.js 初始化。做一个录音按钮，用 `navigator.mediaDevices.getUserMedia` 获取麦克风权限，`MediaRecorder` API 录制音频。录完后把音频转成 base64，发送到 API route。MVP 阶段先不做语音转文字，让用户录完后手动输入文字内容，Claude 分析情绪。语音识别第二步再接。

## 扩展方向

- 接入 Whisper API 做语音转文字
- 月度情绪报告（情绪趋势图 + 高频词云）
- 情绪日历视图（类似 GitHub 贡献图，颜色代表情绪）
