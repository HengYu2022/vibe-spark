---
id: music-visualizer
title: 音乐可视化器
tags: [creative, web, data-viz]
difficulty: intermediate
time: 6-8h
stack: [React, Web Audio API, Canvas]
wow: "拖入一首歌，看音乐变成流动的粒子和光波"
---

## 一句话

上传音频文件，实时生成跟节拍同步的炫酷可视化动画。

## 为什么值得做

音乐可视化是前端动效的天花板项目。用到 Web Audio API 频谱分析 + Canvas/WebGL 渲染，技术含量高，效果极其炫酷。做完放到作品集里绝对加分。

## 核心功能

1. 拖拽上传音频文件（MP3/WAV）
2. Web Audio API 实时频谱分析（FFT）
3. Canvas 渲染可视化效果（频谱柱状图 + 粒子跟节拍脉冲）

## 第一步

用 Vite + React 初始化。做一个文件上传区，拿到音频文件后用 `AudioContext` + `createMediaElementSource` 连接到 `AnalyserNode`。用 `getByteFrequencyData` 获取频谱数据（128 个频段）。在 Canvas 上画 128 个矩形柱子，高度跟频谱值对应，用 `requestAnimationFrame` 每帧更新。先做柱状图，粒子效果第二步。

## 扩展方向

- 多种可视化模式（波形、圆环、粒子场）
- WebGL 渲染（更流畅，支持 3D 效果）
- 截图/录制功能（导出为 GIF 或视频）
