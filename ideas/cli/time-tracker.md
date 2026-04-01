---
id: time-tracker
title: 个人 CLI 时间追踪器
tags: [cli, productivity]
difficulty: beginner
time: 2-4h
stack: [Node.js, SQLite]
wow: "你以为你在工作，其实你在摸鱼——数据不会说谎"
---

## 一句话

在终端里追踪你每天真正花在每个项目上的时间。

## 为什么值得做

每个程序员都觉得自己工作了 8 小时，但真正写代码的时间可能只有 3 小时。这个工具让你看到真相。做完自己每天都会用，数据是你自己的，不依赖任何第三方服务。

## 核心功能

1. `track start <project>` / `track stop` 控制计时
2. `track report` 生成今日/本周时间分布（终端表格输出）
3. 本地 SQLite 存储，数据完全属于你

## 第一步

创建 `index.js`，用 `commander` 库实现 `start` 和 `stop` 两个子命令。`start` 把项目名和开始时间写入本地 JSON 文件，`stop` 计算时长并追加到记录里。先不用数据库，JSON 文件就够。

## 扩展方向

- 周报 Markdown 自动生成（`track weekly`）
- 终端 UI 美化，用 `blessed` 或 `ink` 做交互式面板
- 跟 Git commit 时间轴对比，看「写代码」和「提交代码」的时间差
