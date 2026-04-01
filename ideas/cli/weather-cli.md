---
id: weather-cli
title: 终端天气小组件
tags: [cli, api]
difficulty: beginner
time: 1-2h
stack: [Node.js]
wow: "打开终端就知道要不要带伞，不用解锁手机"
---

## 一句话

在终端里显示当前天气和未来 3 天预报，带 ASCII 天气图标。

## 为什么值得做

最简单的 API 调用项目，1-2 小时就能做完。练手 CLI 开发和 API 对接的最佳入门项目，而且做完自己真的会用。

## 核心功能

1. 自动检测位置（通过 IP 地理定位）
2. 显示当前温度、天气状况、湿度、风速
3. ASCII 艺术天气图标（☀️ 晴天、🌧️ 雨天、⛅ 多云）

## 第一步

创建 `weather.js`，用 `fetch` 调用 `wttr.in` 的 API（免费，不需要 key）：`https://wttr.in/?format=j1`。解析返回的 JSON，提取当前温度和天气描述，用 `console.log` 格式化输出。

## 扩展方向

- 支持手动指定城市：`weather 上海`
- 加入未来 3 天预报的表格展示
- 集成到 shell 的 prompt 里，每次打开终端自动显示
