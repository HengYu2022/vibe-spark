---
id: invoice-generator
title: 自由职业者发票自动生成器
tags: [tool, cli, productivity]
difficulty: intermediate
time: 6-8h
stack: [Node.js, PDF-lib]
wow: "每月花 2 小时做发票？现在输一行命令就出 PDF"
---

## 一句话
根据你的客户列表和工时记录，一键生成专业的 PDF 发票。

## 为什么值得做
自由职业者每个月都要做发票，但大多数人用 Word 模板手动改。这个工具让你 `invoice generate --client "公司A" --hours 40` 就出一份专业 PDF。自己用得上，其他自由职业者也会想要。

## 核心功能
1. 客户信息管理（`invoice client add`）
2. 工时记录（`invoice log --project "项目名" --hours 8`）
3. 一键生成 PDF 发票（`invoice generate`）

## 第一步
创建 `invoice.js`，用 `commander` 实现 `generate` 子命令。硬编码一个客户和工时数据，用 `pdf-lib` 库生成一个包含公司名、项目明细、金额总计的简单 PDF。先不做客户管理和工时记录，只做生成。

## 扩展方向
- 自动发送邮件（附带 PDF）
- 多币种支持
- 月度收入统计报表
