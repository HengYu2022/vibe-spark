---
id: dependency-graph
title: 依赖关系图谱
tags: [tool, data-viz, web]
difficulty: intermediate
time: 6-8h
stack: [Next.js, D3.js]
wow: "上传 package.json，看看你的项目到底依赖了多少东西"
---

## 一句话

上传 package.json，可视化展示所有依赖的关系和层级。

## 为什么值得做

每个 Node.js 项目的 node_modules 都是黑洞，但没人知道里面到底有什么。这个工具让你看到依赖的全貌：谁依赖谁、哪个包最重、有没有重复依赖。对优化项目体积很有帮助。

## 核心功能

1. 上传或粘贴 package.json
2. D3.js 力导向图展示依赖关系
3. 悬浮显示包详情（版本、大小、描述）

## 第一步

用 Next.js 初始化。做一个文件上传区，读取 package.json 的 `dependencies` 和 `devDependencies`。先不解析嵌套依赖，只展示第一层。用 D3.js 画一个简单的力导向图：中心节点是项目名，外围节点是各个依赖包，连线表示依赖关系。

## 扩展方向

- 接入 bundlephobia API 显示每个包的大小
- 过时版本高亮（对比 npm registry 最新版）
- 支持 Python（requirements.txt）和 Rust（Cargo.toml）
