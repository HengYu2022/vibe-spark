# Vibe Spark ✨

![Version](https://img.shields.io/badge/version-0.3.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Ideas](https://img.shields.io/badge/ideas-40-orange)

> Repetition → Tools. Curiosity → Projects.
>
> 把重复变工具，把迷茫变方向。

装一次，两件事自动发生：

**1. 发现你的重复** — 你正常用 Claude Code 工作，Vibe Spark 在后台静默观察。当它发现你在反复做同一类手动操作（3 次以上），主动帮你构思一个真正有用的效率工具：

```
（Claude 正常回复你的问题...）

✨ Vibe Spark: 你这个 session 已经手动整理了 3 次 RSS 数据。
要不要做一个自动情报聚合器？大概 4 小时就能搞定。
说「/vibe-spark」展开这个方向。
```

**2. 找到你的方向** — 想 vibe coding 但不知道做什么？输入 `/vibe-spark`，它自动读取你的 git 历史和工作空间，零输入直接生成专属方向：

```
> /vibe-spark

🔍 已读取你的工作空间...
  检测到：最近 10 个 commit 关于 Crypto 数据分析
  发现：3 个 RSS 抓取脚本、2 个数据格式化脚本

🎯 为你生成了 3 个专属方向：
  1. Crypto 情报聚合器 — 自动从 20 个信源抓取要闻
  2. 数据格式化 CLI — 一行命令搞定 JSON/CSV 转换
  3. 周报自动化引擎 — 把你的手动流程变成一键生成
```

你不需要告诉它你在做什么。它读你的代码历史就知道了。

**3. 自动周报** — 每 7 天自动生成一份工作模式周报，告诉你这周的重复模式和灵感建议。完全被动，不需要任何操作。

---

## 这个跟直接问 Claude 有什么区别？

直接问 Claude「给我推荐个项目」当然可以。但有三件事 Claude 做不到：

| Claude 做不到的 | Vibe Spark 做到了 |
|---------------|-----------------|
| 在你工作时**主动**发现重复并建议自动化 | hook 收集 git + 文件证据，基于数据判断而不是猜 |
| 读你的 git 历史**零输入**生成方向 | `/vibe-spark` 自动分析工作空间，不需要你说任何话 |
| 每周自动告诉你「你的时间花在了哪里」 | 周报自动生成工作模式分析 + 灵感建议 |
| 记住你跨 session 的偏好和历史 | profile.jsonl 持久化，越用越精准 |

**Vibe Spark 的独特之处不是「能读 git」（Claude 也能），而是它会主动读、主动分析、主动建议。你不需要想着问，它替你想着。**

## 它看什么？不看什么？

- **看什么：** 消息计数器 + 你的 git commit 标题 + 当前目录的文件名。每 20 条消息分析一次。
- **不看什么：** 不读文件内容，不读代码，不上传任何数据。
- **数据在哪：** `~/.vibe-spark/` 目录，计数器 + 偏好记录。你可以随时删掉。

所有数据留在你本地。hook 只读 git 标题和文件名来判断模式，不碰代码内容。

## 安装

```bash
# 1. 安装 skill
git clone https://github.com/HengYu2022/vibe-spark.git ~/.claude/skills/vibe-spark

# 2. 配置被动观察（可选但推荐）
bash ~/.claude/skills/vibe-spark/install.sh
```

不配 hook 也能用 `/vibe-spark` 手动获取灵感。配了 hook 才有「被动观察 + 主动建议」的体验。

**验证安装：** 重启 Claude Code，正常工作。发 20 条消息后会看到 `[✨ Vibe Spark 已激活]`。

**卸载：**
```bash
bash ~/.claude/skills/vibe-spark/uninstall.sh
```

## 两种使用方式

### 方式 1：被动观察（推荐）

正常工作就好。Vibe Spark 在后台静默运行。当它发现你在重复做某件事时：

```
（你的正常回复内容...）

✨ Vibe Spark: 你这个 session 里已经手动整理了 3 次 RSS 数据。
要不要做一个自动情报聚合器？大概 4 小时就能搞定。
说「/vibe-spark」我帮你展开这个方向。
```

每个 session 最多建议 2 次，不会刷屏。大部分时间你完全感知不到它的存在。

### 方式 2：主动触发

```
/vibe-spark
```

告诉它你在做什么，它根据你的背景生成 3 个专属方向。

## 灵感库

40 条精选灵感，覆盖练手项目和真实产品方向：

| 方向 | 数量 | 示例 |
|------|------|------|
| AI | 9 | 情报日报、会议纪要、Prompt 调试器 |
| CLI | 5 | 时间追踪器、发票生成器 |
| Web | 7 | 番茄钟 + Lo-fi、匿名吐槽墙 |
| Game | 5 | 打字竞速、Roguelike 地牢 |
| Tool | 10 | Star 趋势追踪、Side Project 监控 |
| Creative | 4 | 音乐可视化、生成式艺术 |

灵感库在 v2 中作为 AI 生成方向的质量标杆（few-shot 示例），不只是给你挑的列表。

## 贡献

最有价值的贡献是**新的灵感条目**。灵感库是 AI 生成方向的质量标杆，贡献的灵感越有代表性，AI 生成的方向质量越高。

详见 **[CONTRIBUTING.md](CONTRIBUTING.md)**。

## 关闭被动观察

不想被观察？两种方式：

```bash
# 方式 1：运行卸载脚本
bash ~/.claude/skills/vibe-spark/uninstall.sh

# 方式 2：只删 hook，保留 /vibe-spark 手动触发
# 从 ~/.claude/settings.json 中移除 vibe-spark 的 hook 条目
```

## 相关链接

- [更新日志](CHANGELOG.md) | [安全政策](SECURITY.md) | [行为准则](CODE_OF_CONDUCT.md)

## License

MIT
