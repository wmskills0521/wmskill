#!/bin/bash
# wmskill 一键安装脚本
# 从 GitHub 下载最新版并安装到 Trae skills 目录

set -e

SKILLS_DIR="$HOME/.trae/builtin/work/default/skills"
REPO_URL="https://github.com/wmskills0521/wmskill.git"

echo "=================================="
echo "  wmskill 设计师 IP 定位工具箱"
echo "  安装脚本 v1.0"
echo "=================================="
echo ""

# 创建 skills 目录
mkdir -p "$SKILLS_DIR"

# 克隆或更新
TMP_DIR="/tmp/wmskill-install-$$"
echo "→ 正在从 GitHub 下载最新版..."
rm -rf "$TMP_DIR"
git clone --depth 1 "$REPO_URL" "$TMP_DIR" 2>/dev/null

# 安装各个 Skill
for skill in wmskill wmskill-positioning wmskill-content wmskill-update; do
  echo "→ 安装 $skill ..."
  mkdir -p "$SKILLS_DIR/$skill"
  cp "$TMP_DIR/$skill/SKILL.md" "$SKILLS_DIR/$skill/SKILL.md" 2>/dev/null || echo "   ⚠ $skill 未找到，跳过"
done

# 清理
rm -rf "$TMP_DIR"

echo ""
echo "=================================="
echo "  安装完成！"
echo "=================================="
echo ""
echo "重启 Trae 后输入以下命令开始："
echo ""
echo "  /wmskill              工具箱入口"
echo "  /wmskill-positioning  IP 定位诊断"
echo "  /wmskill-content      短视频内容教练"
echo "  /wmskill-update       一键更新"
echo ""
echo "首次使用建议先走定位：/wmskill-positioning"
echo "不知道下一步？输入 /wmskill"