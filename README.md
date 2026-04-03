# Vibe Spark ✨

![Version](https://img.shields.io/badge/version-0.2.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Ideas](https://img.shields.io/badge/ideas-40-orange)

**你的效率引擎 + 灵感引擎。**

装一次，两件事自动发生：

**1. 效率引擎** — 你正常用 Claude Code 工作，Vibe Spark 在后台静默观察。当它发现你在反复做同一类手动操作（3 次以上），主动帮你构思一个真正有用的效率工具：

```
（Claude 正常回复你的问题...）

✨ Vibe Spark: 你这个 session 已经手动整理了 3 次 RSS 数据。
要不要做一个自动情报聚合器？大概 4 小时就能搞定。
说「/vibe-spark」展开这个方向。
```

**2. 灵感引擎** — 想 vibe coding 但不知道做什么？输入 `/vibe-spark`，告诉它你在做什么，它根据你的背景生成专属方向：

```
你：「我在做 AI 周报和 Crypto 投研」

Vibe Spark：
  1. Crypto 情报聚合器 — 自动从 20 个信源抓取要闻
  2. 周报模板引擎 — 把你的周报流程产品化
  3. Token 用量看板 — 可视化你每天的 AI 花费
```

不是从固定列表挑，是根据**你的真实背景**定制。

---

## 这个跟直接问 Claude 有什么区别？

直接问 Claude「给我推荐个项目」当然可以。但有三件事 Claude 做不到：

| Claude 做不到的 | Vibe Spark 做到了 |
|---------------|-----------------|
| 在你工作时**主动**跳出来说「这个可以自动化」 | 通过 hook 每 20 条消息自动检测重复模式 |
| 记住你上周否掉了什么、偏好什么方向 | 跨 session 持久化偏好，越用越精准 |
| 保证每次推荐的格式和质量一致 | 40 条精选灵感作为 AI 的质量标杆 |

**效率引擎（被动观察）是 Vibe Spark 独有的能力，没有任何其他 skill 能做到。**

## 它看什么？不看什么？

- **看什么：** 只看一个数字（消息计数器）。每 20 条消息让 Claude 回顾一下对话历史。
- **不看什么：** 不记录你的消息内容，不记录代码，不上传任何数据。
- **数据在哪：** `~/.vibe-spark/` 目录，只有计数器文件。你可以随时删掉。

零隐私风险。Claude 本身已经有对话上下文，Vibe Spark 只是提醒它「顺便看看有没有值得建议的」。

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
