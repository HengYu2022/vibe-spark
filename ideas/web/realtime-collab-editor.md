---
id: realtime-collab-editor
title: 实时协作文本编辑器
tags: [web, tool, social]
difficulty: advanced
time: 1week+
stack: [Next.js, Yjs, WebSocket]
wow: "Google Docs 的极简版，从零手搓 CRDT 协作"
---

## 一句话

多人实时协作的文本编辑器，用 CRDT 解决冲突，从零理解协作技术原理。

## 为什么值得做

实时协作是现代 Web 应用的核心技术（Google Docs、Figma、Notion 都用）。自己实现一个能深入理解 CRDT、OT 这些底层算法。技术含量高，面试聊起来很有料。

## 核心功能

1. 多人同时编辑同一个文档（光标实时可见）
2. CRDT 冲突解决（用 Yjs 库）
3. 每个用户有不同颜色的光标和选区

## 第一步

用 Next.js 初始化。安装 `yjs` 和 `y-websocket`。创建一个页面，包含一个 `contenteditable` 的 div。用 `Y.Doc` 创建共享文档，`y-websocket` 连接到公共测试服务器（`wss://demos.yjs.dev`）。先用 Yjs 的默认 binding 跑通两个浏览器标签页的实时同步。自定义 UI 和光标第二步做。

## 扩展方向

- 自部署 WebSocket 服务器（y-websocket 的 Node.js 版本）
- Markdown 渲染模式（编辑 Markdown，实时预览）
- 版本历史（用 Yjs 的 snapshot 功能）
