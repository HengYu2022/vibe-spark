# 个人 CLI 时间追踪器

> 在终端里追踪你每天真正花在每个项目上的时间。

## 技术栈
- Node.js
- SQLite（通过 better-sqlite3）
- Commander.js（CLI 框架）

## 核心功能（MVP）
1. `track start <project>` / `track stop` 控制计时
2. `track report` 生成今日/本周时间分布（终端表格输出）
3. 本地 SQLite 存储，数据完全属于你

## 第一步
创建 `index.js`，用 `commander` 库实现 `start` 和 `stop` 两个子命令。`start` 把项目名和开始时间写入本地 JSON 文件，`stop` 计算时长并追加到记录里。先不用数据库，JSON 文件就够。

## 扩展方向（做完 MVP 再看）
- 周报 Markdown 自动生成（`track weekly`）
- 终端 UI 美化，用 `blessed` 或 `ink` 做交互式面板
