#!/bin/bash
# Vibe Spark v0.3.0 — 智能被动观察 hook
# 三个能力：证据收集 + 跨 session 分析 + 自动周报
# 零隐私：只读 git log 和文件名，不读文件内容

VIBE_DIR=~/.vibe-spark
mkdir -p "$VIBE_DIR"

# === Session 级计数器 ===
SESSION_COUNTER="$VIBE_DIR/counter-$PPID"
find "$VIBE_DIR" -name "counter-*" -mmin +1440 -delete 2>/dev/null

COUNT=$(cat "$SESSION_COUNTER" 2>/dev/null || echo 0)
COUNT=$((COUNT + 1))
echo $COUNT > "$SESSION_COUNTER"

# === 周报检查（每 7 天一次）===
LAST_WEEKLY="$VIBE_DIR/last-weekly"
NOW=$(date +%s)
LAST_WEEKLY_TS=$(cat "$LAST_WEEKLY" 2>/dev/null || echo 0)
DAYS_SINCE_WEEKLY=$(( (NOW - LAST_WEEKLY_TS) / 86400 ))

if [ "$DAYS_SINCE_WEEKLY" -ge 7 ] && [ $((COUNT % 20)) -eq 0 ]; then
  # 先检查活动量：少于 5 个 commit 就不触发周报，完全静默
  WEEKLY_COMMIT_COUNT=$(git log --oneline --since="7 days ago" 2>/dev/null | wc -l | tr -d ' ')
  if [ "$WEEKLY_COMMIT_COUNT" -lt 5 ]; then
    # 活动量不足，重置计时但不输出任何内容
    echo $NOW > "$LAST_WEEKLY"
  else
  # 触发周报
  echo $NOW > "$LAST_WEEKLY"

  # 收集周报数据
  WEEKLY_GIT=$(git log --oneline --since="7 days ago" 2>/dev/null | head -20)
  WEEKLY_PROFILE=$(cat "$VIBE_DIR/profile.jsonl" 2>/dev/null | tail -10)
  WEEKLY_FILES=$(find . -maxdepth 2 -mtime -7 -type f -not -path './.git/*' -not -path './node_modules/*' 2>/dev/null | head -20)

  cat << WEEKLY
【✨ Vibe Spark 周报】请根据以下数据，生成一份简短的工作模式周报。

最近 7 天的 git commits：
$WEEKLY_GIT

最近修改的文件（文件名，不含内容）：
$WEEKLY_FILES

用户历史偏好（来自 profile.jsonl）：
$WEEKLY_PROFILE

请生成：
1. 工作方向分布（用简单的文字比例表示，如「数据抓取 60%、格式化 20%、其他 20%」）
2. 发现的重复模式（如果有）
3. 基于以上模式的 1-2 个灵感建议

格式：在回复末尾空一行后输出，用以下格式：

📊 Vibe Spark 周报
[工作方向分布]
[重复模式发现]
💡 建议：[1-2 个灵感]

如果数据中没有明显的重复模式，只展示工作方向分布，不要硬编灵感建议。
WEEKLY

  fi # WEEKLY_COMMIT_COUNT 检查结束

# 周报触发时不再触发普通观察
elif [ $((COUNT % 20)) -eq 0 ]; then
  # === 普通观察（每 20 条消息）===

  # 升级 1：收集工作空间证据
  EVIDENCE_GIT=$(git log --oneline -10 2>/dev/null)
  EVIDENCE_FILES=$(ls -t 2>/dev/null | head -10)
  EVIDENCE_RECENT=$(find . -maxdepth 2 -mmin -60 -type f -not -path './.git/*' -not -path './node_modules/*' 2>/dev/null | head -10)

  # 升级 2：跨 session 历史
  CROSS_SESSION=$(cat "$VIBE_DIR/profile.jsonl" 2>/dev/null | tail -5)

  # 如果所有证据都为空（空目录 + 无 git + 无历史），不注入任何内容
  if [ -z "$EVIDENCE_GIT" ] && [ -z "$EVIDENCE_FILES" ] && [ -z "$EVIDENCE_RECENT" ] && [ -z "$CROSS_SESSION" ]; then
    # 完全没有数据，静默跳过
    true
  else

  # 第一次触发时附存在确认
  FIRST_TIME_NOTE=""
  if [ "$COUNT" -eq 20 ]; then
    FIRST_TIME_NOTE="如果没发现重复模式，只在回复末尾加一行小字：[✨ Vibe Spark 已激活，正在观察你的工作模式]。"
  else
    FIRST_TIME_NOTE="如果没发现重复模式，什么都不加，也不要提 Vibe Spark。"
  fi

  cat << SPARK
【Vibe Spark 灵感观察】基于以下工作空间数据，判断用户是否在重复做类似的手动操作。

工作空间证据：
最近 git commits：
$EVIDENCE_GIT

当前目录文件（最近修改）：
$EVIDENCE_FILES

最近 1 小时创建/修改的文件：
$EVIDENCE_RECENT

跨 session 历史偏好：
$CROSS_SESSION

判断规则：
- 如果 git commits 中有 3 条以上涉及类似主题（如都是抓取、都是格式化），这是重复模式
- 如果最近文件中有 3 个以上名称相似的文件（如 scrape1.py、scrape2.py），这是重复模式
- 如果跨 session 历史显示用户多次关注同一方向，信号更强
- 调试 bug、读代码、code review 不算重复

如果发现重复模式，在回复末尾空一行后加：
✨ Vibe Spark: [具体建议：做什么 + 为什么值得做 + 大概要多久]。说「/vibe-spark」展开这个方向。

建议的项目必须满足：
- 能用一句话描述清楚「我要什么」
- 从零开始的新项目
- 看到输出就知道成功了

$FIRST_TIME_NOTE

这个 session 中最多给 2 次灵感建议。如果你之前已经在这个对话中给过 2 次 ✨ Vibe Spark 建议了，不要再建议。
SPARK

  fi # 证据非空检查结束
fi
