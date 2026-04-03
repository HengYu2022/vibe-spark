#!/bin/bash
# Vibe Spark — 被动观察 hook
# 每次用户发消息时递增 session 计数器
# 每 20 次注入灵感观察指令
# 零隐私：只记录计数器（一个数字），不记录任何消息内容

VIBE_DIR=~/.vibe-spark
mkdir -p "$VIBE_DIR"

# Session 级计数器：用 Claude Code 的 PPID 区分 session
SESSION_COUNTER="$VIBE_DIR/counter-$PPID"

# 清理过期的 session 计数器（超过 24 小时的）
find "$VIBE_DIR" -name "counter-*" -mmin +1440 -delete 2>/dev/null

# 递增当前 session 计数器
COUNT=$(cat "$SESSION_COUNTER" 2>/dev/null || echo 0)
COUNT=$((COUNT + 1))
echo $COUNT > "$SESSION_COUNTER"

# 每 20 条消息注入一次观察指令
if [ $((COUNT % 20)) -eq 0 ]; then
  # 第一次触发（第 20 条）时额外附存在确认
  FIRST_TIME=""
  if [ "$COUNT" -eq 20 ]; then
    FIRST_TIME="如果没发现重复模式，只在回复末尾加一行小字：[✨ Vibe Spark 已激活，正在观察你的工作模式]。"
  else
    FIRST_TIME="如果没发现重复模式，什么都不加，也不要提 Vibe Spark。"
  fi

  cat << SPARK
【Vibe Spark 灵感观察】回顾这个 session 的对话历史，看用户有没有在重复做类似的手动操作（3 次以上）。

算重复的：多次手动抓取数据、反复写类似格式的内容、多次做同类转换或整理、重复查询类似信息。
不算重复的：调试 bug、读代码、code review、正常开发迭代、学习探索。

如果发现重复模式，在回复末尾空一行后加：
✨ Vibe Spark: [具体建议：做什么 + 为什么值得做 + 大概要多久]。说「/vibe-spark」可以展开这个方向。

建议的项目必须满足：
- 能用一句话描述清楚「我要什么」（用户不需要懂代码）
- 从零开始的新项目（不是改现有代码）
- 看到输出就知道成功了（不需要读代码验证）

$FIRST_TIME

重要：这个 session 中最多给 2 次灵感建议。如果你之前已经在这个对话中给过 2 次 ✨ Vibe Spark 建议了，即使发现新模式也不要再建议。
SPARK
fi
