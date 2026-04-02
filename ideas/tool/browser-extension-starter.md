---
id: browser-extension-starter
title: 浏览器扩展入门套件
tags: [tool, web, browser-ext]
difficulty: advanced
time: 20h+
stack: [TypeScript, Chrome Extensions API, Tailwind CSS]
wow: "从零做一个真正能上架 Chrome Web Store 的浏览器扩展"
---

## 一句话

一个浏览器扩展开发模板 + 教程，从 manifest.json 到上架 Chrome Web Store。

## 为什么值得做

浏览器扩展是最被低估的分发渠道。用户不需要打开新网站、不需要注册，装完就在浏览器里。但入门门槛高（manifest v3、content scripts、background workers 这些概念很绕）。这个项目帮自己和别人跨过这个门槛。

## 核心功能

1. 完整的 Chrome Extension manifest v3 项目模板
2. Popup 页面（React + Tailwind）
3. Content Script 注入示例（修改网页内容）
4. Background Service Worker 示例（定时任务）

## 第一步

创建项目目录，写 `manifest.json`（manifest_version: 3, name, version, permissions）。创建 `popup.html` + `popup.js`，点击扩展图标时弹出一个小面板显示「Hello World」。在 Chrome 里加载未打包的扩展（chrome://extensions → 开发者模式 → 加载已解压的扩展）。先跑通这个最小流程。

## 扩展方向

- 做一个实用功能（如：一键提取页面所有链接、网页截图标注）
- 加入 Options 页面（扩展设置）
- 打包并提交到 Chrome Web Store
