#!/bin/bash
# Vibe Spark 安装脚本
# 1. 确认 skill 文件到位
# 2. 智能追加 hook 配置到 Claude Code settings（不覆盖已有配置）

set -e

SKILL_DIR=~/.claude/skills/vibe-spark
SETTINGS_FILE=~/.claude/settings.json
HOOK_CMD="bash ~/.claude/skills/vibe-spark/hook.sh"

echo ""
echo "  ╔══════════════════════════════════════════╗"
echo "  ║  ✨ Vibe Spark 安装中...                  ║"
echo "  ╚══════════════════════════════════════════╝"
echo ""

# Step 1: 确认 skill 文件
if [ ! -f "$SKILL_DIR/SKILL.md" ]; then
  echo "⚠️  skill 文件未找到。请先运行："
  echo "  git clone https://github.com/HengYu2022/vibe-spark.git $SKILL_DIR"
  exit 1
fi
echo "✅ Skill 文件已就位"

# Step 2: 配置 hook（智能追加）
mkdir -p ~/.claude

if [ ! -f "$SETTINGS_FILE" ]; then
  # 没有 settings 文件，直接创建
  cat > "$SETTINGS_FILE" << EOF
{
  "hooks": {
    "UserPromptSubmit": [
      {
        "type": "command",
        "command": "$HOOK_CMD"
      }
    ]
  }
}
EOF
  echo "✅ Hook 配置已创建"
else
  # 已有 settings 文件，检查是否已经配置了 vibe-spark hook
  if grep -q "vibe-spark/hook.sh" "$SETTINGS_FILE" 2>/dev/null; then
    echo "✅ Hook 已经配置过了，跳过"
  else
    HOOK_PENDING=true
    echo "⚠️  检测到已有 settings.json。请手动添加以下 hook 配置："
    echo ""
    echo "  在 ~/.claude/settings.json 的 hooks.UserPromptSubmit 数组中添加："
    echo '  { "type": "command", "command": "bash ~/.claude/skills/vibe-spark/hook.sh" }'
    echo ""
    echo "  如果还没有 hooks 字段，添加："
    echo '  "hooks": { "UserPromptSubmit": [{ "type": "command", "command": "bash ~/.claude/skills/vibe-spark/hook.sh" }] }'
    echo ""
  fi
fi

# Step 3: 初始化持久化目录
mkdir -p ~/.vibe-spark
chmod +x "$SKILL_DIR/hook.sh"

echo ""
if [ "$HOOK_PENDING" = true ]; then
  echo "  ╔══════════════════════════════════════════╗"
  echo "  ║  ⚠️  Vibe Spark 部分安装完成              ║"
  echo "  ║                                         ║"
  echo "  ║  /vibe-spark 手动触发 → ✅ 可用           ║"
  echo "  ║  被动观察模式 → ❌ 需手动配置 hook        ║"
  echo "  ║  （见上方说明）                           ║"
  echo "  ║                                         ║"
  echo "  ║  祝你 vibe coding 愉快 ✨                ║"
  echo "  ╚══════════════════════════════════════════╝"
else
  echo "  ╔══════════════════════════════════════════╗"
  echo "  ║  ✅ Vibe Spark 安装完成！                 ║"
  echo "  ║                                         ║"
  echo "  ║  两种使用方式：                           ║"
  echo "  ║  1. /vibe-spark → 主动获取灵感            ║"
  echo "  ║  2. 正常工作就好 → 当我发现你在           ║"
  echo "  ║     重复做某件事时，会悄悄建议             ║"
  echo "  ║                                         ║"
  echo "  ║  验证 hook：bash $SKILL_DIR/hook.sh --test║"
  echo "  ║  关闭被动观察：运行 uninstall.sh          ║"
  echo "  ║  祝你 vibe coding 愉快 ✨                ║"
  echo "  ╚══════════════════════════════════════════╝"
fi
echo ""
