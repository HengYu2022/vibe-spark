---
id: generative-art
title: 生成式艺术画廊
tags: [creative, web, data-viz]
difficulty: intermediate
time: 4-6h
stack: [React, Canvas API]
wow: "每次刷新页面都是一幅独一无二的算法艺术品"
---

## 一句话

用代码生成随机艺术品，每次刷新都是独一无二的一幅画。

## 为什么值得做

生成式艺术是代码和美学的交叉点。不需要会画画，只需要理解数学和随机性就能创造出惊人的视觉作品。每一行代码都直接变成画面，反馈感极强。

## 核心功能

1. 多种算法风格（流场、递归分形、沃罗诺伊图）
2. 每次刷新随机生成新参数，产出独一无二的作品
3. 一键保存为高清 PNG

## 第一步

用 Vite + React 初始化。在 Canvas 上实现最简单的流场（flow field）：创建一个噪声网格（用 `Math.sin(x*0.01 + y*0.01)` 模拟 Perlin noise），在每个网格点放一个粒子，让粒子沿噪声方向移动并画出轨迹。用半透明的线条（`globalAlpha = 0.05`），叠加后会产生柔和的流动效果。

## 扩展方向

- 加入真正的 Perlin noise 库（simplex-noise）
- 多种算法可切换（分形树、粒子爆炸、几何拼贴）
- NFT 模式：给每幅画生成唯一的种子数可复现
