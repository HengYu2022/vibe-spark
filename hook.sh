#!/bin/bash
# Vibe Spark — 被动观察 hook
# 每次用户发消息时递增 session 计数器
# 每 20 次注入灵感观察指令
# 零隐私：只记录计数器（一个数字），不记录任何消息内容

VIBE_DIR=~/.vibe-spark
mkdir -p "$VIBE_DIR"

# Session 级计数器：用 Claude Code 的 PPID 区分 session
# 每个 session 有独立的计数器文件
SESSION_COUNTER="$VIBE_DIR/counter-$PPID"
SESSION_SUGGESTS="$VIBE_DIR/suggests-$PPID"

# 清理过期的 session 计数器（超过 24 小时的）
find "$VIBE_DIR" -name "counter-*" -mmin +1440 -delete 2>/dev/null
find "$VIBE_DIR" -name "suggests-*" -mmin +1440 -delete 2>/dev/null

# 递增当前 session 计数器
COUNT=$(cat "$SESSION_COUNTER" 2>/dev/null || echo 0)
COUNT=$((COUNT + 1))
echo $COUNT > "$SESSION_COUNTER"

# 本 session 已建议次数
SUGGESTS=$(cat "$SESSION_SUGGESTS" 2>/dev/null || echo 0)

# 第一次触发时（第 20 条消息），给一个存在确认
if [ "$COUNT" -eq 20 ] && [ "$SUGGESTS" -eq 0 ]; then
  # 首次触发：确认 hook 在工作 + 检查模式
  cat << 'SPARK'
【Vibe Spark 正在观察中...】回顾这个 session 的对话历史，看用户有没有在重复做类似的手动操作（3 次以上）。

算重复的：多次手动抓取数据、反复写类似格式的内容、多次做同类转换或整理、重复查询类似信息。
不算重复的：调试 bug、读代码、code review、正常开发迭代、学习探索。

如果发现重复模式，在回复末尾空一行后加：
✨ Vibe Spark: [具体建议：做什么 + 为什么值得做 + 大概要多久]。说「/vibe-spark」可以展开这个方向。

建议的项目必须满足：
- 能用一句话描述清楚「我要什么」（用户不需要懂代码）
- 从零开始的新项目（不是改现有代码）
- 看到输出就知道成功了（不需要读代码验证）

如果没发现重复模式，只在回复末尾加一行小字：[✨ Vibe Spark 已激活，正在观察你的工作模式]
SPARK
elif [ $((COUNT % 20)) -eq 0 ] && [ "$SUGGESTS" -lt 2 ]; then
  # 后续触发：只检查模式，不再确认存在
  cat << 'SPARK'
【Vibe Spark 灵感观察】回顾这个 session 的对话历史，看用户有没有在重复做类似的手动操作（3 次以上）。

算重复的：多次手动抓取数据、反复写类似格式的内容、多次做同类转换或整理、重复查询类似信息。
不算重复的：调试 bug、读代码、code review、正常开发迭代、学习探索。

如果发现重复模式，在回复末尾空一行后加：
✨ Vibe Spark: [具体建议：做什么 + 为什么值得做 + 大概要多久]。说「/vibe-spark」可以展开这个方向。

建议的项目必须满足：
- 能用一句话描述清楚「我要什么」
- 从零开始的新项目
- 看到输出就知道成功了

如果没发现重复模式，什么都不加，也不要提 Vibe Spark。
SPARK
fi
