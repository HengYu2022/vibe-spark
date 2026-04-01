---
id: ascii-art-generator
title: ASCII 艺术生成器
tags: [creative, cli, web]
difficulty: beginner
time: 3-4h
stack: [Node.js, Canvas API]
wow: "上传自拍 → 变成终端里的 ASCII 像素画"
---

## 一句话

把图片转换成 ASCII 字符画，可以在终端里显示。

## 为什么值得做

ASCII 艺术自带复古极客感，发到终端截图或 README 里都很酷。技术原理简单（图片灰度 → 映射字符），但效果让人惊喜。是一个完美的「1 天做完，效果很炫」项目。

## 核心功能

1. 上传图片或输入图片 URL
2. 图片 → 灰度 → 按亮度映射到 ASCII 字符（ .:-=+*#%@）
3. 输出 ASCII 文本（可复制）+ 终端彩色版本

## 第一步

创建 `ascii.js`。用 Canvas API（Node.js 用 `canvas` npm 包）加载图片，缩放到 80 列宽度，逐像素读取灰度值。定义字符映射表 `" .:-=+*#%@"`（从亮到暗），根据灰度值选择对应字符。把所有字符拼接后输出。先做 CLI 版本，Web 版第二步。

## 扩展方向

- Web 版本（拖拽上传 + 实时预览）
- 彩色 ASCII（用 ANSI 转义码给每个字符加颜色）
- 视频转 ASCII 动画（逐帧转换 + 播放）
