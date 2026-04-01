---
id: pixel-art-editor
title: 像素画编辑器
tags: [creative, web, game]
difficulty: intermediate
time: 6-8h
stack: [React, Canvas API]
wow: "在浏览器里画像素画，导出为 PNG 或 GIF 精灵图"
---

## 一句话

浏览器内的像素画编辑器，画完可以导出为图片或精灵图。

## 为什么值得做

像素画有一种独特的复古美感，很多独立游戏开发者需要像素素材。做一个像素画编辑器既能练 Canvas 操作，又能产出一个自己和别人都会用的工具。

## 核心功能

1. 网格画布（16x16 / 32x32 / 64x64 可选）
2. 画笔、橡皮擦、填充、取色器
3. 调色板 + 自定义颜色
4. 导出为 PNG

## 第一步

用 Vite + React 初始化。创建一个 32x32 的 Canvas，每个像素格子占 16px（实际画布 512x512px）。监听 `mousedown` + `mousemove` 事件，计算鼠标位置对应哪个格子，用 `fillRect` 填充颜色。做一个颜色选择器（8 个预设色 + 一个 `<input type="color">`）。先做画笔和橡皮擦两个工具。

## 扩展方向

- 撤销/重做（用 history stack 保存每一步操作）
- 图层系统（前景层 + 背景层）
- 动画模式（多帧编辑 + GIF 导出）
