#!/bin/bash
# Vibe Spark 卸载脚本
# 清理 skill 文件 + hook 配置 + 持久化数据

echo ""
echo "  ╔══════════════════════════════════════════╗"
echo "  ║  卸载 Vibe Spark...                      ║"
echo "  ╚══════════════════════════════════════════╝"
echo ""

# 提示用户手动移除 hook
SETTINGS_FILE=~/.claude/settings.json
if [ -f "$SETTINGS_FILE" ] && grep -q "vibe-spark/hook.sh" "$SETTINGS_FILE" 2>/dev/null; then
  echo "⚠️  请手动从 $SETTINGS_FILE 中移除 vibe-spark 的 hook 配置："
  echo '  删除包含 "vibe-spark/hook.sh" 的条目'
  echo ""
fi

# 清理持久化数据
if [ -d ~/.vibe-spark ]; then
  rm -rf ~/.vibe-spark
  echo "✅ 持久化数据已清理 (~/.vibe-spark/)"
fi

# 清理 skill 文件
SKILL_DIR=~/.claude/skills/vibe-spark
if [ -d "$SKILL_DIR" ]; then
  rm -rf "$SKILL_DIR"
  echo "✅ Skill 文件已删除 ($SKILL_DIR)"
fi

echo ""
echo "  ╔══════════════════════════════════════════╗"
echo "  ║  Vibe Spark 已卸载。再见 👋               ║"
echo "  ╚══════════════════════════════════════════╝"
echo ""
