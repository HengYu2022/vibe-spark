---
id: json-visualizer
title: JSON 可视化器
tags: [tool, web, data-viz]
difficulty: beginner
time: 3-5h
stack: [React, D3.js]
wow: "把嵌套 10 层的 JSON 变成一棵好看的交互式树"
---

## 一句话

粘贴 JSON 数据，自动渲染成可折叠的交互式树形图。

## 为什么值得做

调试 API 返回的大 JSON 是日常工作。浏览器的 JSON viewer 功能太弱，专业工具又太重。一个轻量好看的 JSON 可视化器，自己每天都会用。

## 核心功能

1. 粘贴 JSON → 自动解析并渲染树形图
2. 节点可折叠/展开，显示类型和值
3. 搜索功能：输入 key 名快速定位

## 第一步

用 Vite + React 初始化。左边 textarea 粘贴 JSON，右边渲染树。写一个递归组件 `JsonNode`：如果值是对象/数组，渲染子节点（带缩进和折叠按钮）；如果是基础类型，直接显示值（字符串绿色、数字蓝色、布尔紫色、null 灰色）。先不用 D3.js，纯 React 递归组件就够。

## 扩展方向

- 用 D3.js 做力导向图模式（适合看数据关系）
- JSON 对比模式（左右两个 JSON，高亮差异）
- 支持从 URL 直接加载 JSON（输入 API 地址）
