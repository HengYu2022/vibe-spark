---
id: markdown-slides
title: Markdown 幻灯片
tags: [tool, web, productivity]
difficulty: intermediate
time: 6-8h
stack: [Next.js, remark]
wow: "写 Markdown，按 --- 分页，F11 全屏就是 PPT"
---

## 一句话

用 Markdown 写幻灯片，实时预览，全屏演示。

## 为什么值得做

程序员做分享最讨厌开 PowerPoint。Markdown 写幻灯片是最自然的方式。虽然有 reveal.js 和 Marp，但自己做一个可以完全定制样式，而且这是一个很好的 Markdown 解析练手项目。

## 核心功能

1. 左边写 Markdown，用 `---` 分割幻灯片
2. 右边实时预览当前幻灯片
3. 全屏演示模式（方向键翻页）

## 第一步

用 Next.js 初始化。左边 textarea 输入 Markdown，按 `---` split 成数组，每个元素是一页幻灯片。右边用 `remark` + `remark-html` 把当前页的 Markdown 转成 HTML 渲染。用 `useState` 管理当前页码，键盘左右箭头切换页码。

## 扩展方向

- 多种主题（暗色、亮色、极简、赛博朋克）
- 代码块语法高亮（用 Prism.js）
- 导出为 PDF
