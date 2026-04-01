# AI 周报生成器

> 粘贴这周的零散笔记和 commit 记录，AI 帮你写一份结构清晰的周报。

## 技术栈
- Next.js
- Claude API
- react-markdown

## 核心功能（MVP）
1. 文本输入区：粘贴本周的笔记、commit message、聊天记录
2. AI 结构化整理：自动分类为「完成」「进行中」「下周计划」
3. 一键复制为 Markdown

## 第一步
用 Next.js 创建单页面。左边是文本输入区（textarea），右边是生成的周报预览。点击「生成」按钮，把输入文本发送到 `/api/generate` API route，调用 Claude API 生成结构化周报。

## 扩展方向（做完 MVP 再看）
- 接入 GitHub API，自动拉取本周的 commit 和 PR
- 周报历史归档
