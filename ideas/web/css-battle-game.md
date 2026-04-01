---
id: css-battle-game
title: CSS 优先级格斗
tags: [web, game, education]
difficulty: intermediate
time: 6-8h
stack: [React, Tailwind CSS]
wow: "#id 一拳打飞 .class，!important 是最终 Boss"
---

## 一句话

两个 CSS 选择器对战，看谁的优先级更高，用格斗动画展示胜负。

## 为什么值得做

CSS 优先级是前端面试必考题，但死记硬背很无聊。做成格斗游戏既有趣又有教育意义，发到社交媒体上视觉冲击力很强。

## 核心功能

1. 输入两个 CSS 选择器，自动计算优先级
2. 格斗动画展示对决过程（血条、攻击特效）
3. 教学模式：解释优先级计算规则（a, b, c 三元组）

## 第一步

用 Vite + React 初始化项目。先实现 CSS 优先级计算函数：解析选择器字符串，统计 id 选择器数量（a）、class/属性/伪类数量（b）、元素/伪元素数量（c），返回 `[a, b, c]` 三元组。写几个测试用例验证。

## 扩展方向

- 随机生成选择器的挑战模式（猜谁赢）
- 排行榜：连续猜对多少题
- 加入 `!important`、inline style 等特殊规则
