---
id: prompt-debugger
title: Prompt 调试器
tags: [ai, tool, web]
difficulty: intermediate
time: 6-8h
stack: [Next.js, Monaco Editor, Claude API]
wow: "你的 prompt 有 3 个问题：角色不明确、约束太松、输出格式缺失"
---

## 一句话

可视化地拆解、标注和优化你的 AI prompt。

## 为什么值得做

写 prompt 是 2026 年最重要的技能之一，但大部分人写的 prompt 质量很差。这个工具帮你看到 prompt 的结构问题并给出优化建议。对 AI 开发者和 vibe coder 都有刚需。

## 核心功能

1. Prompt 结构高亮（自动识别并标注：角色定义、上下文、约束、输出格式）
2. AI 分析 prompt 质量，给出具体改进建议
3. 优化前后对比视图

## 第一步

用 Next.js 初始化。左边放一个 textarea（输入原始 prompt），右边放分析结果区。点击「分析」按钮，调用 Claude API，system prompt 为「分析这个 prompt 的结构，标注哪些部分是角色定义/上下文/约束/输出格式，指出缺失的部分，给出 3 条改进建议」。先做文本分析，语法高亮第二步再做。

## 扩展方向

- 用 Monaco Editor 做语法高亮（自定义 prompt 语言）
- Prompt 版本对比（A/B 测试两个 prompt 的效果）
- 常见 prompt 模式库（few-shot、chain-of-thought 等模板）
