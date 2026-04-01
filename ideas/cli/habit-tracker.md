---
id: habit-tracker
title: 终端习惯打卡器
tags: [cli, productivity]
difficulty: beginner
time: 3-5h
stack: [Node.js, SQLite]
wow: "打开终端第一件事：今天的 3 个习惯完成了吗？"
---

## 一句话

在终端里追踪每日习惯，生成 GitHub 风格的打卡热力图。

## 为什么值得做

习惯追踪 app 有一万个，但都要打开手机。程序员每天第一个打开的是终端，把打卡放在终端里才是最低摩擦的方式。GitHub 风格热力图让你一眼看到坚持了多久。

## 核心功能

1. `habit add "读书30分钟"` 添加习惯
2. `habit done "读书30分钟"` 打卡
3. `habit stats` 显示 GitHub 风格热力图（用 Unicode 方块字符）

## 第一步

创建 `habit.js`，用 `commander` 实现 `add` 和 `done` 两个子命令。数据存在 `~/.habits.json` 里，结构为 `{ habits: [{ name, checkins: ["2026-04-01", ...] }] }`。先实现 add 和 done，stats 热力图第二步再做。

## 扩展方向

- 热力图用 `chalk` 做彩色渲染（浅绿到深绿）
- 连续打卡天数统计 + streak 提醒
- 每日终端启动时自动提醒未完成的习惯
