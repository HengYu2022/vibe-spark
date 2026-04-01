# Vibe Spark ✨

> Don't know what to build? Let Vibe Spark find your inspiration and get you started.
>
> 不知道做什么？让 Vibe Spark 帮你找到灵感，直接开工。

Vibe Spark 是一个 Claude Code skill，专为 vibe coder 设计的**灵感导航员**。

它不是一个静态的 idea 列表，而是一个会跟你对话的灵感伙伴：
- **上下文感知** — 检测你的技术栈和项目状态，推荐适合你的灵感
- **高质量策展库** — 35 条精选灵感，每条都有具体的「第一步」，读完就能开工
- **越用越懂你** — 记住你的偏好，不重复推荐你否掉的灵感

## 安装

```bash
git clone https://github.com/HengYu2022/vibe-spark.git ~/.claude/skills/vibe-spark
```

## 使用

在 Claude Code 里输入：

```
/vibe-spark
```

Vibe Spark 会：
1. 检测你的环境和偏好
2. 推荐 3 个适合你的灵感
3. 帮你锁定方向
4. 生成 `PROJECT_BRIEF.md`，直接开工

## 灵感库

灵感按方向分类：

| 方向 | 示例 |
|------|------|
| CLI | 时间追踪器、天气 CLI、Git commit 诗人 |
| Web | Emoji 密码锁、番茄钟 + Lo-fi、会议成本计算器 |
| AI | 周报生成器、Prompt 调试器、AI 命名大师 |
| Game | 打字竞速、贪吃蛇 AI、记忆翻牌 |
| Tool | README 生成器、正则练功房、JSON 可视化器 |
| Creative | ASCII 艺术生成器、音乐可视化、像素画编辑器 |

每条灵感都包含：
- 一句话介绍 + wow factor
- 为什么值得做
- 核心功能（3 条）
- **具体的第一步**（读完就能开始写代码）
- 扩展方向

## Contributing

We welcome contributions! The most valuable contribution is **new inspiration ideas**.

See **[CONTRIBUTING.md](CONTRIBUTING.md)** for the full guide, templates, and quality checklist.

Quick start:
1. Fork → create `ideas/{category}/your-idea.md` → submit PR
2. CI automatically validates your idea format
3. Quality bar: "Can I start coding after reading the First Step?"

You can also:
- [Suggest an idea](https://github.com/HengYu2022/vibe-spark/issues/new?template=new-idea.md) via issue
- [Report a bug](https://github.com/HengYu2022/vibe-spark/issues/new?template=bug-report.md)
- [Suggest improvements](https://github.com/HengYu2022/vibe-spark/issues/new?template=improvement.md)

## License

MIT
