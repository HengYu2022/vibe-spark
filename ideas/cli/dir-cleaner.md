---
id: dir-cleaner
title: 目录瘦身大师
tags: [cli, tool, productivity]
difficulty: beginner
time: 2-4h
stack: [Node.js]
wow: "你的 node_modules 有 1.2GB，你知道吗？"
---

## 一句话

扫描指定目录，找出占空间最多的文件和文件夹，一键清理。

## 为什么值得做

每个开发者的硬盘里都堆满了 node_modules、.next、dist 这些构建产物。这个工具帮你快速发现和清理它们。自己每天都会用，做完立刻有用。

## 核心功能

1. 扫描目录，按大小排序展示 top 10 大文件/文件夹
2. 自动识别常见构建产物（node_modules、.next、dist、__pycache__）
3. 交互式确认后一键删除

## 第一步

创建 `clean.js`，用 Node.js 内置的 `fs` 模块递归扫描指定目录。计算每个子目录的总大小，按大小降序排列，输出 top 10。用 `chalk` 库给不同大小的目录加颜色（绿色 < 100MB，黄色 < 500MB，红色 > 500MB）。

## 扩展方向

- 加入 `--dry-run` 模式，只显示不删除
- 支持自定义规则（哪些目录名要清理）
- 定时扫描提醒（每周扫一次）
