# Vibe Spark ✨

![Version](https://img.shields.io/badge/version-0.1.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Ideas](https://img.shields.io/badge/ideas-35-orange)

> Don't know what to build? Let Vibe Spark find your inspiration and get you started.
>
> 不知道做什么？让 Vibe Spark 帮你找到灵感，直接开工。

<!-- TODO: 录制 GIF demo 放在这里 -->
<!-- ![demo](assets/demo.gif) -->

你告诉它「我想做个 CLI 工具，有几小时时间」，它推给你 3 个精选灵感，帮你锁定方向，生成一份可以直接开工的项目文档。

这是一个 [Claude Code](https://claude.ai/code) skill，一行命令安装。

---

## 特性

- **上下文感知** — 检测你的技术栈和项目状态，推荐适合你的灵感
- **精选灵感库** — 35 条灵感，每条都有具体的「第一步」，读完就能开工
- **越用越懂你** — 记住你的偏好，不重复推荐你否掉的灵感
- **中英文自动切换** — 检测系统语言，自动适配

## 安装

**前置条件：** [Claude Code](https://claude.ai/code)

```bash
git clone https://github.com/HengYu2022/vibe-spark.git ~/.claude/skills/vibe-spark
```

**验证安装：** 在 Claude Code 中输入 `/vibe-spark`，看到欢迎横幅即安装成功。

**更新：**
```bash
git -C ~/.claude/skills/vibe-spark pull
```

**卸载：**
```bash
rm -rf ~/.claude/skills/vibe-spark ~/.vibe-spark
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

示例输出：[PROJECT_BRIEF.md](examples/PROJECT_BRIEF.md) · [SPARK_IDEA.md](examples/SPARK_IDEA.md)

## 灵感库

灵感按方向分类：

| 方向 | 数量 | 示例 |
|------|------|------|
| AI | 7 | 周报生成器、Prompt 调试器、AI 命名大师 |
| CLI | 5 | 时间追踪器、天气 CLI、Git commit 诗人 |
| Web | 7 | Emoji 密码锁、番茄钟 + Lo-fi、会议成本计算器 |
| Game | 5 | 打字竞速、贪吃蛇 AI、Roguelike 地牢 |
| Tool | 7 | README 生成器、正则练功房、JSON 可视化器 |
| Creative | 4 | ASCII 艺术生成器、音乐可视化、像素画编辑器 |

每条灵感都包含：
- 一句话介绍 + wow factor
- 为什么值得做
- 核心功能（3 条）
- **具体的第一步**（读完就能开始写代码）
- 扩展方向

## 贡献

最有价值的贡献是**新的灵感条目**。

详见 **[CONTRIBUTING.md](CONTRIBUTING.md)**，包含完整的模板和质量标准。

快速开始：
1. Fork → 在 `ideas/{分类}/` 下创建 `.md` 文件 → 提交 PR
2. CI 自动验证格式
3. 质量标准：**读完「第一步」能立刻开始写代码**

也可以：
- [提交灵感建议](https://github.com/HengYu2022/vibe-spark/issues/new?template=new-idea.md)
- [报告问题](https://github.com/HengYu2022/vibe-spark/issues/new?template=bug-report.md)
- [建议改进](https://github.com/HengYu2022/vibe-spark/issues/new?template=improvement.md)

## 常见问题

**输入 `/vibe-spark` 没反应？**
确认安装路径正确：`ls ~/.claude/skills/vibe-spark/SKILL.md`。如果文件存在，重启 Claude Code 再试。

**灵感库找不到？**
skill 安装在 `~/.claude/skills/vibe-spark/`，灵感库在 `ideas/` 子目录。如果你用的是其他安装路径，skill 会自动降级为自由输入模式。

**怎么更新到最新版本？**
```bash
git -C ~/.claude/skills/vibe-spark pull
```
Vibe Spark 每次启动时也会自动检测更新并提醒你。

## 相关链接

- [更新日志](CHANGELOG.md)
- [安全政策](SECURITY.md)
- [行为准则](CODE_OF_CONDUCT.md)

## License

MIT
